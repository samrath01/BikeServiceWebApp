using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using BikeServiceWebApp.Data;
using BikeServiceWebApp.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using System.IO;

namespace BikeServiceWebApp.Controllers
{
    [Authorize(Roles = "admin")]
    public class BikeModelsController : Controller
    {
        private readonly ApplicationDbContext _context;
        private readonly IWebHostEnvironment _environment;
        public BikeModelsController(ApplicationDbContext context, IWebHostEnvironment env)
        {
            _context = context;
            _environment = env;
        }

        // GET: CarModels
        public async Task<IActionResult> Index()
        {
            var applicationDbContext = _context.BikeModels.Include(c => c.Company);
            return View(await applicationDbContext.ToListAsync());
        }

       public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bikeModel = await _context.BikeModels
                .Include(c => c.Company)
                .FirstOrDefaultAsync(m => m.BikeModelID == id);
            if (bikeModel == null)
            {
                return NotFound();
            }

            return View(bikeModel);
        }

        
        public IActionResult Create()
        {
            ViewData["CompanyID"] = new SelectList(_context.Companies, "CompanyID", "CompanyName");
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("BikeModelID,BikeModelName,FileUpload,CompanyID")] BikeModel bikeModel)
        {
            using (var memoryStream = new MemoryStream())
            {
                await bikeModel.FileUpload.FormFile.CopyToAsync(memoryStream);

                string photoname = bikeModel.FileUpload.FormFile.FileName;
                bikeModel.ExtName = Path.GetExtension(photoname);
                if (!".jpg.jpeg.png.gif.bmp".Contains(bikeModel.ExtName.ToLower()))
                {
                    ModelState.AddModelError("FileUpload.FormFile", "Invalid Format of Image Given.");
                }
                else
                {
                    ModelState.Remove("ExtName");
                }
            }
            if (ModelState.IsValid)
            {
                _context.Add(bikeModel);
                await _context.SaveChangesAsync();
                var uploadsRootFolder = Path.Combine(_environment.WebRootPath, "models");
                if (!Directory.Exists(uploadsRootFolder))
                {
                    Directory.CreateDirectory(uploadsRootFolder);
                }
                string filename = bikeModel.BikeModelID + bikeModel.ExtName;
                var filePath = Path.Combine(uploadsRootFolder, filename);
                using (var fileStream = new FileStream(filePath, FileMode.Create))
                {
                    await bikeModel.FileUpload.FormFile.CopyToAsync(fileStream).ConfigureAwait(false);
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["CompanyID"] = new SelectList(_context.Companies, "CompanyID", "CompanyName", bikeModel.CompanyID);
            return View(bikeModel);
        }

        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bikeModel = await _context.BikeModels.FindAsync(id);
            if (bikeModel == null)
            {
                return NotFound();
            }
            ViewData["CompanyID"] = new SelectList(_context.Companies, "CompanyID", "CompanyName", bikeModel.CompanyID);
            return View(bikeModel);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("BikeModelID,BikeModelName,ExtName,CompanyID")] BikeModel bikeModel)
        {
            if (id != bikeModel.BikeModelID)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(bikeModel);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!BikeModelExists(bikeModel.BikeModelID))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["CompanyID"] = new SelectList(_context.Companies, "CompanyID", "CompanyName", bikeModel.CompanyID);
            return View(bikeModel);
        }

        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var bikeModel = await _context.BikeModels
                .Include(c => c.Company)
                .FirstOrDefaultAsync(m => m.BikeModelID == id);
            if (bikeModel == null)
            {
                return NotFound();
            }

            return View(bikeModel);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var carModel = await _context.BikeModels.FindAsync(id);
            _context.BikeModels.Remove(carModel);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool BikeModelExists(int id)
        {
            return _context.BikeModels.Any(e => e.BikeModelID == id);
        }
    }
}

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'6ef98554-d55f-4bad-9bb5-fbd0dfa334b4', N'admin', N'admin', N'1f75ba3f-4999-452d-97ca-0378c0ccb9f9')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2ef431e8-ee03-4fd4-aa6d-3d6b771075f1', N'adminz@bike.com', N'ADMINZ@BIKE.COM', N'adminz@bike.com', N'ADMINZ@BIKE.COM', 1, N'AQAAAAEAACcQAAAAEKOcd2rRsN+D6Z0rTwQeNXQA+uc5n+fabe+IB3Kp5XNy/3fD+Df1elXo5JvE/94hMw==', N'AD5F7XMDRYMXCOO7SKTMFCF6XCFRCSWN', N'91ed326b-4725-4ce9-86d6-43c5eceb4b74', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bb180bfe-3c3d-49bb-96ac-4685502584b4', N'users@gmail.com', N'USERS@GMAIL.COM', N'users@gmail.com', N'USERS@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEH7/2lzkXQp5LICbDEGbVA0c6pk3+8sjI7NvwH/sqC2m9QEIdn2Fn0NUFQsBIUYXsQ==', N'L2LGTFBA3LO7VYRA3OJYJKHNOPC5AIQW', N'fbf00642-6c62-4a42-9750-fe151b411ef9', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd8b5809e-2bf2-4ade-aef4-e007bfe2892c', N'admin@bike.com', N'ADMIN@BIKE.COM', N'admin@bike.com', N'ADMIN@BIKE.COM', 1, N'AQAAAAEAACcQAAAAEJR3qwGdRMGwVYp9BmOOS7Dae7fVjwXii2syWqKPkAYFAnID8cYuWeZ/ZBpztds60g==', N'JEFYE44ONYO7B7XTOPIJSLGYMDTWSDA5', N'6be8f525-ef6e-43b1-a6f4-d6e73e4c5f2b', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eaad4d62-2c80-4742-b2e3-c2388f2509da', N'admins@bike.com', N'ADMINS@BIKE.COM', N'admins@bike.com', N'ADMINS@BIKE.COM', 0, N'AQAAAAEAACcQAAAAEOM5A0S2aHixTJIupaIadsWP2Gaz9Shzjsz50oFeuh3Xu/3+xExNWCYEJGgcyZ+vzw==', N'KIR7IBTNN54TPZ45I6YIKQBST26U3FYL', N'ecab65e7-3c89-4550-be16-f2dcdb57fdaf', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2ef431e8-ee03-4fd4-aa6d-3d6b771075f1', N'6ef98554-d55f-4bad-9bb5-fbd0dfa334b4')
GO
SET IDENTITY_INSERT [dbo].[Companies] ON 
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName], [ExtName]) VALUES (1, N'TVS', N'.PNG')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName], [ExtName]) VALUES (2, N'Hero', N'.PNG')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName], [ExtName]) VALUES (3, N'Honda', N'.PNG')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName], [ExtName]) VALUES (4, N'Yamaha', N'.PNG')
GO
INSERT [dbo].[Companies] ([CompanyID], [CompanyName], [ExtName]) VALUES (5, N'Royal Enfield', N'.PNG')
GO
SET IDENTITY_INSERT [dbo].[Companies] OFF
GO
SET IDENTITY_INSERT [dbo].[BikeModels] ON 
GO
INSERT [dbo].[BikeModels] ([BikeModelID], [BikeModelName], [ExtName], [CompanyID]) VALUES (1, N'Jupiter', N'.PNG', 1)
GO
INSERT [dbo].[BikeModels] ([BikeModelID], [BikeModelName], [ExtName], [CompanyID]) VALUES (2, N'Jupiter 125', N'.PNG', 1)
GO
INSERT [dbo].[BikeModels] ([BikeModelID], [BikeModelName], [ExtName], [CompanyID]) VALUES (3, N'Apache RTR 160', N'.PNG', 1)
GO
INSERT [dbo].[BikeModels] ([BikeModelID], [BikeModelName], [ExtName], [CompanyID]) VALUES (4, N'Apache RTR 160 4V', N'.PNG', 1)
GO
INSERT [dbo].[BikeModels] ([BikeModelID], [BikeModelName], [ExtName], [CompanyID]) VALUES (5, N'Raider', N'.PNG', 1)
GO
SET IDENTITY_INSERT [dbo].[BikeModels] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (1, N'Denting & Painting', N'.jpg')
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (2, N'Batteries', N'.png')
GO
INSERT [dbo].[Services] ([ServiceID], [ServiceName], [ExtName]) VALUES (4, N'Washing', N'.jpg')
GO
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Packages] ON 
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (1, N'Amaron', N'Takes 1 Hour', N'Free Pickup & Drop, Free Installation, Existing Battery Replacement, AVailable at Doorstep', N'55 Months Warranty', N'35 Amp Hour', 2)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (2, N'Basic Service', N'4 Hrs Taken', N'Diesel Cleaning ', N'Not Required', N'1 Month Warranty', 4)
GO
INSERT [dbo].[Packages] ([PackageID], [PackageName], [TimeTaken], [Services], [Warrnty], [NextService], [ServiceID]) VALUES (3, N'Standard Service', N'6 Hrs Taken', N'Cleans with diesel and clear ', N'1 Month Warranty', N'6 Months', 4)
GO
SET IDENTITY_INSERT [dbo].[Packages] OFF
GO
SET IDENTITY_INSERT [dbo].[Bookings] ON 
GO
INSERT [dbo].[Bookings] ([BookingID], [UserName], [ContactNo], [Status], [BookingDate], [PackageID], [BikeModelID]) VALUES (2, N'users@gmail.com', N'+64 9-367 0000', N'Pending', CAST(N'2021-11-06T23:02:00.0000000' AS DateTime2), 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Bookings] OFF
GO

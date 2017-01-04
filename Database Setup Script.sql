-- Create the database
CREATE DATABASE EnterpriseTemplateDev
GO

--DROP DATABASE EnterpriseTemplateDev

USE EnterpriseTemplateDev
GO

-- Create the template schema
CREATE SCHEMA template
GO

-- Create the State Table
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [template].[State](
	[StateId] [int] NOT NULL,
	[Abbreviation] [varchar](2) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


-- Create the Origin Table
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [template].[Origin](
	[OriginId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[StateId] [int] NOT NULL,
 CONSTRAINT [PK_Origin] PRIMARY KEY CLUSTERED 
(
	[OriginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [template].[Origin]  WITH CHECK ADD  CONSTRAINT [FK_Origin_State] FOREIGN KEY([StateId])
REFERENCES [template].[State] ([StateId])
GO

ALTER TABLE [template].[Origin] CHECK CONSTRAINT [FK_Origin_State]
GO



-- Insert data into the tables

INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (1, N'AL', N'Alabama')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (2, N'AK', N'Alaska')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (3, N'AZ', N'Arizona')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (4, N'AR', N'Arkansas')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (5, N'CA', N'California')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (6, N'CO', N'Colorado')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (7, N'CT', N'Connecticut')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (8, N'DE', N'Delaware')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (9, N'DC', N'District of Columbia')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (10, N'FL', N'Florida')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (11, N'GA', N'Georgia')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (12, N'HI', N'Hawaii')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (13, N'ID', N'Idaho')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (14, N'IL', N'Illinois')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (15, N'IN', N'Indiana')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (16, N'IA', N'Iowa')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (17, N'KS', N'Kansas')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (18, N'KY', N'Kentucky')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (19, N'LA', N'Louisiana')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (20, N'ME', N'Maine')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (21, N'MD', N'Maryland')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (22, N'MA', N'Massachusetts')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (23, N'MI', N'Michigan')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (24, N'MN', N'Minnesota')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (25, N'MS', N'Mississippi')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (26, N'MO', N'Missouri')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (27, N'MT', N'Montana')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (28, N'NE', N'Nebraska')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (29, N'NV', N'Nevada')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (30, N'NH', N'New Hampshire')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (31, N'NJ', N'New Jersey')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (32, N'NM', N'New Mexico')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (33, N'NY', N'New York')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (34, N'NC', N'North Carolina')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (35, N'ND', N'North Dakota')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (36, N'OH', N'Ohio')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (37, N'OK', N'Oklahoma')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (38, N'OR', N'Oregon')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (39, N'PA', N'Pennsylvania')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (40, N'RI', N'Rhode Island')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (41, N'SC', N'South Carolina')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (42, N'SD', N'South Dakota')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (43, N'TN', N'Tennessee')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (44, N'TX', N'Texas')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (45, N'UT', N'Utah')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (46, N'VT', N'Vermont')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (47, N'VA', N'Virginia')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (48, N'WA', N'Washington')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (49, N'WV', N'West Virginia')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (50, N'WI', N'Wisconsin')
GO
INSERT [template].[State] ([StateId], [Abbreviation], [Name]) VALUES (51, N'WY', N'Wyoming')
GO
SET IDENTITY_INSERT [template].[Origin] ON 

GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (1, N'AGS', N'Bush Field', N'Augusta', 11)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (2, N'ABI', N'Abilene Municipal', N'Abilene', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (3, N'ALB', N'Albany County Airport', N'Albany', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (4, N'ATL', N'Hartsfield International Airport', N'Atlanta', 11)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (5, N'MSP', N'Minneapolis St. Paul International', N'Minneapolis', 24)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (6, N'DFW', N'Dallas Ft. Worth International', N'Dallas', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (7, N'IAH', N'Houston International', N'Houston', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (8, N'ABQ', N'Albuquerque Intl Airport', N'Albuquerque', 32)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (9, N'PBI', N'Palm Beach Intl Airport', N'West Palm Beach', 10)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (10, N'FLL', N'Fort Lauderdale-Hollywood Intl Airport', N'Fort Lauderdale', 10)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (11, N'ABR', N'Aberdeen Regional Airport', N'Aberdeen', 42)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (12, N'AEX', N'Esler Field', N'Alexandria', 19)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (13, N'AMA', N'Amarillo International Airport', N'Amarillo', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (14, N'AUS', N'Robert Mueller Municipal Airport', N'Austin', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (15, N'AVL', N'Asheville Municipal Airport', N'Asheville', 43)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (16, N'AZO', N'Kalamazoo/Battle Creek Intl', N'Kalamazoo', 23)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (17, N'BDL', N'Bradley International Airport', N'Hartford', 7)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (18, N'BFF', N'Scottsbluff Airport', N'Scottsbluff', 28)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (19, N'CRW', N'Charleston, Yeager Airport', N'Charleston', 49)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (20, N'BHM', N'Birmingham International Airport', N'Birmingham', 1)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (21, N'BIL', N'Billings, Logan Internatioanl Airport', N'Billings', 27)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (22, N'BIS', N'Bismarch Municipal Airport', N'Bismarck', 35)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (23, N'BNA', N'Nashville International Airport', N'Nashville', 43)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (24, N'BOI', N'Boise, Gowen Field', N'Boise', 13)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (25, N'BOS', N'Logan International Airport', N'Boston', 22)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (26, N'BTV', N'Burlington International Airport', N'Burlington', 46)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (27, N'BUR', N'Burbank Glendale Pasadena Airport', N'Burbank', 5)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (28, N'BWI', N'Baltimore/Washington International', N'Baltimore', 21)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (29, N'CAE', N'Columbia Metropolitan Airport', N'Columbia', 41)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (30, N'CLE', N'Hopkins International Airport', N'Cleveland', 36)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (31, N'CLT', N'Charlotte/Douglas Intl Airport', N'Charlotte', 34)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (32, N'COU', N'Columiba Regional Airport', N'Columbia', 26)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (33, N'CVG', N'Cincinnati-Northern Kentucky Intl Airport', N'Cincinnati', 36)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (34, N'DEN', N'Denver International Airport', N'Denver', 6)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (35, N'DRO', N'Durango La Plata Field', N'Durango', 6)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (36, N'DTW', N'Detroit Metropolitan Airport', N'Detroit', 23)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (37, N'ELP', N'El Paso International Airport', N'El Paso', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (38, N'EVV', N'Evansville Regional Airport', N'Evansville', 15)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (39, N'EWR', N'Newark International Airport', N'Newark', 31)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (40, N'FAT', N'Fresno-Yosemite Intl Airport', N'Fresno', 5)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (41, N'FSD', N'Sioux Falls Regional Airport', N'Sioux Falls', 42)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (42, N'GEG', N'Spokane International Airport', N'Spokane', 48)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (43, N'GJT', N'Grand Junction, Walker Field', N'Grand Junction', 6)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (44, N'HYS', N'Hays Municipal Airport', N'Hays', 17)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (45, N'GRK', N'Kileen Municipal Airport', N'Kileen', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (46, N'IND', N'Indianapolis International Airport', N'Indianapolis', 15)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (47, N'JAC', N'Jackson Hole Airport', N'Jackson Hole', 51)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (48, N'JAN', N'Allen C Thompson Field', N'Jackson', 25)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (49, N'KEM', N'Kemmerer', N'Kemmerer', 51)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (50, N'LAS', N'McCarranInternational Airport', N'Las Vegas', 29)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (51, N'LAX', N'Los Angeles Intl Airport', N'Los Angeles', 5)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (52, N'LCH', N'Lake Charles Municipal Airport', N'Lake Charles', 19)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (53, N'LFT', N'Lafeyette Regional Airport', N'Lafayette', 19)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (54, N'LIT', N'Little Rock Regional Airport', N'Little Rock ', 4)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (55, N'MAF', N'Midland Odessa Airport', N'Odessa', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (56, N'MEM', N'Memphis International Airport', N'Memphis', 43)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (57, N'MGM', N'Montgomery Dannelly Airport', N'Montogmery', 1)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (58, N'MKE', N'General Mitchell Intl Airport', N'Milwaukee', 50)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (59, N'OAK', N'Oakland International Airport', N'Oakland', 5)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (60, N'OGG', N'Kahului Airport', N'Kahului', 12)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (61, N'OKC', N'Will Rogers Work Airport', N'Oklahoma City', 37)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (62, N'OMA', N'Eppley Airfield', N'Omaha', 28)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (63, N'ORD', N'O''Hara International Airport', N'Chicago', 14)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (64, N'PDX', N'Portland International Airport', N'Portland', 38)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (65, N'PHL', N'Philadelphia International Airport', N'Philadelphia', 39)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (66, N'PHX', N'Sky Harbor Intl Airport', N'Phoenix', 3)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (67, N'RKS', N'Rock Springs Sweetwater City Airport', N'Rock Springs', 51)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (68, N'RNO', N'Reno/Tahoe Intl Airport', N'Reno', 29)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (69, N'ROC', N'Greater Rochester Intl Airport', N'Rochester', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (70, N'SHV', N'Shreveport Regional Airport', N'Shreveport', 19)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (71, N'SJC', N'San Jose Intl Airport', N'San Jose', 5)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (72, N'SMF', N'Sacramento Metropolitan Airport', N'Sacramento', 5)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (73, N'SNA', N'John Wayne Airport', N'Orange County', 5)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (74, N'SPI', N'Springfield Capital Airport', N'Springfield', 14)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (75, N'STL', N'Lambert-St. Louis Intl Airport', N'St. Louis', 26)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (76, N'SWF', N'Newburgh, Stewart Intl Airport', N'Newburgh', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (77, N'LAC', N'Syracuse Intl Airport', N'Syracuse', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (78, N'TPA', N'Tampa International Airport', N'Tampa', 10)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (79, N'TRI', N'Tri Citys Regional Airport', N'Kingport', 43)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (80, N'TUS', N'Tucson International Airport', N'Tuscon', 3)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (81, N'TWF', N'Twin Falls Airport', N'Twin Falls', 13)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (82, N'TXK', N'Texarkana Municipal Airport', N'Texarkana', 4)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (83, N'TYR', N'Pounds Field', N'Tyler', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (84, N'SLC', N'Salt Lake City Intl. Airport', N'Salt Lake City', 45)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (85, N'VLD', N'Valdosta Regional', N'Valdosta ', 11)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (86, N'JFK', N'John F Kennedy Intl Airport', N'New York', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (87, N'MBS', N'Midland-Bay-Saginaw', N'Michigan', 23)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (88, N'BGM', N'Binghamton Regional Airport', N'Binghamton', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (89, N'CHS', N'Charleston International Airport', N'Charleston', 41)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (90, N'DSM', N'Dees Moines International Airport', N'Des Moines', 16)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (91, N'BUF', N'Buffalo-Niagara International Airport', N'Buffalo', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (92, N'CPR', N'Casper, Natrona County Intl', N'Casper', 51)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (93, N'CWA', N'Central Wisconsin Airport', N'Wausau', 50)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (94, N'LAR', N'Laramie Regional Airport', N'Laramie', 51)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (95, N'PIT', N'Pittsburgh International Airport', N'Pittsburgh', 39)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (96, N'MLI', N'Moline Airport', N'Moline', 14)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (97, N'MFR', N'Medford, Rogue Valley Intl Airport', N'Medford', 38)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (98, N'EUG', N'Eugene Airport', N'Eugene', 38)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (99, N'TUL', N'International', N'Tulsa', 37)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (100, N'RDU', N'Raleigh-Durham Airport', N'Raliegh-Durham', 34)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (101, N'SRQ', N'Bradenton', N'Sarasota', 10)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (102, N'IAD', N'Dulles Intl', N'Washington', 9)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (103, N'GSP', N'Greenville-Spartanburg', N'Greenville', 41)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (104, N'LBB', N'Lubbock International Airport', N'Lubbock', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (105, N'CID', N'Cedar Rapids Municipal Airport', N'Iowa City', 16)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (106, N'BPT', N'Jefferson County Airport', N'Beaumont', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (107, N'GNV', N'Gainesville Regional Airport', N'Gainesville', 10)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (108, N'ACT', N'Municipal', N'Waco', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (109, N'PNS', N'Pensacola Regional Airport', N'Pensacola', 10)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (110, N'SYR', N'Syracuse Hancock Intl Airport', N'Syracuse', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (111, N'CRP', N'Corpus Christi International Airport', N'Corpus Christi', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (112, N'BTR', N'Baton Rouge Metropolitan Airport/Ryan Field', N'Baton Rouge', 19)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (113, N'PDT', N'Eastern Oregon Regional Airport at Pendleton', N'Pendleton', 38)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (114, N'BRK', N'Quality Transportation', N'Brooklyn', 33)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (115, N'ALS', N'Alamosa Municipal Airport', N'Alamosa', 6)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (116, N'MFE', N'McAllen Miller Airport', N'McAllen', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (117, N'DAY', N'James M. Cox Dayton International', N'Dayton', 36)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (118, N'SDF', N'Louisville International Airport ', N'Louisville', 18)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (119, N'LEX', N'Blue Grass Airport ', N'Lexington', 18)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (120, N'DLN', N'Barrett Hospital', N'Dillon', 27)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (121, N'IDA', N'Idaho Falls Regional Airport', N'Idaho Falls', 13)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (122, N'AND', N'Gamma', N'Andalusia', 1)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (123, N'SJT', N'San Angelo', N'San Angelo', 44)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (124, N'MBF', N'Quality Transportation-MBF', N'Manalapan', 31)
GO
INSERT [template].[Origin] ([OriginId], [Code], [Name], [City], [StateId]) VALUES (125, N'ABE', N'Lehigh Valley International Airport', N'Allentown', 39)
GO
SET IDENTITY_INSERT [template].[Origin] OFF
GO
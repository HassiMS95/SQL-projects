-- SKYLINE INVESTMENTS
-- drop and recreate
DROP SCHEMA IF EXISTS skyline_investments;
CREATE SCHEMA IF NOT EXISTS skyline_investments;
USE skyline_investments;

-- Owner table
CREATE TABLE Owner (
    owner_id CHAR(5) PRIMARY KEY,
    owner_Lname VARCHAR(20) NOT NULL,
    owner_Fname VARCHAR(20) NOT NULL,
    owner_address VARCHAR(255) NOT NULL,
    owner_zip VARCHAR(20) NOT NULL,
    owner_city VARCHAR(100) NOT NULL,
    owner_state CHAR(2) NOT NULL
);

-- Broker table
CREATE TABLE Broker (
    broker_id CHAR(5) PRIMARY KEY,
    broker_Lname VARCHAR(20) NOT NULL,
    broker_Fname VARCHAR(20) NOT NULL,
    broker_phone VARCHAR(20) NOT NULL,
    broker_email VARCHAR(255) NOT NULL
);

-- Property table
CREATE TABLE Property (
    property_id CHAR(5) PRIMARY KEY,
    owner_id CHAR(5) REFERENCES Owner(owner_id),
    listing_id CHAR(5) REFERENCES Listing(listing_id), 
    pLocation_address VARCHAR(255) REFERENCES Property_Location(pLocation_address),
    broker_id CHAR(5) REFERENCES Broker(broker_id),
    property_lot_size VARCHAR(255) NOT NULL,
    property_type VARCHAR(100) NOT NULL,
    property_year_built INT NOT NULL,
    property_other_info TEXT NOT NULL,
    property_number_of_stories VARCHAR(2) NOT NULL,
    property_price DECIMAL(20, 2) NOT NULL,
    property_number_of_units INT NOT NULL
);

-- Property_Location table
CREATE TABLE Property_Location (
    pLocation_address VARCHAR(255) PRIMARY KEY,
    pLocation_state CHAR(2) NOT NULL,
    pLocation_zip_code VARCHAR(20) NOT NULL,
    pLocation_city VARCHAR(100) NOT NULL
);

-- Image table
CREATE TABLE Image (
    image_id CHAR(6) PRIMARY KEY,
    property_id CHAR(5) REFERENCES Property(property_id),
    image_url VARCHAR(255) NOT NULL
);

-- Listing table
CREATE TABLE Listing (
    listing_id CHAR(5) PRIMARY KEY,
    pLocation_address VARCHAR(255) REFERENCES Property_Location(pLocation_address),
    property_id CHAR(5) REFERENCES Property(property_id),
    broker_id CHAR(5) REFERENCES Broker(broker_id),
    availability_id CHAR(5) REFERENCES Availability(availability_id)
);

-- Availability table
CREATE TABLE Availability (
    availability_id CHAR(1) PRIMARY KEY,
    availability_status VARCHAR(20) NOT NULL
);

-- Insert data into the Property_Location table
INSERT INTO Property_Location (pLocation_address, pLocation_city, pLocation_state, pLocation_zip_code) VALUES
('7645 W. Marigold Drive', 'Wasilla', 'AK', '99654'),
('171 Muldoon Rd', 'Anchorage', 'AK', '99504'),
('3400 LaTouche Street', 'Anchorage', 'AK', '99508'),
('1002 S. Walton Blvd', 'Bentonville', 'AR', '72717'),
('5051 Warden Rd', ' North Little Rock', 'AR', '72116'),
('9300 E Rita Rd', 'Tucson', 'AZ', '85747'),
('4690 N Oracle', 'Tucson', 'AZ', '85705'),
('745 N Dobson Rd','Mesa', 'AZ', '85201'),
('470 Boynton Ave','San Jose', 'CA', '95117'),
('777 W Orangethorpe Ave', 'Placentia', 'CA', '92870'),
('7407 East 36th Avenue', 'Denver', 'CO', '80238'),
('514 Perry St.', 'Castle Rock', 'CO', '80104'),
('111 E. Bridgers Ave', 'Auburndale', 'FL', '33823'),
('405 S Cirus Ave', 'Clearwater', 'FL', '33765'),
('1207 N. Himes Ave & 3418 W. Arch Street', 'Tampa', 'FL', '33607'),
('4440 Kukui Grove St', 'Lihue', 'HI', '96766'),
('74-577 Honokohau Street', 'Kailua Kona', 'HI', '96740'),
('7500 S South Shore Dr', 'Chicago', 'IL', '60649'),
('502 S Oakland Ave', 'Nappanee', 'IN', '46550'),
('3400 Veterans Memorial Blvd', 'Metairie', 'LA', '70002'),
('500 N Carrollton Ave', 'New Orleans', 'LA', '70119'),
('9400 Brodie Ln', 'Austin', 'TX', '78748'),
('4075 Hollister Rd', 'Houston', 'TX', '77080');

-- Insert data into the Owner table
INSERT INTO Owner (owner_id, owner_Lname, owner_Fname, owner_address, owner_zip, owner_city, owner_state) VALUES
('O1001', 'TECHNOLOGY PARK LLC', 'BAKE', '550 NEWPORT CENTER DR', '92660', 'NEWPORT BEACH', 'CA'),
('O1002', 'Doe', 'Jane', '456 Elm St', '10001', 'New York', 'AK'),
('O1003', 'Johnson', 'Mike', '789 Oak St', '60601', 'Chicago', 'IL'),
('O1004', 'John', 'Dobbins', '123 Maple Street', '10001', 'New York', 'NY'),
('O1005', 'Emma', 'Johnson', '1010 Birch Road', '33101', 'Miami', 'FL'),
('O1006', 'Carlos', 'Martinez', '1313 Cedar Place', '94101', 'Houston', 'TX'),
('O1007', 'Liam', 'Robertson', '1515 Aspen Court', '98101', 'Seattle', 'WA'),
('O1008', 'Sophia', 'Petrova', '1717 Redwood', '20001', 'Washington', 'DC'),
('O1009', 'Chen', 'Wei', '1414 Willow Way', '30301', 'Atlanta', 'GA'),
('O1010', 'Samual', 'Singh', '781 Pine Lane', '60601', 'Chicago', 'IL'),
('O1011', 'Marcus & Millichap', 'Scott', '7407 East 36th Avenue', '80238', 'Denver', 'CO'),
('O1012', 'Nick', 'Hier', '514 Perry St.', '80104', 'Castle Rock', 'CO'),
('O1013', 'Ryan', 'Gartrell', '111 E. Bridgers Ave', '33823', 'Auburndale', 'FL'),
('O1014', 'NAI Tampa Bay', 'John', '405 S Cirus Ave', '33765', 'Clearwater', 'FL'),
('O1015', 'Robert Romano', 'Robert', '1207 N. Himes Ave & 3418 W. Arch Street', '33607', 'Tampa', 'FL'),
('O1016', 'Ryan K. Sakaguchi (B)', 'Ryan', '4440 Kukui Grove St', '96766', 'Lihue', 'HI'),
('O1017', 'William (Bill) Froelich (B) JD, SIOR, CCIM', 'William', '74-577 Honokohau Street', '96740', 'Kailua Kona', 'HI'),
('O1018', 'Jeffrey Baasch', 'Jeffrey', '7500 S South Shore Dr', '60649', 'Chicago', 'IL'),
('O1019', 'Ryan Gableman', 'Ryan', '502 S Oakland Ave', '46550', 'Nappanee', 'IN'),
('O1020', 'Aron Cline', 'Aron', '3400 Veterans Memorial Blvd', '70002', 'Metairie', 'LA'),
('O1021', 'Patrick R. Luther, CCIM', 'Patrick', '500 N Carrollton Ave', '70119', 'New Orleans', 'LA'),
('O1022', 'Tony Wood', 'Tony', '9400 Brodie Ln', '78748', 'Austin', 'TX'),
('O1023', 'Thuy Nguyen', 'Thuy', '4075 Hollister Rd', '77080', 'Houston', 'TX');

-- Insert data into the Broker table
INSERT INTO Broker (broker_id, broker_Lname, broker_Fname, broker_phone, broker_email) VALUES
('B1001', 'Kuhn', 'Carl', '(907) 762-5887', 'cdk@gci.net'),
('B1002', 'Bak', 'Doosan', '(310) 528-8949', 'ceo@sicilypizza.com'),
('B1003', 'James', 'Michael', '(907) 261-7308', 'CustomerService@NewMedicalOfficeSpace.com'),
('B1004', 'Duiguid', 'Butch', '(626) 695-5713', 'admin@jduguid.co.uk'),
('B1005', 'Strange', 'Cindy', '(501) 916-8251', 'creichline@strangeandbutler.com'),
('B1006', 'Kleiner', 'Rick', '(520) 546-2745', 'rkleiner@picor.com'),
('B1007', 'Furrier', 'Greg', '(520) 546-2735', 'gfurrier@picor.com'),
('B1008', 'Finch', 'Michael', '(480) 719-2496', 'michael.finch@cbdfw.com'),
('B1009', 'Hopman', 'Joel', '(415) 722-2200', 'jhopman@aranewmark.com'),
('B1010', 'Cervantes', 'Beth', '(714) 774-4959', 'bcervantes@pk-cre.com'),
('B1011', 'Sandelin', 'Scott', '+17865227009', ''),
('B1012', 'Hier', 'Nick', '+13036883105', ''),
('B1013', 'Gartrell', 'Ryan', '+12394100', ''),
('B1014', 'Burpee', 'John', '+17275852070', ''),
('B1015', 'Romano', 'Robert', '+18136281952', ''),
('B1016', 'Sakaguchi (B)', 'Ryan K.', '+18085415172', ''),
('B1017', 'Froelich (B) JD, SIOR, CCIM', 'William (Bill)', '+18086363999', ''),
('B1018', 'Baasch', 'Jeffrey', '+13122860141', ''),
('B1019', 'Gableman', 'Ryan', '+15742642050', ''),
('B1020', 'Cline', 'Aron', '+19494324509', ''),
('B1021', 'Luther, CCIM', 'Patrick R.', '+19496981115', ''),
('B1022', 'Wood', 'Tony', '+19163901274', ''),
('B1023', 'Nguyen', 'Thuy', '+17135301165', '');

-- Insert data into the Avalability table
INSERT INTO Availability (availability_id, availability_status) VALUES
(0, 'available'),
(1, 'pending'),
(2, 'sold');

-- Insert data into the Listing table
INSERT INTO Listing (listing_id, pLocation_address, property_id, broker_id, availability_id) VALUES
('L0001', '7645 W. Marigold Drive', 'P1001', 'B1001', 0),
('L0002', '171 Muldoon Rd', 'P1002', 'B1002', 0),
('L0003', '3400 LaTouche Street', 'P0003', 'B1003', 0),
('L0004', '1002 S. Walton Blvd', 'P1004', 'B1004', 0),
('L0005', '5051 Warden Rd', 'P1005', 'B1005', 0),
('L0006', '9300 E Rita Rd', 'P1006', 'B1006', 0),
('L0007', '4690 N Oracle', 'P1007', 'B1007', 0),
('L0008', '745 N Dobson Rd', 'P1008', 'B1008', 0),
('L0009', '470 Boynton Ave', 'P1009', 'B1009', 0),
('L0010', '777 W Orangethorpe Ave', 'P1010', 'B1010', 0),
('L0011', '7407 East 36th Avenue', 'P1011', 'B1011', 3),
('L0012', '514 Perry St.', 'P1012', 'B1012', 3),
('L0013', '111 E. Bridgers Ave', 'P1013', 'B1013', 3),
('L0014', '405 S Cirus Ave', 'P1014', 'B1014', 3),
('L0015', '1207 N. Himes Ave & 3418 W. Arch Street', 'P1015', 'B1015', 3),
('L0016', '4440 Kukui Grove St', 'P1016', 'B1016', 3),
('L0017', '74-577 Honokohau Street', 'P1017', 'B1017', 3),
('L0018', '7500 S South Shore Dr', 'P1018', 'B1018', 3),
('L0019', '502 S Oakland Ave', 'P1019', 'B1019', 3),
('L0020', '3400 Veterans Memorial Blvd', 'P1020', 'B1020', 3),
('L0021', '500 N Carrollton Ave', 'P1021', 'B1021', 3),
('L0022', '9400 Brodie Ln', 'P1022', 'B1022', 3),
('L0023', '4075 Hollister Rd', 'P1023', 'B1023', 3);

-- Insert data into the Property table
INSERT INTO Property (property_id, owner_id, listing_id, pLocation_address, broker_id, property_lot_size, property_type, property_year_built, property_other_info, property_number_of_stories, property_price, property_number_of_units) VALUES
('P1001', 'O1001', 'L0001', '7645 W. Marigold Drive', 'B1001', '25 AC', 'Land', '1900' , 'Approximately 25 acres with 1,200+ ft frontage on the Parks Highway in the rapidly growing Meadow Lakes area.', '0', 3267000.00, 1),
('P1002', 'O1002', 'L0002', '171 Muldoon Rd', 'B1002', '81,893 SF', 'Retail', '1978', 'SELLER MOTIVATED! PRICE REDUCED TO 5.0M! 6.62% CAPThe subject property is a multi-tenant retail strip center which consists of two commercial buildings with 15 units, containing approximately 22,824 square feet of floor area (GLA), located on an approximately 81,893 square-foot parcel of land. The property, 100% occupied by 13 local tenants, is located on Muldoon Road, minutes away from the Glenn Highway, in the city of Anchorage, Alaska. The prospective investor will benefit from the propertys security, stability, low management and stabilized income stream derived from long-term credit local tenants, such as Brown Jug Liquor, Oriental Market, Young Dry Cleaner, Sicilly s Pizza, Elegant Nail Shop, Crazy Cow Grill, etc.', '1', 5000000000.00, 1),
('P1003', 'O1003', 'L0003', '3400 LaTouche Street', 'B1003', '40,903 SF', 'Office', '1977', 'Class B structure in the U-Med district, two story blg with elevator, ADA accessibility. Building renovated in 2010, including new mechanical, roof and interior/exterior renovations. Site is medically parked, with more than required for handicap parking, fronting the building. Mountain views and an abundance of natural sunlight from the surrounding glass curtain.', '2', 4400000.00, 1),
('P1004', '01004', 'L0004', '1002 S. Walton Blvd', 'B1004', '23.92 AC', 'Land','1876', '23.92 total acres of land for sale on S Walton Boulevard in Bentonville.', '0', 4000000.00, 1),
('P1005', '01005', 'L0005', '5051 Warden Rd', 'B1005', '1.47 AC', 'Retail', '1989', 'Convenience Store and Gas Station with 9 pumps 2 diesel. Car wash. Financial Available with signed confidentiality agreement.', '1', 4000000.00, 1),
('P1006', '01006', 'L0006', '9300 E Rita Rd', 'B1006', '1.24 AC', 'Office', '2004', '100% leased NNN medical building on 1.24 acres and 3.74 adjacent acres with approved development plan for 31,000 SF in seven buildings.', '1', 3600000.00, 1),
('P1007', '01007', 'L0007', '4690 N Oracle', 'B1007', '5.15 AC', 'Office', '2015', 'The building was converted from retail to office in 2015 for Comcast Cable. The Tucson Galleria, at 4690 N. Oracle Road, was constructed in the mid-1980s and operated as a multi-tenant retail mall initially.', '4', 34339000.00, 1),
('P1008', '01008', 'L0008', '745 N Dobson Rd', 'B1008', '58.95 AC', 'Multifamily', '1965', 'Investment 62 CONDO Portfolio bulk offering of sixty-two condominiums provides an investor with a high occupancy, fee simple condo home bulk package with low HOA fees.', '1', 8000000.00, 62),
('P1009', '01009', 'L0009', '470 Boynton Ave', 'B1009', '1.09 AC', 'Multifamily', '1968', 'The Orleans Apartments is well-maintained 40-unit complex consisting of (28) oversized 1+1s; (8) 2+1.5 flats, (3) 2+1.5 THS; and (1) 4+2 THS apartment units', '2', 15000000.00, 40),
('P1010', '01010', 'L0010', '777 W Orangethorpe Ave', 'B1010', '118,366 SF', 'Retail', '1986', 'Paul Kott Realtors, Inc.', '1', 8995000.00, 1);
('P1011', 'O1011', 'L0011', '7407 East 36th Avenue', 'B1011', '1.44 AC', 'Retail', '2002', 'Marcus & Millichap is pleased to present a corporate guaranteed Country Buffet located on 36th street in Denver, Colorado.', '1', 3772782.00, 1),
('P1012', 'O1012', 'L0012', '514 Perry St.', 'B1012', '0.25 AC', 'Retail', '2015', 'Downtown Castle Rock\'s newest mixed-use development includes retail, office, and restaurant space.', '2', 3400000.00, 1),
('P1013', 'O1013', 'L0013', '111 E. Bridgers Ave', 'B1013', '0.71 SF', 'Office', '1990', '***Motivated Seller.', '1', 250000.00, 1),
('P1014', 'O1014', 'L0014', '405 S Cirus Ave', 'B1014', '23,877 SF', 'Multifamily', '1955', 'NAI Tampa Bay is proud to present our newest exclusively listed Value Add Apartment complex. The Lyn-Do Apartments is a 19 unit two property (Side by Side) 403 & 405 Cirus Ave asset located in the heart of Clearwater. Directly across the street from Clearwater High school and one block off of Gulf to Bay Blvd. This central location is within walking distance to several employment, shopping, educational and entertainment centers. The asset is priced on the current rent roll and trailing 12 month expenses. The property is currently owner managed and has minor deferred maintenance issues such as paint & landscaping. The property is currently 100% full with a waiting list and in our opinion is $100 to $150 per unit under market. We feel renovating the landscaping and professional management could reposition the asset and create $10,000+ per unit in value over the next 18', '2', 1195000.00, 19),
('P1015', 'O1015', 'L0015', '1207 N. Himes Ave & 3418 W. Arch Street', 'B1015', '30,264 SF', 'Office', '1981', 'Commercial Investment Opportunity !', '2', 1300000.00, 1),
('P1016', 'O1016', 'L0016', '4440 Kukui Grove St', 'B1016', '53,339 SF', 'Retail', '1982', 'Single Tenant NNN with 8 years remaining of term', '1', 5200000.00, 1),
('P1017', 'O1017', 'L0017', '74-577 Honokohau Street', 'B1017', '1.39 AC', 'Industrial', '2008', 'Rare opportunity to purchase a ML-1A zoned parcel close to downtown Kailua-Kona. This parcel is improved with a like new multi-tenant warehouse leased to two tenants. Fee Simple.', '1', 3700000.00, 1),
('P1018', 'O1018', 'L0018', '7500 S South Shore Dr', 'B1018', '23,868 SF', 'Multifamily', '1950', 'SVN, as exclusive advisor to Owner, is pleased to offer for sale Lake Shore Apartments, a 125-unit 5-story multifamily building located in the desirable South Shore neighborhood.', '5', 7250000.00, 126),
('P1019', 'O1019', 'L0019', '502 S Oakland Ave', 'B1019', '26.12 AC', 'Industrial', '1983', '4 building Industrial manufacturing/warehouse campus with a total of 164,405 SF (including 9,455 SF of office space) on approximately 19 acres of land. The main building is 106,705 SF and was designed for construction of manufactured homes. The property offers a host of amenities such as', '26', 3275000.00, 1),
('P1020', 'O1020', 'L0020', '3400 Veterans Memorial Blvd', 'B1020', '4.40 AC', 'Retail', '2004', 'Matthews Retail Advisors is pleased to offer for sale to qualified buyers Whole Foods Plaza, located in Metairie (New Orleans), Louisiana. The Offering includes two free-standing buildings leased to Whole Foods Market and Jared the Galleria of Jewelry. Both investment-grade tenants provide a strong revenue stream with future upside through embedded rent increases in each lease.', '4', 19465000.00, 1),
('P1021', 'O1021', 'L0021', '500 N Carrollton Ave', 'B1021', '1.01 AC', 'Retail', '2016', 'SRS National Net Lease Group is pleased to present the rare opportunity to acquire a brand new, freestanding, absolute NNN, corporate guaranteed, CVS with drive-thru located in New Orleans, LA. The tenant, Louisiana CVS Pharmacy, L.L.C., recently signed a brand new long-term 25-year absolute NNN lease with 4 (5-year) option periods. The lease is guaranteed by CVS Health Corporation (NYSE: CVS) with an investment grade credit rating of BBB+ from Standard & Poor\'s. The lease features 10% rental increases at the beginning of each option period, which generates NOI growth and hedges against inflation.', '1', 12235000.00, 1),
('P1022', 'O1022', 'L0022', '9400 Brodie Ln', 'B1022', '2 AC', 'Retail', '2007', 'Investment Highlights', '1', 2500000.00, 1),
('P1023', 'O1023', 'L0023', '4075 Hollister Rd', 'B1023', '15,769 SF', 'Retail', '1972', '6,600 SQFT BUILDING WITH NICE OFFICE FINISH-OUT LOCATED ON 0.36 ACRES OF LAND. 30 PARKING SPACES AND FENCED PARKING AREA. IDEAL FOR CHURCH, DAYCARE, HEALTHCARE, OFFICE OR ENGINEERING BUILDING, WASHATERIA, PARTY HALL/WEDDING, ETC...PLEASE CONTACT COLLIN NGUYEN AT 832-640-5183 OR COLLINXNGUYEN@GMAIL.COM', '1', 650000.00, 1);

-- Insert data into the Image table
INSERT INTO Image (image_id, property_id, image_url) VALUES
('IMG001', 'P1001', 'http://x.lnimg.com/photo/poster_1920/afd0e7ef80994a43bb75843559e4c764.jpg'),
('IMG002', 'P1002', 'http://x.lnimg.com/photo/poster_1920/1f6d472083ff47498b7e1f92bb185610.jpg'),
('IMG003', 'P1003', 'http://x.lnimg.com/photo/poster_1920/34e0cbe014374f428658db35fe70dec3.jpg'),
('IMG004', 'P1004', 'http://x.lnimg.com/photo/poster_1920/e3e8d962387c442d9053fa502960a5e8.jpg'),
('IMG005', 'P1005', 'http://x.lnimg.com/photo/poster_1920/d97b9bf5b0dc433b8a751b99421293b5.jpg'),
('IMG006', 'P1006', 'http://x.lnimg.com/photo/poster_1920/649eac1d28854c4fbb32da5527f34351.jpg'),
('IMG007', 'P1007', 'http://x.lnimg.com/photo/poster_1920/decac0efda48456fa20f93136cf05c8c.jpg'),
('IMG008', 'P1008', 'http://x.lnimg.com/photo/poster_1920/34e0cbe014374f428658db35fe70dec3.jpg'),
('IMG009', 'P1009', 'http://x.lnimg.com/photo/poster_1920/2a3acb1972f94edb8dfee0f69afa900c.jpg'),
('IMG010', 'P1010', 'http://x.lnimg.com/photo/poster_1920/f8570fd7a92e472bb7e60e90753d66b0.jpg'),
('IMG011', 'P1011', 'http://x.lnimg.com/photo/poster_1920/9a9c6ebef7bb46699ae855245845a869.jpg'),
('IMG012', 'P1012', 'http://x.lnimg.com/photo/poster_1920/2d16f1e6d2364740a7bb60197c0bf391.jpg'),
('IMG013', 'P1013', 'http://x.lnimg.com/photo/thumb_288/beba307ac4ea4dfab1d77796d2f80155.jpg'),
('IMG014', 'P1014', 'http://x.lnimg.com/photo/poster_1920/edc0106156894c4b82dbaefc7a9915bc.jpg'),
('IMG015', 'P1015', 'http://x.lnimg.com/photo/poster_1920/b312da85dece4141b06637eb012b5074.jpg'),
('IMG016', 'P1016', 'http://x.lnimg.com/photo/poster_1920/9ef22a3ec111474885268e7554a8b55f.jpg'),
('IMG017', 'P1017', 'http://x.lnimg.com/photo/poster_1920/c0059265f00b4e13ab4ee16875bf20e9.jpg'),
('IMG018', 'P1018', 'http://x.lnimg.com/photo/poster_1920/3c67597a382f4cc79825ab6d97c20fd4.jpg'),
('IMG019', 'P1019', 'http://x.lnimg.com/photo/poster_1920/5e8ecba5ce2446d1b531f71c38542924.jpg'),
('IMG020', 'P1020', 'http://x.lnimg.com/photo/poster_1920/5ea5a3198153405f83f508cdce68ffef.jpg'),
('IMG021', 'P1021', 'http://x.lnimg.com/photo/poster_1920/bff6bd41989843b29639fb22491130b0.jpg'),
('IMG022', 'P1022', 'http://x.lnimg.com/photo/poster_1920/8cde3b4678d7466896a3dfb50e5333bd.jpg'),
('IMG023', 'P1023', 'http://x.lnimg.com/photo/poster_1920/1954c856e92d4342b3e2bd42bb07f7e8.jpg');
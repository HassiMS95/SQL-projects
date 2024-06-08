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
('777 W Orangethorpe Ave', 'Placentia', 'CA', '92870');

-- Insert data into the Owner table
INSERT INTO Owner (owner_id, owner_Lname, owner_Fname, owner_address, owner_zip, owner_city, owner_state) VALUES
('O1001', 'TECHNOLOGY PARK LLC', 'BAKE', '550 NEWPORT CENTER DR', '92660', 'NEWPORT BEACH', 'CA'),
('O1002', 'Doe', 'Jane', '456 Elm St', '10001', 'New York', 'AK'),
('O1003', 'Johnson', 'Mike', '789 Oak St', '60601', 'Chicago', 'IL'),
('O1004', 'John', 'Dobbins', '123 Maple Street', '10001', 'New York', 'NY'),
('O1005', 'Emma', 'Johnson', '1010 Birch Road', '33101', 'Miami', 'FL'),
('O1006', 'Carlos', 'Martinez', '1313 Cedar Place', '94101', 'Houston', 'TX'),
('O1007', 'Liam', 'Robertson', '1515 Aspen Court', '98101', 'Seattle', 'WA'),
('O1008', 'Sophia', 'Petrova', '1717 Redwood', '20001', 'Washington', 'D.C'),
('O1009', 'Chen', 'Wei', '1414 Willow Way', '30301', 'Atlanta', 'Georgia'),
('O1010', 'Samual', 'Singh', '781 Pine Lane', '60601', 'Chicago', 'IL');

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
('B1010', 'Cervantes', 'Beth', '(714) 774-4959', 'bcervantes@pk-cre.com');

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
('L0010', '777 W Orangethorpe Ave', 'P1010', 'B1010', 0);

-- Insert data into the Property table
INSERT INTO Property (property_id, owner_id, listing_id, pLocation_address, broker_id, property_lot_size, property_type, property_year_built, property_other_info, property_number_of_stories, property_price, property_number_of_units) VALUES
('P1001', 'O1001', 'L0001', '7645 W. Marigold Drive', 'B1001', '25 AC', 'Land', NULL , 'Approximately 25 acres with 1,200+ ft frontage on the Parks Highway in the rapidly growing Meadow Lakes area.', '0', 3267000.00, 1),
('P1002', 'O1002', 'L0002', '171 Muldoon Rd', 'B1002', '81,893 SF', 'Retail', '1978', 'SELLER MOTIVATED! PRICE REDUCED TO 5.0M! 6.62% CAPThe subject property is a multi-tenant retail strip center which consists of two commercial buildings with 15 units, containing approximately 22,824 square feet of floor area (GLA), located on an approximately 81,893 square-foot parcel of land. The property, 100% occupied by 13 local tenants, is located on Muldoon Road, minutes away from the Glenn Highway, in the city of Anchorage, Alaska. The prospective investor will benefit from the propertys security, stability, low management and stabilized income stream derived from long-term credit local tenants, such as Brown Jug Liquor, Oriental Market, Young Dry Cleaner, Sicilly s Pizza, Elegant Nail Shop, Crazy Cow Grill, etc.', '1', 5000000000.00, 1),
('P1003', 'O1003', 'L0003', '3400 LaTouche Street', 'B1003', '40,903 SF', 'Office', '1977', 'Class B structure in the U-Med district, two story blg with elevator, ADA accessibility. Building renovated in 2010, including new mechanical, roof and interior/exterior renovations. Site is medically parked, with more than required for handicap parking, fronting the building. Mountain views and an abundance of natural sunlight from the surrounding glass curtain.', '2', 4400000.00, 1),
('P1004', '01004', 'L0004', '1002 S. Walton Blvd', 'B1004', '23.92 AC', 'Land', NULL, '23.92 total acres of land for sale on S Walton Boulevard in Bentonville.', '0', 4000000.00, 1),
('P1005', '01005', 'L0005', '5051 Warden Rd', 'B1005', '1.47 AC', 'Retail', '1989', 'Convenience Store and Gas Station with 9 pumps 2 diesel. Car wash. Financial Available with signed confidentiality agreement.', '1', 4000000.00, 1),
('P1006', '01006', 'L0006', '9300 E Rita Rd', 'B1006', '1.24 AC', 'Office', '2004', '100% leased NNN medical building on 1.24 acres and 3.74 adjacent acres with approved development plan for 31,000 SF in seven buildings.', '1', 3600000.00, 1),
('P1007', '01007', 'L0007', '4690 N Oracle', 'B1007', '5.15 AC', 'Office', '2015', 'The building was converted from retail to office in 2015 for Comcast Cable. The Tucson Galleria, at 4690 N. Oracle Road, was constructed in the mid-1980s and operated as a multi-tenant retail mall initially.', '4', 34339000.00, 1),
('P1008', '01008', 'L0008', '745 N Dobson Rd', 'B1008', '58.95 AC', 'Multifamily', '1965', 'Investment 62 CONDO Portfolio bulk offering of sixty-two condominiums provides an investor with a high occupancy, fee simple condo home bulk package with low HOA fees.', '1', 8000000.00, 62),
('P1009', '01009', 'L0009', '470 Boynton Ave', 'B1009', '1.09 AC', 'Multifamily', '1968', 'The Orleans Apartments is well-maintained 40-unit complex consisting of (28) oversized 1+1s; (8) 2+1.5 flats, (3) 2+1.5 THS; and (1) 4+2 THS apartment units', '2', 15000000.00, 40),
('P1010', '01010', 'L0010', '777 W Orangethorpe Ave', 'B1010', '118,366 SF', 'Retail', '1986', 'Paul Kott Realtors, Inc.', '1', 8995000.00, 1);

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
('IMG010', 'P1010', 'http://x.lnimg.com/photo/poster_1920/f8570fd7a92e472bb7e60e90753d66b0.jpg');






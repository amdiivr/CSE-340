-- INSERT new values to assingment two
INSERT INTO account 
(account_firstname, account_lastname, account_email, account_password)
VALUES
('Tony', 'Stark', 'tony@starkent.com', 'Iam1ronM@n');

-- Modify the tony stark record the account_type to Admin
UPDATE account
SET account_type = 'Admin'
WHERE account_id = 11;

-- Delete Tony Stark record
DELETE FROM account 
WHERE account_id = 11;

-- Modify the "GM Hummer" record
UPDATE inventory
SET inv_description = REPLACE (
	inv_description, 'small interiors', 'a huge unterior'
);  

-- Inner join to select the make and model fields from the inventory table and the classification name field from the classification table for inventory items that belong to the "Sport" category
SELECT 
   inv_make,
   inv_model,
   classification_name
FROM inventory
INNER JOIN classification
   ON inventory.classification_id = classification.classification_id
   WHERE classification_name = 'Sport';

-- Update all records in the inventory table to add "/vehicles" to the middle of the file path in the inv_image and inv_thumbnail columns using a single query
UPDATE inventory
SET inv_image = REPLACE(inv_image, '/images/', '/images/vehicles/');

UPDATE inventory
SET inv_thumbnail = REPLACE(inv_thumbnail, '/images/', '/images/vehicles/');
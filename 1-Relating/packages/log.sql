
-- *** The Lost Letter ***
SELECT "address", "type" FROM "addresses"
WHERE id = (SELECT "to_address_id" FROM "packages" 
WHERE "contents" = "Congratulatory letter")

-- *** The Devious Delivery ***

-- *** The Forgotten Gift ***


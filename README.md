# Carnival-Data-Normalization
1NF, 2NF, 3NF data normalization for Carnival car dealership database - NSS Group project


<a href="https://lucid.app/lucidchart/d9b32def-ff51-40fe-a127-0a005ca82d0f/edit?invitationId=inv_05794cf8-6da9-494f-89f6-d54bc52874d0&page=0_0#">ERD (Prior to Data Normalization)</a>

- Created new tables for body_type, make, and model columns from the original VehicleTypes table.

- Added foreign key id columns in VehicleTypes table for those three columns.

- Added foreign key constraints to new id columns in VehicleTypes table to connect them to their respective primary key in the new tables.

- Imported .CSV data into the new tables, remapping column names that didn't correspond to the column names of the tables in the database.

- Populated foreign keys vehicle_bodytype_id, vehicle_make_id, and vehicle_model_id by writing UPDATE queries which set their ids to match corresponding string data found in that table.

- Dropped body_type, make, and model columns from VehicleTypes.

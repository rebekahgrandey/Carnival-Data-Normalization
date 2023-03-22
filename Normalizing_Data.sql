CREATE TABLE VehicleBodyTypes (
  vehicle_bodytype_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  body_type VARCHAR(64)
);

    ALTER TABLE vehicletypes  
    ADD column vehicle_bodytype_id int 
    
  ALTER TABLE vehicletypes 
  ADD CONSTRAINT vehicletypes_vehiclebodytypes 
  FOREIGN KEY (vehicle_bodytype_id ) 
  REFERENCES vehiclebodytypes (vehicle_bodytype_id );
  
 
UPDATE public.vehicleTypes 
SET vehicle_bodytype_id = 1 
WHERE vehicletypes.body_type = 'Car'

UPDATE public.vehicleTypes 
SET vehicle_bodytype_id = 2 
WHERE vehicletypes.body_type = 'Truck'

UPDATE public.vehicleTypes 
SET vehicle_bodytype_id = 3 
WHERE vehicletypes.body_type = 'Van'

UPDATE public.vehicleTypes 
SET vehicle_bodytype_id = 4 
WHERE vehicletypes.body_type = 'SUV'

ALTER TABLE vehicletypes 
DROP column body_type




 CREATE TABLE VehicleMakes (
  vehicle_make_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  vehicle_make_name VARCHAR(64)
);

    ALTER TABLE vehicletypes  
    ADD column vehicle_make_id int 
    
  ALTER TABLE vehicletypes 
  ADD CONSTRAINT vehicletypes_vehiclemakes 
  FOREIGN KEY (vehicle_make_id ) 
  REFERENCES vehiclemakes (vehicle_make_id );
 
UPDATE public.vehicleTypes 
SET vehicle_make_id = 1 
WHERE vehicletypes.make = 'Chevrolet'

UPDATE public.vehicleTypes 
SET vehicle_make_id = 2 
WHERE vehicletypes.make = 'Mazda'

UPDATE public.vehicleTypes 
SET vehicle_make_id = 3 
WHERE vehicletypes.make = 'Nissan'   

UPDATE public.vehicleTypes 
SET vehicle_make_id = 4 
WHERE vehicletypes.make = 'Ford' 

UPDATE public.vehicleTypes 
SET vehicle_make_id = 5 
WHERE vehicletypes.make = 'Volkswagen' 

ALTER TABLE vehicletypes 
DROP column make




 CREATE TABLE VehicleModels (
  vehicle_model_id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  model_name VARCHAR(64)
);

ALTER TABLE vehicletypes  
ADD column vehicle_model_id int

ALTER TABLE vehicletypes 
  ADD CONSTRAINT vehicletypes_vehiclemodels 
  FOREIGN KEY (vehicle_model_id ) 
  REFERENCES vehiclemodels (vehicle_model_id );
 
UPDATE public.vehicleTypes 
SET vehicle_model_id = 1 
WHERE vehicletypes.model = 'Corvette'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 2 
WHERE vehicletypes.model = 'Blazer'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 3 
WHERE vehicletypes.model = 'Silverado'
    
UPDATE public.vehicleTypes 
SET vehicle_model_id = 4 
WHERE vehicletypes.model = 'MX-5 Miata'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 5 
WHERE vehicletypes.model = 'CX-5'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 6 
WHERE vehicletypes.model = 'CX-9'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 7 
WHERE vehicletypes.model = 'Maxima'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 8 
WHERE vehicletypes.model = 'Altima'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 9 
WHERE vehicletypes.model = 'Titan'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 10 
WHERE vehicletypes.model = 'Fusion'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 11 
WHERE vehicletypes.model = 'EcoSport'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 12 
WHERE vehicletypes.model = 'F-250'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 13 
WHERE vehicletypes.model = 'Beetle'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 14 
WHERE vehicletypes.model = 'Passat'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 15 
WHERE vehicletypes.model = 'Atlas'

UPDATE public.vehicleTypes 
SET vehicle_model_id = 16 
WHERE vehicletypes.model = 'Transit-150 Cargo'

ALTER TABLE vehicletypes 
DROP column model
 

PRACTICE:

INSERT INTO public.customers(first_name, last_name, email, street, city, state, zipcode, company_name, phone_number)
VALUES ('Shelly', 'Jordan', 'shellyj@hotmail.com', '104 Belle Lane', 'Murfreesboro', 'TN', '31111', 'Shelly Bakes Cakes', '908-273-1423')

INSERT INTO public.vehicletypes(vehicle_bodytype_id, vehicle_make_id, vehicle_model_id)
VALUES (1, 4, 17)

INSERT INTO public.vehicles(vin, engine_type, vehicle_type_id, exterior_color, interior_color, floor_price, msr_price, miles_count, year_of_car, is_sold, is_new, dealership_location_id)
VALUES ('GRMZE2H36CS189509', 'V6', 31, 'Tangerine', 'Khaki', 24899, 15487, 53944, 1973, false, false, 11)



 
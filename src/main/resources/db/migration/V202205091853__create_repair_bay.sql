CREATE TABLE car_repair_bay
(
    id        INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL,
    available BOOLEAN                                  NOT NULL,
    CONSTRAINT pk_carrepairbay PRIMARY KEY (id)
);

ALTER TABLE car
    ALTER COLUMN current_market_value TYPE DECIMAL USING (current_market_value::DECIMAL);

ALTER TABLE car
    ALTER COLUMN mileage TYPE DECIMAL USING (mileage::DECIMAL);
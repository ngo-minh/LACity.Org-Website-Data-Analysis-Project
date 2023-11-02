USE la_traffic;

CREATE TABLE website_traffic_data (
    Date DATE,
    Device_Category VARCHAR(50),
    Browser VARCHAR(100),
    `#of_Visitors` INT,
    Sessions INT,
    Bounce_Rate FLOAT,
    Avg_Session_per_Visitor FLOAT
);

LOAD DATA LOW_PRIORITY LOCAL INFILE 'C:\\Users\\mnm4m\\OneDrive\\Desktop\\Website Traffic project\\updated_websitetraffic.csv'
INTO TABLE website_traffic_data
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(Date, Device_Category, Browser, `#of_Visitors`, Sessions, Bounce_Rate, Avg_Session_per_Visitor);

TRUNCATE TABLE website_traffic_data;
SELECT * FROM website_traffic_data;

use customer_churn

select * from dbo.Customer

-- Data Exploration – Check Nulls

SELECT 

    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Customer_ID_Null_Count,

    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Gender_Null_Count,

    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Age_Null_Count,

    SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS Married_Null_Count,

    SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS State_Null_Count,

    SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS Number_of_Referrals_Null_Count,

    SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS Tenure_in_Months_Null_Count,

    SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS Value_Deal_Null_Count,

    SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS Phone_Service_Null_Count,

    SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS Multiple_Lines_Null_Count,

    SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS Internet_Service_Null_Count,

    SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS Internet_Type_Null_Count,

    SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS Online_Security_Null_Count,

    SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS Online_Backup_Null_Count,

    SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS Device_Protection_Plan_Null_Count,

    SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS Premium_Support_Null_Count,

    SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS Streaming_TV_Null_Count,

    SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS Streaming_Movies_Null_Count,

    SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS Streaming_Music_Null_Count,

    SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS Unlimited_Data_Null_Count,

    SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS Contract_Null_Count,

    SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS Paperless_Billing_Null_Count,

    SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS Payment_Method_Null_Count,

    SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS Monthly_Charge_Null_Count,

    SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Charges_Null_Count,

    SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS Total_Refunds_Null_Count,

    SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Extra_Data_Charges_Null_Count,

    SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS Total_Long_Distance_Charges_Null_Count,

    SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS Total_Revenue_Null_Count,

    SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS Customer_Status_Null_Count,

    SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS Churn_Category_Null_Count,

    SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS Churn_Reason_Null_Count

FROM Customer;

SELECT 
    COUNT(*) - COUNT(Customer_ID) AS Customer_ID_Null_Count,
    COUNT(*) - COUNT(Gender) AS Gender_Null_Count,
    COUNT(*) - COUNT(Age) AS Age_Null_Count,
    COUNT(*) - COUNT(Married) AS Married_Null_Count,
    COUNT(*) - COUNT(State) AS State_Null_Count,
    COUNT(*) - COUNT(Number_of_Referrals) AS Number_of_Referrals_Null_Count,
    COUNT(*) - COUNT(Tenure_in_Months) AS Tenure_in_Months_Null_Count,
    COUNT(*) - COUNT(Value_Deal) AS Value_Deal_Null_Count,
    COUNT(*) - COUNT(Phone_Service) AS Phone_Service_Null_Count,
    COUNT(*) - COUNT(Multiple_Lines) AS Multiple_Lines_Null_Count,
    COUNT(*) - COUNT(Internet_Service) AS Internet_Service_Null_Count,
    COUNT(*) - COUNT(Internet_Type) AS Internet_Type_Null_Count,
    COUNT(*) - COUNT(Online_Security) AS Online_Security_Null_Count,
    COUNT(*) - COUNT(Online_Backup) AS Online_Backup_Null_Count,
    COUNT(*) - COUNT(Device_Protection_Plan) AS Device_Protection_Plan_Null_Count,
    COUNT(*) - COUNT(Premium_Support) AS Premium_Support_Null_Count,
    COUNT(*) - COUNT(Streaming_TV) AS Streaming_TV_Null_Count,
    COUNT(*) - COUNT(Streaming_Movies) AS Streaming_Movies_Null_Count,
    COUNT(*) - COUNT(Streaming_Music) AS Streaming_Music_Null_Count,
    COUNT(*) - COUNT(Unlimited_Data) AS Unlimited_Data_Null_Count,
    COUNT(*) - COUNT(Contract) AS Contract_Null_Count,
    COUNT(*) - COUNT(Paperless_Billing) AS Paperless_Billing_Null_Count,
    COUNT(*) - COUNT(Payment_Method) AS Payment_Method_Null_Count,
    COUNT(*) - COUNT(Monthly_Charge) AS Monthly_Charge_Null_Count,
    COUNT(*) - COUNT(Total_Charges) AS Total_Charges_Null_Count,
    COUNT(*) - COUNT(Total_Refunds) AS Total_Refunds_Null_Count,
    COUNT(*) - COUNT(Total_Extra_Data_Charges) AS Total_Extra_Data_Charges_Null_Count,
    COUNT(*) - COUNT(Total_Long_Distance_Charges) AS Total_Long_Distance_Charges_Null_Count,
    COUNT(*) - COUNT(Total_Revenue) AS Total_Revenue_Null_Count,
    COUNT(*) - COUNT(Customer_Status) AS Customer_Status_Null_Count,
    COUNT(*) - COUNT(Churn_Category) AS Churn_Category_Null_Count,
    COUNT(*) - COUNT(Churn_Reason) AS Churn_Reason_Null_Count
FROM Customer;


-- Remove null and insert the new data into Prod table

SELECT 

    Customer_ID,

    Gender,

    Age,

    Married,

    State,

    Number_of_Referrals,

    Tenure_in_Months,

    ISNULL(Value_Deal, 'None') AS Value_Deal,

    Phone_Service,

    ISNULL(Multiple_Lines, 'No') As Multiple_Lines,

    Internet_Service,

    ISNULL(Internet_Type, 'None') AS Internet_Type,

    ISNULL(Online_Security, 'No') AS Online_Security,

    ISNULL(Online_Backup, 'No') AS Online_Backup,

    ISNULL(Device_Protection_Plan, 'No') AS Device_Protection_Plan,

    ISNULL(Premium_Support, 'No') AS Premium_Support,

    ISNULL(Streaming_TV, 'No') AS Streaming_TV,

    ISNULL(Streaming_Movies, 'No') AS Streaming_Movies,

    ISNULL(Streaming_Music, 'No') AS Streaming_Music,

    ISNULL(Unlimited_Data, 'No') AS Unlimited_Data,

    Contract,

    Paperless_Billing,

    Payment_Method,

    Monthly_Charge,

    Total_Charges,

    Total_Refunds,

    Total_Extra_Data_Charges,

    Total_Long_Distance_Charges,

    Total_Revenue,

    Customer_Status,

    ISNULL(Churn_Category, 'Others') AS Churn_Category,

    ISNULL(Churn_Reason , 'Others') AS Churn_Reason

INTO [customer_churn].[dbo].[prod_Customer]

FROM [customer_churn].[dbo].[Customer];


-- Exploratory Data Analysis


-- Gender By Customer

SELECT Gender, Count(Gender) as TotalCount,
Count(Gender)  * 1.0 / (Select Count(*) from customer)  as Percentage
from prod_Customer	
Group by Gender

-- Contract type By Customer

SELECT Contract, Count(Contract) as TotalCount,
Count(Contract)  * 1.0 / (Select Count(*) from Customer)  as Percentage
from prod_Customer
Group by Contract

 -- No of Unique Customers 

SELECT COUNT(DISTINCT Customer_ID) AS Unique_Customers FROM prod_Customer;

-- Descriptive Stats of Customers
SELECT 
    MIN(Age) AS Min_Age, MAX(Age) AS Max_Age, AVG(Age) AS Avg_Age, 
    MIN(Tenure_in_Months) AS Min_Tenure, MAX(Tenure_in_Months) AS Max_Tenure, AVG(Tenure_in_Months) AS Avg_Tenure,
    MIN(Monthly_Charge) AS Min_Charge, MAX(Monthly_Charge) AS Max_Charge, AVG(Monthly_Charge) AS Avg_Charge
FROM prod_Customer;


 -- 1.Customer Churn Analysis

 SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from Customer) * 100  as RevPercentage
from prod_Customer
Group by Customer_Status


--Churn by Age 

SELECT 
    CASE 
        WHEN Age < 20 THEN 'Below 20'
        WHEN Age BETWEEN 20 AND 40 THEN '20-40'
        WHEN Age BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'Above 60' 
    END AS Age_Group, 
    Customer_Status, 
    COUNT(*) AS Count
FROM prod_Customer
GROUP BY 
    CASE 
        WHEN Age < 20 THEN 'Below 20'
        WHEN Age BETWEEN 20 AND 40 THEN '20-40'
        WHEN Age BETWEEN 41 AND 60 THEN '41-60'
        ELSE 'Above 60' 
    END,
	Customer_Status;


--2. Customer State wise Penetration Rate 

SELECT 
    State,
    COUNT(*) AS Number_of_Customers,
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Customer) AS Penetration_Percentage
FROM 
    prod_Customer
GROUP BY 
    State
ORDER BY 
    Penetration_Percentage DESC;




 --3.Churn Reason and Category Analysis 

SELECT Churn_Reason, COUNT(*) AS Count
FROM prod_Customer
WHERE Churn_Reason IS NOT NULL
GROUP BY Churn_Reason
ORDER BY Count DESC;


SELECT Churn_Category, COUNT(*) AS Count
FROM prod_Customer
WHERE Churn_Category IS NOT NULL
GROUP BY Churn_Category
ORDER BY Count DESC;



--4. Analysis of Revenue and Charges

--- Total Revenue by State
SELECT State, ROUND(SUM(Total_Charges),2) AS Total_Revenue 
FROM prod_Customer
GROUP BY State 
ORDER BY Total_Revenue DESC;

--- Average Monthly Charge by Contract Type

SELECT Contract, AVG(Monthly_Charge) as Monthly_charge
from prod_Customer
GROUP BY Contract
ORDER BY Monthly_charge DESC;




--  5.Analysis Based on Payment and Contract Types

 -- Prefered Payment Type 

 SELECT Payment_Method, COUNT(*) AS No_of_Customers
FROM prod_Customer
GROUP BY Payment_Method;

-- Contract Type and Customer Status

SELECT Contract, Customer_Status, COUNT(*) AS Count
FROM prod_Customer
GROUP BY Contract, Customer_Status;



-- Creating Views for the Purpose of Predictive Analytics

-- for machine Learning Model Building  

Create View vw_Customer_churn as
(
Select * from prod_Customer 
where Customer_Status in ('Stayed', 'Churned')
)

Create View vw_Customer_Join as 
(
Select * from prod_Customer
where Customer_Status = 'Joined'
)










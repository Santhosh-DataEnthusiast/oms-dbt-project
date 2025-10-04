{{ config(
    schema='L2_PROCESSING',
    materialized='view'
) }}

select
    EMPLOYEEID   as EmployeeID,
    FIRSTNAME    as FirstName,
    LASTNAME     as LastName,
    EMAIL        as Email,
    JOBTITLE     as JobTitle,
    HIREDATE     as HireDate,
    MANAGERID    as ManagerID,
    ADDRESS      as Address,
    CITY         as City,
    STATE        as State,
    ZIPCODE      as ZipCode,
    UPDATED_AT   as UpdatedAt
from {{ source('landing','employees') }}

<cfparam  name="employeeID">

<cfoutput>
    <cfquery datasource="empdeets" name="query" lazy=true>
        SELECT *
          FROM [EmpDeets].[dbo].[EmployeeData]
          Where EmployeeID=<cfqueryparam value=#attributes.employeeID#>
        </cfquery>
</cfoutput>
<cfquery datasource="empdeets" name="query" lazy=true>
SELECT TOP (1000) [EmployeeID]
      ,[F_Name]
      ,[L_Name]
      ,[Age]
      ,[Gender]
  FROM [EmpDeets].[dbo].[EmployeeData]
</cfquery>

<cfset session.recentEmployee = "">

<cfmodule template="../Modules/CustomTags/centralPage.cfm" title="Overview">
    <h1 class="page-title">Employee Data</h1>
    <div class="empl-container">    
        <div class="empl-container-inner">
            <cfoutput>
                <cfloop query=#query#>
                    <cfmodule template="/Modules/CustomTags/employeecard.cfm" id=#query.EmployeeID# fullname=#query.F_Name& ' ' &query.L_Name# age=#query.Age# gender=#query.Gender#>
                </cfloop>                    
            </cfoutput>
        </div>
    </div>
    <a class="btn form-btn" href="./addEmp.cfm" role="button">Add New Employee</a>
</cfmodule>

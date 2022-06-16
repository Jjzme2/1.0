<!-----------------------------------------------------------------    Param Definition      ------------------------------------------------------>
<cfparam  name="attributes.EmployeeID">

<cfquery name="qry" datasource="empdeets"> 
    <!--- 
    --Either * or the optional parameters work, * calls everything. Can be reference by dot notation. [](These are used to help define words that could also be interpreted as keywords) --->

        Select emp.*, u.* from EmployeeData emp
        join TBL_Users u on emp.EmployeeID = u.EmployeeID
        <cfoutput>Where emp.EmployeeID=#attributes.EmployeeID#</cfoutput>
</cfquery>
<cfset session.recentEmployee = #qry#>


<!-----------------------------------------------------------------    Module Begin      ------------------------------------------------------>
<cfif #thistag.executionMode# EQ 'start'>
<cfoutput>
    <form action='/Modules/Gateway/delete.cfm' method="post" class="login-form">
        <div class="login-container" style="margin-top:1%;">
            <div class="login-inner-container">
                <p class="form-title"> WOAH! </p>
                <p>You are about to delete employee #session.recentEmployee.F_Name# #session.recentEmployee.L_Name#</p>
                <p>ID: #session.recentEmployee.EmployeeID#</p>

                <h6>* You can go back at any time by clicking the logo at the top left of the page.</h6>
            </div>
            <input name='id' value=#session.recentEmployee.EmployeeID# hidden='true'>
            
            <button class="btn btn-primary btn-sm" style="margin-bottom: 3%;" name="deleteEmp">Terminate</button>
        </div>
    </form>   
</cfoutput>

</cfif> 
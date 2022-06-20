<!--- This module should display a card with the employee's information. It will be a larger card than the one displayed on the previous page. --->

<cfparam  name="attributes.EmployeeID">

<cfif attributes.EmployeeID EQ "">
    <cflocation  url="/overview.cfm" addtoken="no">
</cfif>

<!--- datasource is database -likely referenced in cfadmin  page --->
<cfquery name="qry" datasource="empdeets"> 
            <!--- 
            --Either * or the optional parameters work, * calls everything. Can be reference by dot notation. [](These are used to help define words that could also be interpreted as keywords) --->

                Select emp.*, u.* from EmployeeData emp
                join TBL_Users u on emp.EmployeeID = u.EmployeeID
                <cfoutput>Where emp.EmployeeID=#attributes.EmployeeID#</cfoutput>
</cfquery>
<cfset session.recentEmployee = #qry#>


<cfif #thistag.executionMode# EQ 'start'>

    <div class="container">
        <div class="big-card">
            <div class="card-body">
                <cfoutput>
<!---                     <h6 class="card-subtitle mb-2 text-muted">ID:(#attributes.EmployeeID#)</h6> --->
                    <h5 class="card-title"> #qry.F_Name& ' ' &qry.L_Name#, </h5>
                    <p>a(n) #qry.age# year old #qry.gender#</p>
                    <p>Has been defined as #qry.username# and has a role level of (#qry.role#)</p>
                </cfoutput>
            </div>
        </div>
        <a class="btn form-btn" href="./overview.cfm" role="button">Return to All Employees</a>
    </div>
</cfif>



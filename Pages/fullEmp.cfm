<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>

<cfset session.recentEmployee = "">

<cfif session.started EQ 'true'>
    <cfmodule template="/Modules/Templates/page.cfm" title='Employee Details'>
        <cfif structKeyExists(form, 'EmployeeID')>
            <cfmodule template="/Modules/Templates/empDetail.cfm" EmployeeID=#form.EmployeeID#/>
            <cfelse>
                <div class="container">
                <h1 class="error-message">Bad Employee ID</h1>
                </div>
        </cfif>
    </cfmodule>
<cfelse>
        <cflocation  url="login.cfm" addToken = "no">
</cfif>
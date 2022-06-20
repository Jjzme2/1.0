<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>

<cfset session.recentEmployee = "">

<cfif session.started EQ 'true'>
    <cfmodule template="/Modules/Templates/page.cfm" title="Delete Employee">
        <cfif structKeyExists(form, 'EmployeeID')>
            <!---  Displays strangely if user isn't in db displays unwanted code.
            What happens if the current user is deleted    --->
            <cfmodule template="/Modules/Templates/empDelete.cfm" EmployeeID="#form.EmployeeID#" />
            <cfelse>
                <div class="container">
                    <h1 class="error-message">Bad Employee ID</h1>
                </div>
        </cfif>
    </cfmodule>
<cfelse>
        <cflocation  url="login.cfm" addToken = "no">
</cfif>
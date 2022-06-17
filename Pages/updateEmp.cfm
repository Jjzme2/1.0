<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>

<cfset session.recentEmployee = "">

        <cfif structKeyExists(form, 'EmployeeID')> <!--- Came here from form --->
            <cfif session.started EQ 'true'> <!--- Good Session --->
                <cfmodule template="/Modules/Templates/page.cfm" title='Update Employee'> <!--- Set Page --->
                    <cfmodule template="/Modules/customTags/Forms/empUpdate.cfm" EmployeeID=#form.EmployeeID# /><!--- Set Update Form --->
                </cfmodule>

            <cfelse>
                <cflocation  url="login.cfm" addToken = "no">
            </cfif>
        <cfelse>
            <cflocation  url="login.cfm" addToken = "no">
        </cfif>
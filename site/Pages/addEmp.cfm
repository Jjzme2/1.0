<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>

<cfset session.recentEmployee = "">

<cfif session.started EQ 'true'>
    <cfmodule template="/Modules/Templates/page.cfm" title="Welcome">
        <!---   This will bring up the registratoin form, but it will take you to the validation, that's good, but make sure it's the right validation for registration, confirm redirctURL   --->
            <cfmodule template="/Modules/customTags/Forms/empRegistration.cfm" destination= "../Modules/Gateway/validation.cfm" redirectURL="overview.cfm" />
        </cfmodule>
<cfelse>
        <cflocation  url="login.cfm" addToken = "no">
</cfif>
    
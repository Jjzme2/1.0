<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>

<cfset session.recentEmployee = "">

<cfif session.started EQ 'true'> <!--- Good Session --->
    <cfmodule template="../Modules/Templates/page.cfm" title="Overview"><!--- Set Page --->
        <cfmodule template="/Modules/Templates/overview.cfm" /><!--- Set Overview Template --->
    </cfmodule>
    <cfelse>
        <cflocation  url="login.cfm" addToken = "no">
</cfif>

<!--- Perform checks and decide what to do     --->

<!--- This structure is important, if the whole thing is wrapped in if statement
    displays empty page on bad session(E.G Private mode - first start)
--->

<!--- All tables were deleted and can not populate until recreated.
Many tables can be made, consider what each NEEDS.
--->


<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>

<cfif session.started EQ 'false'>
    <cfmodule template="/Modules/Templates/page.cfm" title="Login" showNav='false'>
        <cfmodule template="/Modules/customTags/Forms/login.cfm" />
    </cfmodule>
<cfelse>
    <cflocation  url="overview.cfm" addToken = "no">
</cfif>


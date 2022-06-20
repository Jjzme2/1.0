<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>

<!--- No need to check for active session, as it resets session user and defines new session (maybe) --->

<cfset session.user = ''>

<cfif structKeyExists(form, 'username')>    
    <cfif !structKeyExists(session, 'username')>
        <cfquery name="qry">(
            Select * from EmployeeData emp
            left join TBL_Users u on emp.EmployeeID = u.EmployeeID
            <cfoutput>Where username='#form.username#'</cfoutput>
            )
        </cfquery>
    </cfif>

        <cfoutput>
            <!---   If Query had results   --->
            <cfif qry.recordcount() GT 0>
                <!---     USER found with username     --->
                <cfset session.user = {EmployeeID=#qry.EmployeeID#, username=#form.username#, password=#qry.password#, fName=#qry.F_Name#, lName=#qry.L_Name#, role=#qry.role#}>
                <cfset session.started = 'true'>
                <cflocation url="../overview.cfm" addToken = "no">    
            </cfif>   
        </cfoutput>
<cfelse>
    <cflocation url="../login.cfm" addToken = "no"> 
</cfif>




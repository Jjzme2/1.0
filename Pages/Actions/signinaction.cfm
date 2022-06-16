<cfquery name="qry" datasource="empdeets">(
Select * from EmployeeData emp
left join TBL_Users u on emp.EmployeeID = u.EmployeeID
<cfoutput>Where username='#form.username#'</cfoutput>
)

</cfquery>
<cfdump  var="#qry#">

<cfoutput>

    <cfif qry.recordcount() GT 0>
<!---     USER found with username     --->
        <cfset session.user = {EmployeeID=#qry.EmployeeID#, username=#form.username#, password=#qry.password#, fName=#qry.F_Name#, lName=#qry.L_Name#, role=#qry.role#}>
        <cfset session.started = 'true'>
        <cflocation url="../welcome.cfm">    
    <cfelse> <!---Fail--->
        <cflocation url="../login.cfm"> 

    </cfif>>

</cfoutput>

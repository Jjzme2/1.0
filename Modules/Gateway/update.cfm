<cfif(structKeyExists(form, 'updateEmp'))>

<cfset "errorMsg" = arrayNew(1) />

<cfset "formSubmitComplete" = false />
<!--- Perform Checks --->
<cfif #form.password# NEQ #form.confirmPassword#>
    <cfdump  var="bad">
    arrayAppend(errorMsg, 'Please make sure the password fields match.')
</cfif>

<!--- Check to continue --->
<cfif arrayIsEmpty(errorMsg)>

    <cfquery name="qry" datasource="empdeets"> 
        UPDATE EmployeeData
        SET
        F_Name='#form.fName#',
        L_Name='#form.lName#',
        Age='#form.age#',
        Gender='#form.gender#'
        WHERE [EmployeeID]=#form.id#
    </cfquery>

<cfquery name="userQry" datasource="empdeets"> 
    UPDATE TBL_Users
    SET
    Username='#form.username#',
    [Password]='#form.password#'
    WHERE [EmployeeID]=#form.id#
</cfquery>

    <cfset formSubmitComplete = true> 
    <cflocation  url="/Pages/welcome.cfm">
</cfif>

</cfif>

<cfif isDefined('errorMsg') AND NOT arrayIsEmpty(errorMsg)>
    <cfoutput>
        <cfloop array="#errorMsg#" index="msg">
            <p class="error-message">#msg#</p>
        </cfloop>
    </cfoutput>
</cfif> --->
<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>


<cfif session.started EQ 'true'>
    <cfif(structKeyExists(form, 'addEmp'))>
        <cfset "errorMsg" = arrayNew(1) />
        <cfset "formSubmitComplete" = false />
    
        <!--- Validation --->
        <cfif #form.password# NEQ #form.confirmPassword#>
            <cfdump  var="Passwords do not match.">
            <cflocation  url="Pages/updateEmp.cfm" addtoken="no">
        </cfif>
<!---
        <cfif '#form.username#' == ''>
            arrayAppend('errorMsg', "Please provide a username.")
        </cfif>

        <cfif '#form.password#' == ''>
            arrayAppend('errorMsg', "Please provide a password.")
        </cfif>

        <cfif '#form.confirm#' == ''>
            arrayAppend('errorMsg', "Passwords must match.")
        </cfif>

        <cfif '#form.password#' NEQ '#form.confirm#'>
            arrayAppend('errorMsg', "Passwords must match.")
        </cfif>
    --->

<!---   All good, but doesn't work well rn       --->
        <cfif arrayIsEmpty(errorMsg)>

            <cfquery name="qry">
                SELECT emp.* u.* from EmployeeData emp
                left join TBL_Users u on emp.EmployeeID=u.EmployeeID
            </cfquery>

            <cfquery name="qry"> 
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
           <cflocation  url="/Pages/overview.cfm" addToken = "no"> 

        <cfelse>
            <cfoutput>
                <cfloop array="#errorMsg#" index="msg">
                    <p class="error-message">#msg#</p>
                </cfloop>
            </cfoutput>
        </cfif>
    </cfif>
</cfif>
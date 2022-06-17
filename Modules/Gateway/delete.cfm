<cfif(structKeyExists(form, 'deleteEmp'))>

<cfset "errorMsg" = arrayNew(1) />

<cfset "formSubmitComplete" = false />
<!--- Perform Checks --->


<!--- Check to continue --->
<cfif arrayIsEmpty(errorMsg)>

    <cfquery name="qry"> 
        DELETE FROM EmployeeData
        WHERE [EmployeeID]=#form.id#;
    </cfquery>

    <cfset formSubmitComplete = true> 
    <cflocation  url="/Pages/welcome.cfm" addToken = "no">
</cfif>

</cfif>

<cfif isDefined('errorMsg') AND NOT arrayIsEmpty(errorMsg)>
    <cfoutput>
        <cfloop array="#errorMsg#" index="msg">
            <p class="error-message">#msg#</p>
        </cfloop>
    </cfoutput>
</cfif>
<cfif(structKeyExists(form, 'addEmp'))>

<cfset "errorMsg" = arrayNew(1) />

<cfset "formSubmitComplete" = false />
<!--- Validation --->
<cfif '#form.fName#' == ''>
    arrayAppend('errorMsg', "Please provide a first name.")
</cfif>

<cfif '#form.lName#' == ''>
    arrayAppend('errorMsg', "Please provide a last name.")
</cfif>

<cfif '#form.age#' == ''>
    arrayAppend('errorMsg', "Please provide an age.")
</cfif>

<cfif arrayIsEmpty(errorMsg)>

    <cfquery name="qry" datasource="empdeets"> 
        INSERT INTO EmployeeData (F_Name, L_Name, Age, Gender) 
        VALUES(
            <cfqueryparam value="#form.fName#" cfsqltype="cf_sql_nvarchar">,
            <cfqueryparam value="#form.lName#" cfsqltype="cf_sql_nvarchar">,
            <cfqueryparam value="#form.age#" cfsqltype="CF_SQL_INTEGER">,
            <cfqueryparam value="#form.gender#" cfsqltype="cf_sql_nvarchar">
        );
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
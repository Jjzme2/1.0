<cfif !structKeyExists(session, 'started')>
    <cfset session.started = 'false'>
</cfif>


<cfif session.started EQ 'true'>
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
                INSERT INTO EmployeeData (F_Name, L_Name, Age, Gender) 
                VALUES(
                    <cfqueryparam value="#form.fName#" cfsqltype="cf_sql_nvarchar">,
                    <cfqueryparam value="#form.lName#" cfsqltype="cf_sql_nvarchar">,
                    <!--- <cfqueryparam value="#form.suffix#" cfsqltype="cf_sql_nvarchar">, --->
                    <cfqueryparam value="#form.age#" cfsqltype="CF_SQL_INTEGER">,
                    <cfqueryparam value="#form.gender#" cfsqltype="cf_sql_nvarchar">
                    );
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
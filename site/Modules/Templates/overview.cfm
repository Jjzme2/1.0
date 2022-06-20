<!-----------------------------------------------------------------    Param Definition      ------------------------------------------------------>

<!-----------------------------------------------------------------    Module Begin      ------------------------------------------------------>
<cfif #thistag.executionMode# EQ 'start'>
    <cfquery name="qry"> 
        <!--- 
        --Either * or the optional parameters work, * calls everything. Can be reference by dot notation. [](These are used to help define words that could also be interpreted as keywords) --->
            Select emp.*, u.* from EmployeeData emp
            join TBL_Users u on emp.EmployeeID = u.EmployeeID
    </cfquery>
    
    <h1 class="page-title">Employee Data</h1>
    <cfoutput>
        <p class="subtle-text" style="text-align:center;">Signed in as #session.user.username#</p>
    </cfoutput>

    <div class="empl-container">    
        <div class="empl-container-inner">
            <cfoutput>
                <cfloop query=#qry#>
                    <cfmodule template="/Modules/CustomTags/cardEmployee.cfm" EmployeeID=#qry.EmployeeID#>
                </cfloop>  
                
                    <div class="card">
                        <div class="card-body">
                             <a class="btn form-btn" style="border-radius:90px; background-color: white; color: black;" href="./addEmp.cfm" role="button">+</a>
                        </div>
                    </div>    
            </cfoutput>
        </div>
    </div>
</cfif>
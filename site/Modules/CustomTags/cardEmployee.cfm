<cfparam name="attributes.EmployeeID">

<cfquery name="qry"> 
    SELECT *
  FROM [EmployeeData]
  Where EmployeeID=<cfqueryparam value=#attributes.EmployeeID#>
</cfquery>

    <div class="card">
        <div class="card-body">
            <cfoutput>
                <div class="card-text-area">
                    <h5 class="card-title"> #qry.F_Name# #qry.L_Name#</h5>
                </div>
                <div class="card-btn-area">

<!--- Buttons are forms to send data(attributes.EmployeeID, a hidden value) --->

                                            <!---          Full Employee Page            --->
                    <form action="./fullEmp.cfm" method="post">
                        <input type="text" name="EmployeeID" value=#qry.EmployeeID# hidden=true>
                        <input class="btn btn-primary "type="submit" value="Read More">
                    </form>

                    <!---          Update Employee Page            --->
                    <form action="./updateEmp.cfm" method="post">
                        <input type="text" name="EmployeeID" value=#qry.EmployeeID# hidden=true>
                        <input class="btn btn-primary "type="submit" value="Update Employee">
                    </form>

                    <!---          Delete Employee Page            --->
                    <form action="./deleteEmp.cfm" method="post">
                        <input type="text" name="EmployeeID" value=#qry.EmployeeID# hidden=true>
                        <input class="btn btn-primary "type="submit" value="Delete Employee">
                    </form>


                </div>
            </cfoutput>
        </div>
    </div>

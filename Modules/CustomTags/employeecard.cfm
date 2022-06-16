<cfparam name="attributes.id" default=0>
<cfparam name="attributes.fullName" default="John Doe">
<cfparam name="attributes.age" default= 45>
<cfparam name="attributes.gender" default="male">

<cfquery name="qry" datasource="empdeets"> 
    SELECT *
  FROM [EmpDeets].[dbo].[EmployeeData]
  Where EmployeeID=<cfqueryparam value=#attributes.id#>
</cfquery>

    <div class="card">
        <div class="card-body">
            <cfoutput>
                <div class="card-text-area">
                    <h5 class="card-title"> #attributes.fullName#</h5>
                    <h6 class="card-subtitle mb-2 text-muted">ID:#attributes.id#</h6>
                </div>
                <div class="card-btn-area">
                                            <!---          Full Employee Page            --->
                    <form action="./fullEmp.cfm" method="post">
                        <input type="text" name="id" value=#attributes.id# hidden=true>
                        <input class="btn btn-primary "type="submit" value="Read More">
                    </form>

                    <!---          Update Employee Page            --->
                    <form action="./updateEmp.cfm" method="post">
                        <input type="text" name="id" value=#attributes.id# hidden=true>
                        <input class="btn btn-primary "type="submit" value="Update Employee">
                    </form>

                    <!---          Delete Employee Page            --->
                    <form action="./deleteEmp.cfm" method="post">
                        <input type="text" name="id" value=#attributes.id# hidden=true>
                        <input class="btn btn-primary "type="submit" value="Delete Employee">
                    </form>


                </div>
            </cfoutput>
        </div>
    </div>

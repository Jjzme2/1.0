<!-----------------------------------------------------------------    Param Definition      ------------------------------------------------------>
<cfparam  name="attributes.EmployeeID">

<!--- Validate information is EQ(Makes sure things match: Matchy-matchy)

<cfif form.password NEQ form.passwordConfirm>
    <cfset arrayAppend('errorMsgArray', 'Passwords do not match.') />
</cfif>

--->



<cfquery name="qry" datasource="empdeets"> 
    <!--- 
    --Either * or the optional parameters work, * calls everything. Can be reference by dot notation. [](These are used to help define words that could also be interpreted as keywords) --->

        Select emp.*, u.* from EmployeeData emp
        join TBL_Users u on emp.EmployeeID = u.EmployeeID
        <cfoutput>Where emp.EmployeeID=#attributes.EmployeeID#</cfoutput>
</cfquery>
<cfset session.recentEmployee = #qry#>



<!-----------------------------------------------------------------    Module Begin      ------------------------------------------------------>
<cfif #thistag.executionMode# EQ 'start'>
<cfoutput>

    <form action="/Modules/Gateway/update.cfm" method="post" class="login-form" autocomplete="off">
        <div class="login-container" style="margin-top:1%;">
            <div class="login-inner-container">
                <p class="form-title"> Update Employee #session.recentEmployee.F_Name# #session.recentEmployee.L_Name# (ID: #attributes.EmployeeID#) </p>

                <label for="userName">Enter new Username</label>                
                <input type="text" name="username" value="#session.recentEmployee.username#" required
                minlength="2" maxlength="20" size="30em" > 

                <!---
                
                    <label for="password">Enter new Password</label>                 
                    <input type="password" name="password" value="#session.recentEmployee.password#" required
                    minlength="2" maxlength="20" size="30em" > 

                    <label for="confirmPassword">Confirm Password</label>                
                    <input type="password" name="confirmPassword" value="#session.recentEmployee.password#" required
                    minlength="2" maxlength="20" size="30em" > 
                
                --->


                <label for="fName">Enter employee first name</label>                
                <input type="text" name="fName" value="#session.recentEmployee.F_Name#" required
                minlength="2" maxlength="20" size="30em" >   
                
<!--- 

This text will clear the field on click(focus)

onfocus="this.value=''"

use as an attribute.
--->

                
                <label for="lName">Enter employee last name</label>
                <input type="text" name="lName" value='#session.recentEmployee.L_Name#' required
                minlength="2" maxlength="20" size="30em"> 

                <label for="age">Enter employee age</label>
                <input class="md-input" type="number" name="age" value=#session.recentEmployee.age# required> 
                
                <p style="margin:0;">Gender: </p>
                <div class="radio">
                    <label for="Male">Male</label>
                    <input type="radio" value="Male" name="gender" checked>

                    <label for="Female">Female</label>
                    <input type="radio" value="Female" name="gender">

                    <input name='id' value=#session.recentEmployee.EmployeeID# hidden='true'>
                </div>
            </div>
            <button class="btn btn-primary btn-sm" style="margin-bottom: 3%;" name="updateEmp">Submit Updated Employee</button>
        </div>
    </form>
    
    
</cfoutput>
</cfif> 
<!-----------------------------------------------------------------    Param Definition      ------------------------------------------------------>
<cfparam  name="attributes.destination" default='../Pages/login.cfm'>

<!--- This text contains the attributes associated to this document. --->
<!--- <cfmodule template="/Modules/customTags/Forms/newEmployeeForm.cfm" destination= "../Modules/Gateway/validation.cfm" redirectURL="overview.cfm" /> --->


<!-----------------------------------------------------------------    Module Begin      ------------------------------------------------------>
<cfif #thistag.executionMode# EQ 'start'>
<cfoutput>
    <form action='#attributes.destination#' method="post" class="login-form" autocomplete="off">
        <div class="login-container">
            <div class="login-inner-container">
                <p class="form-title"> Employee Data </p>

                <label for="fName">Enter first name</label>                
                <input type="text" placeholder="John" name="fName" required
                minlength="2" maxlength="20" size="30em">   
                
                
                <label for="lName">Enter last name</label>
                <input type="text" placeholder="Doe" name="lName" required
                minlength="2" maxlength="20" size="30em"> 
                
                <div>
                    <label for="suffix">Suffix:</label>
                    <select name="suffix" id="suffix">
                        <option value="none" selected>None</option>
                        <option value="sr">Sr.</option>
                        <option value="jr">Jr.</option>
                        <option value="iii">III.</option>
                        <option value="iv">IV.</option>
                        <option value="v">V.</option>
                    </select>
                </div>
                <label for="age">Enter age</label>
                <input class="md-input" type="number" name="age"> 
                
                <p style="margin:0;">Gender: </p>
                <div class="radio" >
                    <label for="Male">Male</label>
                    <input type="radio" value="Male" name="gender" checked>

                    <label for="Female">Female</label>
                    <input type="radio" value="Female" name="gender">
                </div>

<!---
                <!---      User Data            --->

                <p class="form-title">User Data</p>
                <label for="username">Enter Username</label>                
                <input type="text" placeholder="User123" name="username" required
                minlength="2" maxlength="20" size="30em">

                <label for="password">Enter Password</label>                
                <input type="password" name="password" required
                minlength="2" maxlength="20" size="30em">

                <label for="confirm">Confirm Password</label>                
                <input type="password" name="confirm" required
                minlength="2" maxlength="20" size="30em">

                <div> <!--- pull from db refer to video 
                                        https://www.youtube.com/watch?v=VJLI5hrBu3E&list=PL3iywAijqFoUD31CQBLsHvJn4WAonNA7r&index=36--->
                    <label for="role">User Role Level:</label>
                    <select name="role" id="role">
                        <option value="owner">Owner</option>
                        <option value="admin">Admin</option>
                        <option value="none" selected>None</option>
                    </select>
                </div>
                
            --->
            </div>
            <button class="btn btn-primary btn-sm" style="margin-bottom: 3%;" name="addEmp">Submit Employee Data</button>
        </div>
    </form>   
</cfoutput>

</cfif> 
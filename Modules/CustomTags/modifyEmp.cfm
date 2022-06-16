<!-----------------------------------------------------------------    Param Definition      ------------------------------------------------------>
<cfparam  name="attributes.emplID">


<!-----------------------------------------------------------------    Module Begin      ------------------------------------------------------>
<cfif #thistag.executionMode# EQ 'start'>
<cfoutput>
    <form action=#attributes.destination# method="post" class="login-form">
        <div class="login-container">
            <div class="login-inner-container">
                <p class="form-title"> Welcome new Employee! </p>

                <label for="fName">Enter employee first name</label>                
                <input type="text" placeholder="John" name="fName" required
                minlength="2" maxlength="20" size="30em">   
                
                
                <label for="lName">Enter employee last name</label>
                <input type="text" placeholder="Doe" name="lName" required
                minlength="2" maxlength="20" size="30em"> 

                <label for="age">Enter employee age</label>
                <input class="md-input" type="number" name="age"> 
                
                <p style="margin:0;">Gender: </p>
                <div class="radio">
                    <label for="Male">Male</label>
                    <input type="radio" value="Male" name="gender" checked>

                    <label for="Female">Female</label>
                    <input type="radio" value="Female" name="gender">
                </div>
            </div>
            <button class="btn btn-primary btn-sm" style="margin-bottom: 3%;" name="addEmp">Submit Employee Data</button>
        </div>
    </form>   
</cfoutput>

</cfif> 
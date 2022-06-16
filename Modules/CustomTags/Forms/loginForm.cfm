<!-----------------------------------------------------------------    Param Definition      ------------------------------------------------------>
<cfparam  name="attributes.destination" default='../Pages/login.cfm'>


<!-----------------------------------------------------------------    Module Begin      ------------------------------------------------------>
<cfif #thistag.executionMode# EQ 'start'>

    <cfoutput>
            <form action="./Actions/signinaction.cfm" method="post" class="login-form" autocomplete="off">
                <div class="login-container">
                    <div class="login-inner-container">
                        <img class="brand-img" src="/public/pics/microsoft.png" alt="Brand-Logo"><p class="brand"> Microstuff </p>
                        <p class="form-title lefted-text"> Sign in </p>
                        <input type="text" placeholder="Email, phone, or Skype" name="username">
                        <br>
                        <p class="subtle-text"> Need an account? <a href="register.cfm"> Register as a new Employee</a>
    <!---                 <input type="password" placeholder="Password" name="password"> --->
                        <br>
                        <button class="button righted">Sign In </button>
                    </div>
                </div>
            </form>   
            


<!---  Maybe add OAuth but not required.            --->

       <!---     <div class="login-bottom-container"> 
                 <p class="subtle-text"><a href="register.cfm"> Other methods of logging in</a> --->
            </div> --->
    </cfoutput>




</cfif>
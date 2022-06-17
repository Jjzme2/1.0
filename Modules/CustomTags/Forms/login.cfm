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
                            
                        <!--- Input List --->
                            <input type="text" placeholder="Username" name="username">
                            <input type="password" placeholder="Password" name="password">
                            <button class="button righted">Sign In </button>
                    </div>
                </div>
            </form>   
    </cfoutput>

</cfif>
<!-----------------------------------------------------------------    Param Definition      ------------------------------------------------------>
<cfparam  name="attributes.destination" default='../Pages/login.cfm'>

<!-----------------------------------------------------------------    Module Begin      ------------------------------------------------------>
<cfif #thistag.executionMode# EQ 'start'>
<cfoutput>
    <form action=#attributes.destination# method="post" class="login-form" autocomplete="off">
        <div class="login-container">
            <div class="login-inner-container">
                <p class="form-title"> Register </p>
                <input type="text" placeholder="Enter your email." name="email">                    
                <input type="text" placeholder="Confirm your email." name="conf-email">                    

                <input type="password" placeholder="Enter your password" name="password">
                <input type="password" placeholder="Confirm your password" name="conf-password">
                <br>
                <button class="centered">Submit </button> 
            </div>
        </div>
    </form>   
</cfoutput>

</cfif>
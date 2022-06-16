<cfparam  name="attributes.title" default="">

<!--- Start Module --->
<cfif #thistag.executionMode# EQ 'start'>
    <html>
<!-----------------------------------------------------------------    HOM(Head of Document)      ------------------------------------------------------>
        <head>
            <meta charset="UTF-8">

            <!--- Google Fonts --->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Nuosu+SIL&family=Source+Sans+Pro:wght@200;300;400;600;700;900&display=swap" rel="stylesheet">
            
            <!--- Bootstrap --->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
            
            <!--- Custom CSS --->
            <link rel="stylesheet" href="/public/CSS/styles.css" type="text/css" />

            <cfoutput>
                <title>#attributes.title#</title>
            </cfoutput>
        </head>
        
        <body>
<!----------------------------------------------------------------       BODY START     ---------------------------------------------------------------->
            <cfif #attributes.title# NEQ "Login">
                <nav class="navbar navbar-expand-lg bg-light">
                    <div class="container-fluid">
                        <a class="navbar-brand" href="/Pages/welcome.cfm">
                            <img src="/public/pics/microsoft.png" alt="" width="30" height="24" class="d-inline-block align-text-top">
                            Microstuff
                        </a>
                  
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                  
                        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                            <div class="navbar-nav">
                                                                <!---         You can also get here by clicking the logo                         --->
<!---                                 <a class="nav-link" href="/Pages/welcome.cfm">See All Employees</a> --->
                                                                                    <!---           TESTS                       --->
                                
                                                                                    <a class="nav-link" href="/Pages/TestPages/CGIVars.cfm">(DEV) TESTCGI Vars</a>
                                                                                    <a class="nav-link" href="/Pages/TestPages/SESSIONVars.cfm">(DEV) TESTSESSION Vars</a>
                                                                                    <a class="nav-link" href="/Pages/TestPages/SERVERVars.cfm">(DEV) TESTSERVER Vars</a>

                                                                                    <!---            End Test                   --->
                                <!--- <a class="nav-link" href="#">Pricing</a> --->
                                <!--- <a class="nav-link disabled">Disabled</a> --->
                                <a class="nav-link active" href="/Pages/Actions/logout.cfm">Log out</a>
                            </div>
                        </div>
                    </div>
                </nav>
            </cfif>
            <div class="central-page">
<!---------------------------------------------------------------------         Module Close      ----------------------------------------------------------------->
                <cfelse>
                </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
            </body>

<!----------------------------------------------------------------------        Begin Footer      ----------------------------------------------------------------->

<footer class="footer">
    <cfif #session.started# EQ 'true'>
        <p class="footer-text"> Signed in as <cfoutput>#session.user.username#</cfoutput></p>
        <cfelse>         <p class="footer-text"> Not currently signed in.</p>
        </cfif>
                        <p class="footer-text">&#169 <cfoutput> #dateFormat(now(), 'yyyy')#</cfoutput> </p>
            </footer>
    </html>
</cfif>
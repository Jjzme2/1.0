<cfapplication 
name="Employee Database"
sessionManagement="YES"
sessionTimeout = "#createTimespan(0, 0, 20, 0)#"
>

<!--- <CFLOCK TIMEOUT="30" NAME="#session.sessionID#" TYPE="Exclusive"> --->
<!---     <CFSET session.name> --->
<!---     </CFLOCK> --->
<!--- <CFSET session.user = {username=""}> --->


<!--- <CFLOCK TIMEOUT="30" NAME="#session.sessionID#" TYPE="Exclusive">
    <CFSET session.user={username=#session.sessionID#}>
    </CFLOCK> --->


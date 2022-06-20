<cfcomponent output="false">


<!--- Must be called Application.cfc *Capital A
    If file can not be found, will search up directories, if none are found, none are available
    if in higer directory and not current, use higher otherwise use current
    Always uses first found only one is used but can be inherited(advanced)
--->
<!--- Set vars --->

<cfset this.name="Employee Database" />
<cfset this.defaultdatasource="empdeets" />
<cfset this.sessionManagement="YES" />
<cfset this.sessionTimeout = "#createTimespan(0, 0, 20, 0)#" />

</cfcomponent>
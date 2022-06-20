<!--- No Need to check for session because it sets to false anyway --->

<cfset session.user = "">
<cfset session.started = 'false'>
<cflocation url="../login.cfm" addToken = "no"> 

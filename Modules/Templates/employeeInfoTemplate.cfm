<cfparam name="attributes.firstName" default="Your">
<cfparam name="attributes.lastName" default="Mum">
<cfparam name="attributes.age" default=45>
<cfparam name="attributes.gender" default="Male">

<cfif #thistag.executionMode# EQ 'start'>
    <cfoutput>
        <p>Hello, #attributes.firstName& ' ' &attributes.lastName#</p>
        <p>You are a #attributes.age# year old #attributes.gender#</p>
    </cfoutput>
<cfelse>
</cfif>

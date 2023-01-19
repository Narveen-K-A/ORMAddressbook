<cfheader name="Content-disposition" value="attachment;filename=Addressbook.xls">
<cfcontent type="application/application/vnd.ms-excel">
<html>
    <head>
        <link rel="stylesheet" href="css/styles.css"> 
    </head>
    <body>
        <cfoutput>
            <cfset ORMReload()>
            <cfset datastore=EntityLoad("Contacts")>
            <table class="border1">
                <tr>
                    <th class="border1 padding10">NAME</th>
                    <th class="border1 padding10">EMAIL ID</th>
                    <th class="border1 padding10">PHONE NUMBER</th>
                </tr>
                <cfloop index="datastore" array="#datastore#">
                    <tr>
                        <td class="border1 padding10">#datastore.getTitle()# #datastore.getFirstname()# #datastore.getLastname()#</td>
                        <td class="border1 padding10">#datastore.getEmailid()#</td>
                        <td class="border1 padding10">#datastore.getPhonenumber()#</td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </body>
</html>
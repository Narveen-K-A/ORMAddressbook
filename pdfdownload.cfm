<cfdocument format="PDF" filename="Addressbook.pdf" overwrite="Yes">
    <html>
        <head>
            <link rel="stylesheet" href="css/styles.css"> 
        </head>
        <body>
            <cfoutput>
                <cfinvoke method="orminvoke" component="components/component" returnVariable="datastore">
                <h1>ADDRESS BOOK</h1><br>
                <table class="border1">
                    <tr>
                        <th class="border1 padding10">PHOTO</th>
                        <th class="border1 padding10">NAME</th>
                        <th class="border1 padding10">EMAIL ID</th>
                        <th class="border1 padding10">PHONE NUMBER</th>
                    </tr>
                    <cfloop index="datastore" array="#datastore#">
                        <tr>
                            <td class="border1 padding10">
                                <cfset local.photo=datastore.getPhoto()>
                                <img src="assets/duplicate/#local.photo#" class="tableicon">
                            </td>
                            <td class="border1 padding10">#datastore.getTitle()# #datastore.getFirstname()# #datastore.getLastname()#</td>
                            <td class="border1 padding10">#datastore.getEmailid()#</td>
                            <td class="border1 padding10">#datastore.getPhonenumber()#</td>
                        </tr>
                    </cfloop>
                </table>
            </cfoutput>
        </body>
    </html>
</cfdocument>
<cfheader name="Content-Disposition" value="attachment;filename=Addressbook.pdf">
<cfcontent type="application/octet-stream" file="#expandPath('.')#\Addressbook.pdf" deletefile="Yes">
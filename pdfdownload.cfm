<cfdocument format="PDF" filename="Addressbook.pdf" overwrite="Yes">
    <html>
        <head>
            <link rel="stylesheet" href="css/styles.css"> 
        </head>
        <body>
            <cfoutput>
                <cfinvoke component="components/component" method="selectData" returnVariable="datacollection">
                <table class="border1">
                    <tr>
                        <th class="border1 padding10">ICON</th>
                        <th class="border1 padding10">NAME</th>
                        <th class="border1 padding10">EMAIL ID</th>
                        <th class="border1 padding10">PHONE NUMBER</th>
                    </tr>
                    <cfloop query="datacollection">
                        <tr>
                            <td class="border1 padding10">
                                <cfset local.gender=datacollection.Gender>
                                <cfif gender eq "Female">
                                    <img src="assets/female.png" class="icon53">
                                <cfelse>
                                    <img src="assets/male.png" class="icon53">
                                </cfif>
                            </td>
                            <td class="border1 padding10">#datacollection.Title# #datacollection.Firstname# #datacollection.Lastname#</td>
                            <td class="border1 padding10">#datacollection.Emailid#</td>
                            <td class="border1 padding10">#datacollection.Phonenumber#</td>
                        </tr>
                    </cfloop>
                </table>
            </cfoutput>
        </body>
    </html>
</cfdocument>
<cfheader name="Content-Disposition" value="attachment;filename=Addressbook.pdf">
<cfcontent type="application/octet-stream" file="#expandPath('.')#\Addressbook.pdf" deletefile="Yes">
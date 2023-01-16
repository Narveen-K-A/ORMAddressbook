<cfheader name="Content-disposition" value="attachment;filename=Addressbook.xls">
<cfcontent type="application/application/vnd.ms-excel">
<html>
    <head>
        <link rel="stylesheet" href="css/styles.css"> 
    </head>
    <body>
        <cfoutput>
        <cfinvoke component="components/component" method="selectData" returnVariable="datacollection">
            <table class="border1">
                <tr>
                    <th class="border1 padding10">NAME</th>
                    <th class="border1 padding10">EMAIL ID</th>
                    <th class="border1 padding10">PHONE NUMBER</th>
                </tr>
                <cfloop query="datacollection">
                    <tr>
                        <td class="border1 padding10">#datacollection.Title# #datacollection.Firstname# #datacollection.Lastname#</td>
                        <td class="border1 padding10">#datacollection.Emailid#</td>
                        <td class="border1 padding10">#datacollection.Phonenumber#</td>
                    </tr>
                </cfloop>
            </table>
        </cfoutput>
    </body>
</html>
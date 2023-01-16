<div class="header displayflex bgcolor justify">
    <div class="headerLeft displayflex align marginleft">
        <div>
            <img class="icon20" src="assets/addressbooklogo.png" alt="Logo">
        </div>
        <div class="white">ADDRESS BOOK</div>
    </div>
    <div class="headerRight marginright displayflex align">
        <form method="post">
            <div class="cursorpointer white padding10 displayflex">
                <div>
                    <img class="icon15" src="assets/logouticon.png" alt="Logout Icon">
                </div>
                <div>
                    <input type="submit" value="LOGOUT" name="logout" class="white bgcolor outlinenone bordernone cursorpointer">
                </div>
            </div>
        </form>
        <cfif structKeyExists(form,'logout')>
            <cfinvoke method="logout" component="components/component">
        </cfif>
    </div>
</div>
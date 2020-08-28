*** Variables ***
${url}                  https://login.salesforce.com/
${browser}              chrome
${username}             jcsreddy@gmail.com    
${password}             sekhar123
${text_UserName}        id=username
${text_Password}        id=password
${clickbutton_Login}    name=Login
${click_ViewProfile}        //div[@class='profileTrigger branding-user-profile bgimg slds-avatar slds-avatar_profile-image-small circular forceEntityIcon']//span[@class='uiImage']    #xpath://span[@class='uiImage']/img[@title='User']
${click_SwitchToClassic}    xpath://a[text()='Switch to Salesforce Classic']
${click_SwitchToLightning}    xpath://a[@class='switch-to-lightning']
${click_AppLauncher}          xpath=//div[@class='slds-icon-waffle']
${text_SearchAppsAndItems}    //input[@placeholder='Search apps and items...']
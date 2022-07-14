*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}                          edge
${url}                              https://www.saucedemo.com/

${txtuserName}                      //input[@id='user-name']
${txtpass}                          //input[@id='password'] 
${btnLogin}                         //input[@id='login-button']

${btnAddCart1}                      (//button[@class='btn btn_primary btn_small btn_inventory'])[1]
${btnAddCart2}                      (//button[@class='btn btn_primary btn_small btn_inventory'])[2]
${btnAddCart3}                      (//button[@class='btn btn_primary btn_small btn_inventory'])[3]
${btnAddCart4}                      (//button[@class='btn btn_primary btn_small btn_inventory'])[4]
${btnAddCart5}                      (//button[@class='btn btn_primary btn_small btn_inventory'])[5]
${btnAddCart6}                      (//button[@class='btn btn_primary btn_small btn_inventory'])[6]

${txtProductTitle1}                 (//div[@class='inventory_item_name'])[1]
${txtProductTitle2}                 (//div[@class='inventory_item_name'])[2]
${txtProductTitle3}                 (//div[@class='inventory_item_name'])[3]
${txtProductTitle4}                 (//div[@class='inventory_item_name'])[4]
${txtProductTitle5}                 (//div[@class='inventory_item_name'])[5]
${txtProductTitle6}                 (//div[@class='inventory_item_name'])[6]

${btnRemoveCart1}                   (//button[@class='btn btn_secondary btn_small btn_inventory'])[1]
${btnRemoveCart2}                   (//button[@class='btn btn_secondary btn_small btn_inventory'])[2]
${btnRemoveCart3}                   (//button[@class='btn btn_secondary btn_small btn_inventory'])[3]
${btnRemoveCart4}                   (//button[@class='btn btn_secondary btn_small btn_inventory'])[4]
${btnRemoveCart5}                   (//button[@class='btn btn_secondary btn_small btn_inventory'])[5]
${btnRemoveCart6}                   (//button[@class='btn btn_secondary btn_small btn_inventory'])[6]

${btnRemoveCartDiplay1}             (//button[@class='btn btn_secondary btn_small cart_button'])[1]
${btnRemoveCartDiplay2}             (//button[@class='btn btn_secondary btn_small cart_button'])[2]
${btnRemoveCartDiplay3}             (//button[@class='btn btn_secondary btn_small cart_button'])[3]
${btnRemoveCartDiplay4}             (//button[@class='btn btn_secondary btn_small cart_button'])[4]
${btnRemoveCartDiplay5}             (//button[@class='btn btn_secondary btn_small cart_button'])[5]
${btnRemoveCartDiplay6}             (//button[@class='btn btn_secondary btn_small cart_button'])[6]

${btnCartLink}                      //a[@class='shopping_cart_link']
${btnCartBadge}                     //span[@class='shopping_cart_badge']
${txtTitle}                         //span[@class='title'] 

${btnCheckout}                      //button[@id='checkout']

${txtFirstName}                     //input[@id='first-name']
${txtLastName}                      //input[@id='last-name']
${txtPostalCode}                    //input[@id='postal-code']

${btnContinue}                      //input[@id='continue']

${btnOptions}                       //button[@id='react-burger-menu-btn']
${btnLogout}                        (//a[normalize-space()='Logout'])[1]
${btnResetAppState}                 (//a[normalize-space()='Reset App State'])[1]

${btnFinish}                        //button[@id='finish']

${txtError}                         //div[@class='error-message-container error']

${btnContinueShopping}              //button[@id='continue-shopping']

*** Keywords ***
I access the loginPage
    Open Browser                                ${url}                              ${browser}
    Maximize Browser Window
    Title Should Be                             Swag Labs

I complete the field User with "${user}" 
    Wait Until Element Is Enabled               ${txtuserName}          5           The field userName are not enabled     
    Input Text                                  ${txtuserName}                      ${user}

I complete the field Password with "${pass}"
    Wait Until Element Is Enabled               ${txtpass}              5           The field password are not enabled 
    Input Password                              ${txtpass}                          ${pass}

I click on LoginButton
    Wait Until Element Is Enabled               ${btnLogin}             5           The LoginButton are not enabled 
    Click Element                               ${btnLogin}
    Element Should Not Be Visible               ${txtError}                         Login Error

home page are displayed
    Wait Until Element Is Enabled               ${txtTitle}             5           The Title are not enabled
    Element Text Should Be                      ${txtTitle}                         PRODUCTS  

I add an product to cart
    Wait Until Element Is Enabled               ${btnAddCart1}          5           The AddCartButton are not enabled   
    Click Element                               ${btnAddCart1}
    Wait Until Element Is Visible               ${btnRemoveCart1}       5           Error on addCart1 action

number of product are displayed on cart icon "${number}"
    Wait Until Element Is Visible               ${btnCartBadge}         5           The CartBadgeButton are not visible
    Element Text Should Be                      ${btnCartBadge}         ${number}   The products count are not visible on cart badge

I click on cart icon
    Wait Until Element Is Enabled               ${btnCartLink}          5           The CartBadgeButton are not enabled
    Click Element                               ${btnCartLink}

page "${title}" are displayed
    Wait Until Element Is Visible               ${txtTitle}             5           The field title are not visible
    Element Text Should Be                      ${txtTitle}             ${title}    The page accessed is different than expected "${title}"

I click on CheckoutButton 
    Wait Until Element Is Enabled               ${btnCheckout}          5           The CheckoutButton are not enabled
    Click Element                               ${btnCheckout}

I complete the field First Name with "${firstName}"
    Wait Until Element Is Enabled               ${txtFirstName}         5           The field firstName are not enabled
    Input Text                                  ${txtFirstName}                     ${firstName}

I complete the field Last Name with "${lastName}"
    Wait Until Element Is Enabled               ${txtLastName}          5           The field lastName are not enabled
    Input Text                                  ${txtLastName}                      ${lastName}

I complete the field ZipPostalCode with "${postalCode}"
    Wait Until Element Is Enabled               ${txtPostalCode}        5           The field postalCode are not enabled
    Input Text                                  ${txtPostalCode}                    ${postalCode}

I click on ContinueButton
    Wait Until Element Is Enabled               ${btnContinue}          5           The ContinueButton are not enabled    
    Click Element                               ${btnContinue}
    Element Should Not Be Visible               ${txtError}                         Error filling in the address

page "${title}" are displayed with the information of the purchased product
    Wait Until Element Is Visible               ${txtTitle}             5           The field title are not visible
    Element Text Should Be                      ${txtTitle}             ${title}    The page accessed is different than expected

I click on the FinishButton
    Wait Until Element Is Enabled               ${btnFinish}            5                      The finishButton are not enabled
    Click Element                               ${btnFinish}
    Wait Until Element Is Visible               ${txtTitle}             5                      The field title are not visible
    Element Text Should Be                      ${txtTitle}             CHECKOUT: COMPLETE!    The page accessed is different than expected

I click on the LogoutButton
    Wait Until Element Is Enabled               ${btnOptions}           5           The OptionsButton are not enabled
    Click Element                               ${btnOptions}
    Wait Until Element Is Visible               ${btnResetAppState}     5           The resetStateButton are not enabled
    Click Element                               ${btnResetAppState}
    Click Element                               ${btnLogout}

logout is performed
    Wait Until Element Is Enabled               ${txtuserName}          5           The field userName are not enabled 
    Wait Until Element Is Enabled               ${txtpass}              5           The field password are not enabled 
    Wait Until Element Is Enabled               ${btnLogin}             5           The LoginButton are not enabled 

I add more products to cart
    Wait Until Element Is Enabled               ${btnAddCart1}          5           The AddCartButton are not enabled   
    Click Element                               ${btnAddCart1}                      
    Wait Until Element Is Visible               ${btnRemoveCart1}       5           Error on addCart1 action
    Click Element                               ${btnAddCart2}
    Wait Until Element Is Visible               ${btnRemoveCart2}       5           Error on addCart2 action
    Click Element                               ${btnAddCart3}
    Wait Until Element Is Visible               ${btnRemoveCart3}       5           Error on addCart3 action

I click on RemoveButton
    Wait Until Element Is Enabled               ${btnRemoveCart3}       5           The AddCartButton are not enabled
    Click Element                               ${btnRemoveCart3}
    Click Element                               ${btnRemoveCart2}
    Click Element                               ${btnRemoveCart1}
    

products are remove of the cart
    Element Should Be Enabled                   ${btnAddCart1}           
    Element Should Be Enabled                   ${btnAddCart2}                     
    Element Should Be Enabled                   ${btnAddCart1}  

I click on RemoveButton on cart display
    Click Element                               ${btnRemoveCartDiplay3}
    Click Element                               ${btnRemoveCartDiplay2}
    Click Element                               ${btnRemoveCartDiplay1}
    
products are remove of the cart on cart display 
    Element Should Not Be Visible               ${btnRemoveCartDiplay3}             The RemoveCartButton on cart display are visible
    Element Should Not Be Visible               ${btnRemoveCartDiplay2}             The RemoveCartButton on cart display are visible
    Element Should Not Be Visible               ${btnRemoveCartDiplay1}             The RemoveCartButton on cart display are visible

I click on ContinueShoppingButton
    Wait Until Element Is Enabled               ${btnContinueShopping}  5           The ContinueShoppingButton are not enabled
    Click Element                               ${btnContinueShopping}

Im back to the home page
    Wait Until Element Is Enabled               ${txtTitle}             5           The Title are not enabled
    Element Text Should Be                      ${txtTitle}                         PRODUCTS

an error message is displayed  
    Element Should Be Visible                   ${txtError}                         The error flow was performed but the error message was not displayed

I click on LoginButton with error
    Wait Until Element Is Enabled               ${btnLogin}             5           The LoginButton are not enabled 
    Click Element                               ${btnLogin}            

I click on ContinueButton with error
    Wait Until Element Is Enabled               ${btnContinue}          5           The ContinueButton are not enabled    
    Click Element                               ${btnContinue}
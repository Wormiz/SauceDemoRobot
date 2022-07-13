*** Settings ***
Resource        Purchase_Keywords.resource

*** Test Cases ***
TC01 - Make a purchase of an item with standard_user
    Given I access the loginPage
    When I complete the field User with "standard_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add an product to cart 
    Then number of product are displayed on cart icon "1"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on CheckoutButton 
    Then page "CHECKOUT: YOUR INFORMATION" are displayed
    When I complete the field First Name with "Jose"
    And I complete the field Last Name with "Maria"
    And I complete the field ZipPostalCode with 99999999
    And I click on ContinueButton
    Then page "CHECKOUT: OVERVIEW" are displayed with the information of the purchased product
    When I click on the FinishButton
    Then page "CHECKOUT: COMPLETE!" are displayed
    When I click on the LogoutButton
    Then logout is performed


TC02 - Make a purchase of more items with standard_user
    Given I access the loginPage
    When I complete the field User with "standard_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on CheckoutButton 
    Then page "CHECKOUT: YOUR INFORMATION" are displayed
    When I complete the field First Name with "Jose"
    And I complete the field Last Name with "Maria"
    And I complete the field ZipPostalCode with 99999999
    And I click on ContinueButton
    Then page "CHECKOUT: OVERVIEW" are displayed with the information of the purchased products
    When I click on the FinishButton
    Then page "CHECKOUT: COMPLETE!" are displayed
    When I click on the LogoutButton
    Then logout is performed

TC03 - Remove cart items from home page with standard_user
    Given I access the loginPage
    When I complete the field User with "standard_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on RemoveButton
    Then products are remove of the cart
    When I click on the LogoutButton
    Then logout is performed


TC04 - Remove cart items from cart page with standard_user
    Given I access the loginPage
    When I complete the field User with "standard_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on RemoveButton
    Then products are remove of the cart
    When I click on the LogoutButton
    Then logout is performed

TC05 - Make a purchase of an item with problem_user
    Given I access the loginPage
    When I complete the field User with "problem_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add an product to cart 
    Then number of product are displayed on cart icon "1"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on CheckoutButton 
    Then page "CHECKOUT: YOUR INFORMATION" are displayed
    When I complete the field First Name with "Jose"
    And I complete the field Last Name with "Maria"
    And I complete the field ZipPostalCode with 99999999
    And I click on ContinueButton
    Then page "CHECKOUT: OVERVIEW" are displayed with the information of the purchased product
    When I click on the FinishButton
    Then page "CHECKOUT: COMPLETE!" are displayed
    When I click on the LogoutButton
    Then logout is performed

TC06 - Make a purchase of more items with problem_user
    Given I access the loginPage
    When I complete the field User with "problem_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on CheckoutButton 
    Then page "CHECKOUT: YOUR INFORMATION" are displayed
    When I complete the field First Name with "Jose"
    And I complete the field Last Name with "Maria"
    And I complete the field ZipPostalCode with 99999999
    And I click on ContinueButton
    Then page "CHECKOUT: OVERVIEW" are displayed with the information of the purchased products
    When I click on the FinishButton
    Then page "CHECKOUT: COMPLETE!" are displayed
    When I click on the LogoutButton
    Then logout is performed

TC07 - Remove cart items from home page with problem_user
    Given I access the loginPage
    When I complete the field User with "problem_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on RemoveButton
    Then products are remove of the cart
    When I click on the LogoutButton
    Then logout is performed

TC08 - Remove cart items from cart page with problem_user
    Given I access the loginPage
    When I complete the field User with "problem_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on RemoveButton
    Then products are remove of the cart
    When I click on the LogoutButton
    Then logout is performed

TC09 - Continue purchase with standard_user
    Given I access the loginPage
    When I complete the field User with "standard_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on ContinueShoppingButton
    Then Im back to the home page
    When I click on the LogoutButton
    Then logout is performed

TC10 - Continue purchase with problem_user
    Given I access the loginPage
    When I complete the field User with "problem_user" 
    And I complete the field Password with "secret_sauce"
    And I click on LoginButton
    Then home page are displayed
    When I add more products to cart 
    Then number of product are displayed on cart icon "3"
    When I click on cart icon
    Then page "Your Cart" are displayed
    When I click on ContinueShoppingButton
    Then Im back to the home page
    When I click on the LogoutButton
    Then logout is performed

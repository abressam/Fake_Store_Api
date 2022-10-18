*** Settings ***
Documentation       Keywords and variables for generate fake data
Library             FakerLibrary

*** Keywords ***
Create Valid User Data
    ${email}         FakerLibrary.Email
    ${username}      FakerLibrary.User Name
    ${password}      FakerLibrary.Password
    ${first_name}    FakerLibrary.Name
    ${last_name}     FakerLibrary.Last Name
    ${city}          FakerLibrary.City
    ${street}        FakerLibrary.Street Address
    ${number}        FakerLibrary.RandomInt
    ${zipcode}       FakerLibrary.Zipcode
    ${phone}         FakerLibrary.Phone Number
    ${name}          Create Dictionary    firstname=${first_name}    lastname=${last_name}
    ${geolocation}   Create Dictionary    lat=-30.2015    long=74.3698 
    ${address}        Create Dictionary    city=${city}    street=${street}    number=${number}    zipcode=${zipcode}    geolocation=${geolocation}
    ${payload}       Create Dictionary    email=${email}    username=${username}    password=${password}    name=${name}    address=${address}    phone=${phone}
    Set Global Variable    ${payload}
    Log To Console        \n\nDados Criados: ${payload}


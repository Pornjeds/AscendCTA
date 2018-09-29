*** Settings ***
Library 	Selenium2Library

*** Variables ***
# ${HOMEPAGE} 	http://www.google.com
${HOMEPAGE}		http://ctaworkshop.000webhostapp.com/chapter/xpath/xpath2.html
${BROWSER} 	chrome
${XPATH}	//div[@name='area2']//input[@type='text']
${TEXT}		HelloPornjeds



*** Test Cases ***
Go To homepage
 	Open Browser 	${HOMEPAGE} 	${BROWSER}
	Input Text		${XPATH}		${TEXT}

*** Keywords ***
My Custom Click Keywords
	Wait Until Page Contains Element	Locator	Timeout
	Wait Until Element Is Visible	Locator
	Click Element		Locator


*** Settings ***
Library 	Selenium2Library

*** Variables ***
${HOMEPAGE}		https://ctaworkshop.000webhostapp.com/
${BROWSER}		chrome
${FIRSTPAGE_XPATH_INPUT}	//*[@id="username"]
${TEAMNAME}		A_LE
${FIRSTPAGE_BTN}	//*[@id="nextto2"]/span

${SECONDPAGE_XPATH}		//*[@id="content"]/span
${SECONDPAGE_BTN}		//*[@id="nextto3"]

${THIRDPAGE_XPATH}		//*[@id="content"]/select
${THIRDPAGE_VALUE}		ascendb2b
${THIRDPAGE_BTN}		//*[@id="nextto4"]

${FORTHPAGE_XPATH}		//*[@id="content"]/div
${FORTHPAGE_BTN}		//*[@id="nextto5"]

${FIFTHPAGE_XPATH}		//*[@id="content"]/form/input[1]
${FIFTHPAGE_VALUE}		i want to go to next stage
${FIFTHPAGE_BTN}		//*[@id="nextto6"]

${SIXPAGE_TEXT}			//*[@id="content"]/p
${SIXTHPAGE_BTN}		//*[@id="getprice"]

*** Test Cases ***
Go To homepage
 	Open Browser 	${HOMEPAGE} 	${BROWSER}
	Set Selenium Speed		0.01s
	Wait Until Page Contains Element	${FIRSTPAGE_BTN}	5
	Input Text		${FIRSTPAGE_XPATH_INPUT}		${TEAMNAME}
	Click Element	${FIRSTPAGE_BTN}
	Wait Until Page Contains Element	${SECONDPAGE_XPATH}	5
	${RANDOM_TEXT}=		Get Text	${SECONDPAGE_XPATH}
	Log To Console	${RANDOM_TEXT}
	Click Element	${SECONDPAGE_BTN}
	Input Text Into Alert	${RANDOM_TEXT}	ACCEPT
	Wait Until Page Contains Element	${THIRDPAGE_XPATH}	5
	Select From List By Value	${THIRDPAGE_XPATH}	${THIRDPAGE_VALUE}
	Click Element	${THIRDPAGE_BTN}
	Wait Until Page Contains Element	${FORTHPAGE_BTN}	5
	Wait Until Element Is Visible	${FORTHPAGE_BTN}
	Wait Until Page Contains	30.		60
	Click Element	${FORTHPAGE_BTN}
	Wait Until Page Contains Element	${FIFTHPAGE_XPATH}	5
	Select Radio Button		next	${FIFTHPAGE_VALUE}
	Click Element	${FIFTHPAGE_BTN}
	Wait Until Page Contains Element	${SIXTHPAGE_BTN}	5
	${FINAL_TEXT}=	Get Text	${SIXPAGE_TEXT}
	Click Element	${SIXTHPAGE_BTN}
	Log To Console	${FINAL_TEXT}
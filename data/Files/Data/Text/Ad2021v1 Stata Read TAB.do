/* Reads a tab-separated text file into Stata, assigns value labels. */
/* NOTE: Before running, make sure all spaces are removed from the file, 
      otherwise Stata will interpret the variable as string, and you 
		 won't be able to assign value labels */
/* The following line should contain the complete path and name of your raw data file */ 
local dat_name "C:\Temp\Ad2021v1.tab"

/* The following line should contain the path to your output '.dta' file */
local dta_name "C:\Temp\Ad2021v1.dta"

#delimit ;
clear;
. import delimited `dat_name', 
	delimiter("\t",asstring) 
	bindquote(nobind) 
	varnames(1) 
	case(lower)
	stripquote(yes) 
	encoding("utf-8")
	stringcols(3 6);	   

/* Variable Labels: */
label variable fy          "Fiscal Year of the Adoption";
label variable state       "State FIPS Code";
label variable st          "State Abbreviation";
label variable repdatyr    "Report End Date, Year";
label variable repdatmo    "Report End Date, Month";
label variable recnum      "Record Number";
label variable agnyinvl    "State Agency Involvement";
label variable dob         "Child Date of Birth";
label variable sex         "Child Sex";
label variable amiakn      "Child Amer Indian/AK Native";
label variable asian       "Child Asian";
label variable blkafram    "Child Black/African Amer";
label variable hawaiipi    "Child Hawaiian/Pacif Islander";
label variable white       "Child White";
label variable untodetm    "Unable To Determine Child Race";
label variable hisorgin    "Child Hispanic Origin";
label variable agyspnds    "Child Special Needs";
label variable basspnds    "Special Needs Basis";
label variable mr          "Mental Retardation";
label variable vishear     "Visually Or Hearing Impaired";
label variable phydis      "Physically Disabled";
label variable dsmiii      "Emotionally Disturbed";
label variable othrmed     "Other Diagnosed Condition";
label variable dobyrmom    "Biological Mother Year Of Birth";
label variable dobyrdad    "Biological Father Year Of Birth";
label variable momarrd     "Biological Mother Married";
label variable tprmomdate  "Birth Mother TPR Date";
label variable tprdaddate  "Birth Father TPR Date";
label variable adpfamst    "Adoptive Family Structure";
label variable admomyr     "Adoptive Mother Year Of Birth";
label variable adoptdate   "Date Adoption was Finalized";
label variable addadyr     "Adoptive Father Year Of Birth";
label variable amiaknm     "Adoptive Mom Amer Indian/AK Native";
label variable asianm      "Adoptive Mom Asian";
label variable blaframm    "Adoptive Mom Black/African Amer";
label variable hawiipim    "Adoptive Mom Hawaiian/Pacif Island";
label variable whitem      "Adoptive Mom White";
label variable untodemm    "Adoptive Mom Unable To Determine Race";
label variable homom       "Adoptive Mother Hispanic Origin";
label variable amiaknd     "Adoptive Dad Amer Indian/AK Native";
label variable asiand      "Adoptive Dad Asian";
label variable blaframd    "Adoptive Dad Black/African Amer";
label variable hawiipid    "Adoptive Dad Hawaiian/Pacif Island";
label variable whited      "Adoptive Dad White";
label variable untodemd    "Adoptive Dad Unable To Determine Race";
label variable hodad       "Adoptive Father Hispanic Origin";
label variable stparent    "Pre-Adoptive Relation: Step Parent";
label variable otherel     "Pre-Adoptive Relation: Other Relative";
label variable fosparch    "Pre-Adoptive Relation: Foster Parent";
label variable nonrel      "Pre-Adoptive Relation: Non-Relative";
label variable chpldfrm    "Location Of Custodial Agency/Individual";
label variable chpldby     "Agency/Individual Placing Child";
label variable monsubsy    "Receiving Monthly Subsidy";
label variable monamnt     "Monthly Amount Of Subsidy";
label variable iveaa       "IV-E Assistance Claimed";
label variable ageatadopt  "Age on Date of Adoption";
label variable childrace   "Race of Child as One Variable";
label variable momrace     "Race of Adoptive Mother as One Variable";
label variable dadrace     "Race of Adoptive Father as One Variable";
label variable transracial "Transracial Adoption";

/* Value Labels */
label define AgeAtAdopt
    99  "Missing or Out of Range";
label define YesNo
    0  "No"
    1  "Yes";
label define ADPFAMST
    0  "Not applicable"
    1  "Married couple"
    2  "Unmarried couple"
    3  "Single female"
    4  "Single male"
    5  "Unable to determine";	
label define YesNoUnk
    0  "Not applicable"
    1  "Yes"
    2  "No"
    3  "Unable to determine";
label define BASSPNDS
    0  "Not applicable"
    1  "Racial/original background"
    2  "Age"
    3  "Sibling group member"
    4  "Medical condition or disabilities"
    5  "Other";
label define Race
    1  "White"
    2  "Black"
    3  "AmInd"
    4  "Asian"
    5  "HawaiiPI"
    6  "More than One Race"
    7  "Hispanic Origin"
    99  "Race Unknown";
label define CHPLDBY
    1  "Public agency"
    2  "Private agency"
    3  "Tribal agency"
    4  "Independent person"
    5  "Birth parent";
label define CHPLDFRM
    1  "Within state"
    2  "Another state"
    3  "Another country";
label define Sex
    1  "Male"
    2  "Female";
label define Transracial
    0  "Not Transracial"
    1  "Child not White; Parents White"
    2  "Child White; Parents not White"
    3  "Other Transracial"
    9  "Insufficient Race Info";
label define State
    1  "Alabama"
    2  "Alaska"
    4  "Arizona"
    5  "Arkansas"
    6  "California"
    8  "Colorado"
    9  "Connecticut"
    10  "Delaware"
    11  "District of Columbia"
    12  "Florida"
    13  "Georgia"
    15  "Hawaii"
    16  "Idaho"
    17  "Illinois"
    18  "Indiana"
    19  "Iowa"
    20  "Kansas"
    21  "Kentucky"
    22  "Louisiana"
    23  "Maine"
    24  "Maryland"
    25  "Massachusetts"
    26  "Michigan"
    27  "Minnesota"
    28  "Mississippi"
    29  "Missouri"
    30  "Montana"
    31  "Nebraska"
    32  "Nevada"
    33  "New Hampshire"
    34  "New Jersey"
    35  "New Mexico"
    36  "New York"
    37  "North Carolina"
    38  "North Dakota"
    39  "Ohio"
    40  "Oklahoma"
    41  "Oregon"
    42  "Pennsylvania"
    44  "Rhode Island"
    45  "South Carolina"
    46  "South Dakota"
    47  "Tennessee"
    48  "Texas"
    49  "Utah"
    50  "Vermont"
    51  "Virginia"
    53  "Washington"
    54  "West Virginia"
    55  "Wisconsin"
    56  "Wyoming"
    72  "Puerto Rico";

#delimit cr

label values adpfamst    ADPFAMST
label values ageatadopt  AgeAtAdopt
label values agnyinvl    YesNo
label values agyspnds    YesNoUnk
label values amiakn      YesNo
label values amiaknd     YesNo
label values amiaknm     YesNo
label values asian       YesNo
label values asiand      YesNo
label values asianm      YesNo
label values basspnds    BASSPNDS
label values blaframd    YesNo
label values blaframm    YesNo
label values blkafram    YesNo
label values childrace   Race
label values chpldby     CHPLDBY
label values chpldfrm    CHPLDFRM
label values dadrace     Race
label values dsmiii      YesNo
label values fosparch    YesNo
label values hawaiipi    YesNo
label values hawiipid    YesNo
label values hawiipim    YesNo
label values hisorgin    YesNoUnk
label values hodad       YesNoUnk
label values homom       YesNoUnk
label values iveaa       YesNoUnk
label values momarrd     YesNoUnk
label values momrace     Race
label values monsubsy    YesNoUnk
label values mr          YesNo
label values nonrel      YesNo
label values otherel     YesNo
label values othrmed     YesNo
label values phydis      YesNo
label values sex         Sex
label values state       State
label values stparent    YesNo
label values transracial Transracial
label values untodemd    YesNo
label values untodemm    YesNo
label values untodetm    YesNo
label values vishear     YesNo
label values white       YesNo
label values whited      YesNo
label values whitem      YesNo

save `dta_name', replace

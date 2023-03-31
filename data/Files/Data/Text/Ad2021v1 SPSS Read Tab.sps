* Encoding: UTF-8.
* The first FILE HANDLE line should contain the complete path and name of your raw data file. 
* Edit the line if it does not match the actual location of the raw data file.
* The second FILE HANDLE line should contain the complete path and name of the SPSS data file created by this syntax.
* Edit the line if it does not match the desired location of the SPSS data file you are creating.

FILE HANDLE DATA / NAME= 'C:\Temp\Ad2021v1.tab'.
FILE HANDLE OUTPUT / NAME= 'C:\Temp\Ad2021v1.sav'.

GET DATA  
    /TYPE=TXT
    /FILE=DATA
    /ENCODING='UTF8'
    /DELCASE=LINE
    /DELIMITERS="\t"
    /ARRANGEMENT=DELIMITED
    /FIRSTCASE=2
    /IMPORTCASE=ALL
    /VARIABLES=
        FY          F4
        STATE       F2
        St          A2
        REPDATYR    F4
        REPDATMO    F2
        RECNUM      A12
        AGNYINVL    F1
        DOB         SDate10
        SEX         F1
        AMIAKN      F1
        ASIAN       F1
        BLKAFRAM    F1
        HAWAIIPI    F1
        WHITE       F1
        UNTODETM    F1
        HISORGIN    F1
        AGYSPNDS    F1
        BASSPNDS    F1
        MR          F1
        VISHEAR     F1
        PHYDIS      F1
        DSMIII      F1
        OTHRMED     F1
        DOBYRMOM    F4
        DOBYRDAD    F4
        MOMARRD     F1
        TPRMomDate  SDate10
        TPRDadDate  SDate10
        ADPFAMST    F1
        ADMOMYR     F4
        AdoptDate   SDate10
        ADDADYR     F4
        AMIAKNM     F1
        ASIANM      F1
        BLAFRAMM    F1
        HAWIIPIM    F1
        WHITEM      F1
        UNTODEMM    F1
        HOMOM       F1
        AMIAKND     F1
        ASIAND      F1
        BLAFRAMD    F1
        HAWIIPID    F1
        WHITED      F1
        UNTODEMD    F1
        HODAD       F1
        STPARENT    F1
        OTHEREL     F1
        FOSPARCH    F1
        NONREL      F1
        CHPLDFRM    F1
        CHPLDBY     F1
        MONSUBSY    F1
        MONAMNT     F8
        IVEAA       F1
        AgeAtAdopt  F2
        ChildRace   F2
        MomRace     F2
        DadRace     F2
        Transracial F1
        .
CACHE.
EXECUTE.

VARIABLE LABELS
   FY          "Federal Fiscal Year of the Adoption"
   STATE       "State FIPS CODE"
   St          "State Abbreviation"
   REPDATYR    "Report End Date, Year"
   REPDATMO    "Report End Date, Month"
   RECNUM      "Record Number"
   AGNYINVL    "State Agency Involvement"
   DOB         "Child Date of Birth"
   SEX         "Child Sex"
   AMIAKN      "Child Amer Indian/AK Native"
   ASIAN       "Child Asian"
   BLKAFRAM    "Child Black/African Amer"
   HAWAIIPI    "Child Hawaiian/Pacif Islander"
   WHITE       "Child White"
   UNTODETM    "Unable To Determine Child Race"
   HISORGIN    "Child Hispanic Origin"
   AGYSPNDS    "Child Special Needs"
   BASSPNDS    "Special Needs Basis"
   MR          "Mental Retardation"
   VISHEAR     "Visually Or Hearing Impaired"
   PHYDIS      "Physically Disabled"
   DSMIII      "Emotionally Disturbed"
   OTHRMED     "Other Diagnosed Condition"
   DOBYRMOM    "Biological Mother Year Of Birth"
   DOBYRDAD    "Biological Father Year Of Birth"
   MOMARRD     "Biological Mother Married"
   TPRMomDate  "Birth Mother TPR Date"
   TPRDadDate  "Birth Father TPR Date"
   ADPFAMST    "Adoptive Family Structure"
   ADMOMYR     "Adoptive Mother Year Of Birth"
   AdoptDate   "Date Adoption was Finalized"
   ADDADYR     "Adoptive Father Year Of Birth"
   AMIAKNM     "Adoptive Mom Amer Indian/AK Native"
   ASIANM      "Adoptive Mom Asian"
   BLAFRAMM    "Adoptive Mom Black/African Amer"
   HAWIIPIM    "Adoptive Mom Hawaiian/Pacif Island"
   WHITEM      "Adoptive Mom White"
   UNTODEMM    "Adoptive Mom Unable To Determine Race"
   HOMOM       "Adoptive Mother Hispanic Origin"
   AMIAKND     "Adoptive Dad Amer Indian/AK Native"
   ASIAND      "Adoptive Dad Asian"
   BLAFRAMD    "Adoptive Dad Black/African Amer"
   HAWIIPID    "Adoptive Dad Hawaiian/Pacif Island"
   WHITED      "Adoptive Dad White"
   UNTODEMD    "Adoptive Dad Unable To Determine Race"
   HODAD       "Adoptive Father Hispanic Origin"
   STPARENT    "Pre-Adoptive Relation: Step Parent"
   OTHEREL     "Pre-Adoptive Relation: Other Relative"
   FOSPARCH    "Pre-Adoptive Relation: Foster Parent"
   NONREL      "Pre-Adoptive Relation: Non-Relative"
   CHPLDFRM    "Location Of Custodial Agency/Individual"
   CHPLDBY     "Agency/Individual Placing Child"
   MONSUBSY    "Receiving Monthly Subsidy"
   MONAMNT     "Monthly Amount Of Subsidy"
   IVEAA       "IV-E Assistance Claimed"
   AgeAtAdopt  "Age on Date of Adoption"
   ChildRace   "Race of Child as One Variable"
   MomRace     "Race of Adoptive Mother as One Variable"
   DadRace     "Race of Adoptive Father as One Variable"
   Transracial "Transracial Adoption"
   .

VALUE LABELS
ADPFAMST
           0    "Not applicable"
           1    "Married couple"
           2    "Unmarried couple"
           3    "Single female"
           4    "Single male"
           5    "Unable to determine"/
AgeAtAdopt
          99   "Missing or Out of Range"/
AGNYINVL
           1    "Yes"
           2    "No"/
AGYSPNDS
           0    "Not applicable"
           1    "Yes"
           2    "No"
           3    "Unable to determine"/
AMIAKN
           0    "No"
           1    "Yes"/
AMIAKND
           0    "No"
           1    "Yes"/
AMIAKNM
           0    "No"
           1    "Yes"/
ASIAN
           0    "No"
           1    "Yes"/
ASIAND
           0    "No"
           1    "Yes"/
ASIANM
           0    "No"
           1    "Yes"/
BASSPNDS
           0    "Not applicable"
           1    "Racial/original background"
           2    "Age"
           3    "Sibling group member"
           4    "Medical condition or disabilities"
           5    "Other"/
BLAFRAMD
           0    "No"
           1    "Yes"/
BLAFRAMM
           0    "No"
           1    "Yes"/
BLKAFRAM
           0    "No"
           1    "Yes"/
ChildRace
           1    "White"
           2    "Black"
           3    "AmInd"
           4    "Asian"
           5    "HawaiiPI"
           6    "More than One Race"
           7    "Hispanic Origin"
		  99    "Race Missing"/
CHPLDBY
           1    "Public agency"
           2    "Private agency"
           3    "Tribal agency"
           4    "Independent person"
           5    "Birth parent"/
CHPLDFRM
           1    "Within state"
           2    "Another state"
           3    "Another country"/
DadRace
           1    "White"
           2    "Black"
           3    "AmInd"
           4    "Asian"
           5    "HawaiiPI"
           6    "More than One Race"
           7    "Hispanic Origin"
		  99    "Race Missing"/
DSMIII
           0    "No"
           1    "Yes"/
FOSPARCH
           0    "No"
           1    "Yes"/
HAWAIIPI
           0    "No"
           1    "Yes"/
HAWIIPID
           0    "No"
           1    "Yes"/
HAWIIPIM
           0    "No"
           1    "Yes"/
HISORGIN
           0    "Not applicable"
           1    "Yes"
           2    "No"
           3    "Unable to determine"/
HODAD
           0    "Not applicable"
           1    "Yes"
           2    "No"
           3    "Unable to determine"/
HOMOM
           0    "Not applicable"
           1    "Yes"
           2    "No"
           3    "Unable to determine"/
IVEAA
           0    "Not applicable"
           1    "Yes"
           2    "No"
           3    "Unable to determine"/
MOMARRD
           0    "Not applicable"
           1    "Yes"
           2    "No"
           3    "Unable to determine"/
MomRace
           1    "White"
           2    "Black"
           3    "AmInd"
           4    "Asian"
           5    "HawaiiPI"
           6    "More than One Race"
           7    "Hispanic Origin"
		  99    "Race Missing"/
MONSUBSY
           0    "Not applicable"
           1    "Yes"
           2    "No"
           3    "Unable to determine"/
MR
           0    "No"
           1    "Yes"/
NONREL
           0    "No"
           1    "Yes"/
OTHEREL
           0    "No"
           1    "Yes"/
OTHRMED
           0    "No"
           1    "Yes"/
PHYDIS
           0    "No"
           1    "Yes"/
Sex
           1    "Male"
           2    "Female"/
State
           1    "Alabama"
           2    "Alaska"
           4    "Arizona"
           5    "Arkansas"
           6    "California"
           8    "Colorado"
           9    "Connecticut"
           10   "Delaware"
           11   "District of Columbia"
           12   "Florida"
           13   "Georgia"
           15   "Hawaii"
           16   "Idaho"
           17   "Illinois"
           18   "Indiana"
           19   "Iowa"
           20   "Kansas"
           21   "Kentucky"
           22   "Louisiana"
           23   "Maine"
           24   "Maryland"
           25   "Massachusetts"
           26   "Michigan"
           27   "Minnesota"
           28   "Mississippi"
           29   "Missouri"
           30   "Montana"
           31   "Nebraska"
           32   "Nevada"
           33   "New Hampshire"
           34   "New Jersey"
           35   "New Mexico"
           36   "New York"
           37   "North Carolina"
           38   "North Dakota"
           39   "Ohio"
           40   "Oklahoma"
           41   "Oregon"
           42   "Pennsylvania"
           44   "Rhode Island"
           45   "South Carolina"
           46   "South Dakota"
           47   "Tennessee"
           48   "Texas"
           49   "Utah"
           50   "Vermont"
           51   "Virginia"
           53   "Washington"
           54   "West Virginia"
           55   "Wisconsin"
           56   "Wyoming"
           72   "Puerto Rico"/
STPARENT
           0    "No"
           1    "Yes"/
Transracial
           0    "Not Transracial"
           1    "Child not White; Parents White"
           2    "Child White; Parents not White"
           3    "Other Transracial"
           9    "Insufficient Race Info"/
UNTODEMD
           0    "No"
           1    "Yes"/
UNTODEMM
           0    "No"
           1    "Yes"/
UNTODETM
           0    "No"
           1    "Yes"/
VISHEAR
           0    "No"
           1    "Yes"/
WHITE
           0    "No"
           1    "Yes"/
WHITED
           0    "No"
           1    "Yes"/
WHITEM
           0    "No"
           1    "Yes"
  .

SAVE OUTFILE = OUTPUT.

FREQUENCIES    VARIABLES    = Transracial.
 * EXECUTE .

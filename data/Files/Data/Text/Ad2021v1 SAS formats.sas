/* RUN THE SAS IMPORT PROGRAM BEFORE RUNNING THIS PROGRAM */

/* This file creates formats for the AFCARS Adoption File (Ad2021v1.sas7bdat). 
Running this file is NOT necessary unless you want to use the SAS formats. */

/* The following line should contain the directory in which your SAS file 
is stored */
libname library 'C:\Temp\' ;

/* The following line contains the name (without the extension) for your SAS 
dataset without the formats */
%LET noformat = Ad2021v1;

/* The following line contains the name (without the extension) for the SAS 
dataset that will be created that contains the formats */
%LET formats = Ad21v1F ;

proc format library = library ;
value YesNo
    0 =  "No"
    1 =  "Yes";
value YesNoUnk
    0 =  "Not applicable"
    1 =  "Yes"
    2 =  "No"
    3 =  "Unable to determine";
value ADPFAMST
    0 =  "Not applicable"
    1 =  "Married couple"
    2 =  "Unmarried couple"
    3 =  "Single female"
    4 =  "Single male"
    5 =  "Unable to determine";
value AgeAtAdopt
    99 =  "Missing or Out of Range";
value AGYSPNDS
    0 =  "Not applicable"
    1 =  "Yes"
    2 =  "No"
    3 =  "Unable to determine";
value BASSPNDS
    0 =  "Not applicable"
    1 =  "Racial/original background"
    2 =  "Age"
    3 =  "Sibling group member"
    4 =  "Medical condition or disabilities"
    5 =  "Other";
value CHPLDBY
    1 =  "Public agency"
    2 =  "Private agency"
    3 =  "Tribal agency"
    4 =  "Independent person"
    5 =  "Birth parent";
value CHPLDFRM
    1 =  "Within state"
    2 =  "Another state"
    3 =  "Another country";
value Sex
    1 =  "Male"
    2 =  "Female";
value Transracial
    0 =  "Not Transracial"
    1 =  "Child not White; Parents White"
    2 =  "Child White; Parents not White"
    3 =  "Other Transracial"
    9 =  "Insufficient Race Info";
value Race
    1 =  "White"
    2 =  "Black"
    3 =  "AmInd"
    4 =  "Asian"
    5 =  "HawaiiPI"
    6 =  "More than One Race"
    7 =  "Hispanic Origin"
    99 =  "Race Unknown";
value State
    1 =  "Alabama"
    2 =  "Alaska"
    4 =  "Arizona"
    5 =  "Arkansas"
    6 =  "California"
    8 =  "Colorado"
    9 =  "Connecticut"
    10 =  "Delaware"
    11 =  "District of Columbia"
    12 =  "Florida"
    13 =  "Georgia"
    15 =  "Hawaii"
    16 =  "Idaho"
    17 =  "Illinois"
    18 =  "Indiana"
    19 =  "Iowa"
    20 =  "Kansas"
    21 =  "Kentucky"
    22 =  "Louisiana"
    23 =  "Maine"
    24 =  "Maryland"
    25 =  "Massachusetts"
    26 =  "Michigan"
    27 =  "Minnesota"
    28 =  "Mississippi"
    29 =  "Missouri"
    30 =  "Montana"
    31 =  "Nebraska"
    32 =  "Nevada"
    33 =  "New Hampshire"
    34 =  "New Jersey"
    35 =  "New Mexico"
    36 =  "New York"
    37 =  "North Carolina"
    38 =  "North Dakota"
    39 =  "Ohio"
    40 =  "Oklahoma"
    41 =  "Oregon"
    42 =  "Pennsylvania"
    44 =  "Rhode Island"
    45 =  "South Carolina"
    46 =  "South Dakota"
    47 =  "Tennessee"
    48 =  "Texas"
    49 =  "Utah"
    50 =  "Vermont"
    51 =  "Virginia"
    53 =  "Washington"
    54 =  "West Virginia"
    55 =  "Wisconsin"
    56 =  "Wyoming"
    72 =  "Puerto Rico";

DATA library.&formats; 
   SET library.&noformat;
   FORMAT
    ADPFAMST    ADPFAMST.
    AgeAtAdopt  AgeAtAdopt.
    AGNYINVL    YesNo.
    AGYSPNDS    AGYSPNDS.
    AMIAKN      YesNo.
    AMIAKND     YesNo.
    AMIAKNM     YesNo.
    ASIAN       YesNo.
    ASIAND      YesNo.
    ASIANM      YesNo.
    BASSPNDS    BASSPNDS.
    BLAFRAMD    YesNo.
    BLAFRAMM    YesNo.
    BLKAFRAM    YesNo.
    ChildRace   Race.
    CHPLDBY     CHPLDBY.
    CHPLDFRM    CHPLDFRM.
    DadRace     Race.
    DSMIII      YesNo.
    FOSPARCH    YesNo.
    HAWAIIPI    YesNo.
    HAWIIPID    YesNo.
    HAWIIPIM    YesNo.
    HISORGIN    YesNoUnk.
    HODAD       YesNoUnk.
    HOMOM       YesNoUnk.
    IVEAA       YesNoUnk.
    MOMARRD     YesNoUnk.
    MomRace     Race.
    MONSUBSY    YesNoUnk.
    MR          YesNo.
    NONREL      YesNo.
    OTHEREL     YesNo.
    OTHRMED     YesNo.
    PHYDIS      YesNo.
    SEX         Sex.
    STATE       State.
    STPARENT    YesNo.
    Transracial Transracial.
    UNTODEMD    YesNo.
    UNTODEMM    YesNo.
    UNTODETM    YesNo.
    VISHEAR     YesNo.
    WHITE       YesNo.
    WHITED      YesNo.
    WHITEM      YesNo.
;

RUN;

/* The following line should contain the complete path and name of your raw data file */
FILENAME datafile 'C:\Temp\Ad2021v1.tab';

/* The following line should contain the directory in which you wish your SAS file to be stored */
libname library 'C:\temp\' ;

/* The following line contains the name (without the extension) for your SAS dataset */
%LET dataset = Ad2021v1 ;

DATA library.&dataset ;
INFILE datafile DELIMITER='09'x FIRSTOBS=2 DSD MISSOVER LRECL=32767 TERMSTR=CRLF ENCODING='wlatin1';
INPUT
	FY      
    STATE       
    St          :$2.
    REPDATYR    
    REPDATMO    
    RECNUM      :$12.
    AGNYINVL    
    DOB         :yymmdd10.
    SEX         
    AMIAKN      
    ASIAN       
    BLKAFRAM    
    HAWAIIPI    
    WHITE       
    UNTODETM    
    HISORGIN    
    AGYSPNDS    
    BASSPNDS    
    MR          
    VISHEAR     
    PHYDIS      
    DSMIII      
    OTHRMED     
    DOBYRMOM    
    DOBYRDAD    
    MOMARRD     
    TPRMomDate  :yymmdd10.
    TPRDadDate  :yymmdd10.
    ADPFAMST    
    ADMOMYR     
    AdoptDate   :yymmdd10.
    ADDADYR     
    AMIAKNM     
    ASIANM      
    BLAFRAMM    
    HAWIIPIM    
    WHITEM      
    UNTODEMM    
    HOMOM       
    AMIAKND     
    ASIAND      
    BLAFRAMD    
    HAWIIPID    
    WHITED      
    UNTODEMD    
    HODAD       
    STPARENT    
    OTHEREL     
    FOSPARCH    
    NONREL      
    CHPLDFRM    
    CHPLDBY     
    MONSUBSY    
    MONAMNT     
    IVEAA       
    AgeAtAdopt  
    ChildRace   
    MomRace     
    DadRace     
    Transracial 
    ;

LABEL
    FY          = Federal Fiscal Year of the Adoption
    STATE       = State FIPS CODE
    St          = State Abbreviation
    REPDATYR    = Report End Date, Year
    REPDATMO    = Report End Date, Month
    RECNUM      = Record Number
    AGNYINVL    = State Agency Involvement
    DOB         = Child Date of Birth
    SEX         = Child Sex
    AMIAKN      = Child Amer Indian\AK Native
    ASIAN       = Child Asian
    BLKAFRAM    = Child Black\African Amer
    HAWAIIPI    = Child Hawaiian\Pacif Islander
    WHITE       = Child White
    UNTODETM    = Unable To Determine Child Race
    HISORGIN    = Child Hispanic Origin
    AGYSPNDS    = Child Special Needs
    BASSPNDS    = Special Needs Basis
    MR          = Mental Retardation
    VISHEAR     = Visually Or Hearing Impaired
    PHYDIS      = Physically Disabled
    DSMIII      = Emotionally Disturbed
    OTHRMED     = Other Diagnosed Condition
    DOBYRMOM    = Biological Mother Year Of Birth
    DOBYRDAD    = Biological Father Year Of Birth
    MOMARRD     = Biological Mother Married
    TPRMomDate  = Birth Mother TPR Date
    TPRDadDate  = Birth Father TPR Date
    ADPFAMST    = Adoptive Family Structure
    ADMOMYR     = Adoptive Mother Year Of Birth
    AdoptDate   = Date Adoption was Finalized
    ADDADYR     = Adoptive Father Year Of Birth
    AMIAKNM     = Adoptive Mom Amer Indian\AK Native
    ASIANM      = Adoptive Mom Asian
    BLAFRAMM    = Adoptive Mom Black\African Amer
    HAWIIPIM    = Adoptive Mom Hawaiian\Pacif Island
    WHITEM      = Adoptive Mom White
    UNTODEMM    = Adoptive Mom Unable To Determine Race
    HOMOM       = Adoptive Mother Hispanic Origin
    AMIAKND     = Adoptive Dad Amer Indian\AK Native
    ASIAND      = Adoptive Dad Asian
    BLAFRAMD    = Adoptive Dad Black\African Amer
    HAWIIPID    = Adoptive Dad Hawaiian\Pacif Island
    WHITED      = Adoptive Dad White
    UNTODEMD    = Adoptive Dad Unable To Determine Race
    HODAD       = Adoptive Father Hispanic Origin
    STPARENT    = Pre-Adoptive Relation: Step Parent
    OTHEREL     = Pre-Adoptive Relation: Other Relative
    FOSPARCH    = Pre-Adoptive Relation: Foster Parent
    NONREL      = Pre-Adoptive Relation: Non-Relative
    CHPLDFRM    = Location Of Custodial Agency\Individual
    CHPLDBY     = Agency\Individual Placing Child
    MONSUBSY    = Receiving Monthly Subsidy
    MONAMNT     = Monthly Amount Of Subsidy
    IVEAA       = IV-E Assistance Claimed
    AgeAtAdopt  = Age on Date of Adoption
    ChildRace   = Race of Child as One Variable
    MomRace     = Race of Adoptive Mother as One Variable
    DadRace     = Race of Adoptive Father as One Variable
    Transracial = Transracial Adoption
   ; 

FORMAT
   DOB        yymmdd10.
   TPRMomDate yymmdd10.
   TPRDadDate yymmdd10.
   AdoptDate  yymmdd10.
   ; 
   
RUN;

/*
proc freq data=library.Ad2021v1;
	tables St Sex HisOrgin ChildRace Transracial; 
run;

proc freq data=library.Ad21v1f;
	tables State Sex HisOrgin ChildRace HOMOM BasSpnds Transracial; 
run;

*/


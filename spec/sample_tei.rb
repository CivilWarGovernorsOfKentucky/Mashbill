
# Generating these:
# TEI from files
# # From console
# raw_attributes = document.entities.map { |e| e.attributes }
# raw_attributes.each { |e| ["bibliography", "biography", "lat", "long", "created_at", "updated_at", "hypothesis_date"].each { |a| e.delete(a) } }
# raw_attributes
# # Cut and paste this into entities constant
# raw_attributes = document.entities.map { |e| e.attributes }
# raw_attributes.each { |e| ["bibliography", "biography", "lat", "long", "created_at", "updated_at", "hypothesis_date"].each { |a| e.delete(a) } }
# raw_attributes = document.applicable_annotations.map { |e| e.attributes }
# raw_attributes.each { |e| ["bibliography", "biography", "lat", "long", "created_at", "updated_at", "hypothesis_date"].each { |a| e.delete(a) } }
# raw_attributes
# ## Cut and paste this into annotations constant
KYR00040330009 = <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0004-033-0009"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">Provisional Government of the State of Kentucky, Journal</title>
    <title level="a" type="parallel">CWG16307</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Matthew C Hulbert</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>##</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>##</name>
    </respStmt>
    <respStmt>
     <resp n="proof_2">Double Proof by:</resp>
     <name>CWGK Staff</name>
    </respStmt><respStmt>
<resp n="reviewed">Fact checked by</resp>
<name>Sarah Haywood</name>
</respStmt>
<respStmt>
<resp n="needs_review">Annotated by</resp>
<name>Melissa DeVelvis</name>
</respStmt>

   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Louisville</settlement>
      <repository>Filson Historical Society</repository>
      <collection>Kentucky Confederate Provisional Government Journal</collection>
      <idno>p. 17-19</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Bowling Green, Warren County, Kentucky</placeName>
    <date when="1861-11-26">26 November 1861</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Journal</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p><note place="header">17</note></p>
<p>Council Chamber
<lb/><placeName ref="cwgk:P00000560">Bowling Green Ky</placeName><lb/>Tuesday <date when="1861-11-26">November 26.<hi rend="sup">th</hi> 1861</date></p>
<p>The <orgName ref="cwgk:O00011019">Council</orgName> met pursuant to adjournment -- </p>
<p>Hon<hi rend="sup">l</hi>.<persName ref="cwgk:N00000832"> W. B. Machen</persName> President in the Chair<figure type="hr"/></p>
<p>A. Frank Brown Clerk of the Council elect, <hi rend="str">and</hi> having been duly qualified as required by law entered upon the discharge of the duties of said office.<figure type="hr"/></p>
<p>A communication from G. Malcom was received and read and on motion it was refered to the committee on Military affairs<figure type="hr"/></p>
<p>The Committees to whom was refered a bill to fix the salaries of certain Officers- reported the same-</p>
<p>By Mr Crockett -- 
<lb/>"An act to fix the salaries of certain Officers"
<lb/>Which was read the first time- and ordered to be read a second time</p>
<p>The rules of the Council Constitutional provision and second and third readings having been dispensed with-</p>
<p>The question then being upon the passage of the bill, and being taken was decided in the affirmative- and so the bill passed</p>
<p><hi rend="underline">Ordered</hi> That the title be as reported.<figure type="hr"/></p>
<p>Mr. H. W. Bruce from the Committee on the Judiciary reported a bill to amend the Execution and distribution laws- which bill reads as follows -- Towit -- </p>
<p>An Act to amend the Execution and distribution laws of Kentucky -- </p>
<p>Be it enacted by the Council of the Provisional Government of the State of Kentucky That every citizen of said Commonwealth shall be entitled to hold as exempt from sale for any debt whatever except taxes, one slave and if said exempted slave be a female, the mother of infant children, the property also of the owners of said<pb/>
<lb/><note place="header">18</note>
<lb/>female slave, said infant children, during their infancy shall in like manner be exempt from sale. <hi rend="underline">Provided</hi> however that in the event of the death of the owner of any such exempted slave or slaves, the same shall descend as real Estate-"</p>
<p>Which was read the first time-</p>
<p>On motion the rules of the Council constitutional provision and second reading was dispensed with.</p>
<p>Mr Crockett moved the following amendment. Towit:-</p>
<p>"Amend by striking out the words "during their infancy" in the twelfth line and insert "until they attain the age of twelve years"
<lb/>Said amendment was accepted-</p>
<p>On motion of M<hi rend="sup">r</hi>. Thompson said bill and amendment was re-committed to the committe<hi rend="str">n</hi>e reporting the same.<figure type="hr"/></p>
<p>Mr H. W. Bruce moved the following resolution Towit:</p>
<p>"Resolved That that the Council now proceed to the election of a person to fill the office of Sergeant at arms, Door Keeper and Page whose duty it shall be to provide fuel for the Council chamber to Keep the same properly warmed and clean and to attend generally to the duties pertaining to said offices-<figure type="hr"/></p>
<p>In pursuance of said resolution the council then proceeded to the election of sergeant at arms, door Keeper and page which resulted in the election of J. B. Thompson Jr.<figure type="hr"/></p>
<p>Mr H. W. Bruce moved the following resolution Towit:
<lb/>"Resolved That the Treasurer T. L. Burnett be and he is hereby authorized to purchase the necessary books and stationary for the use of this Council"
<lb/>Which was adopted.<figure type="hr"/></p>
<p>A message from the Governor was received and read as follows Towit:</p>
<p>Bowling Green Ky
<lb/><date when="1861-11-26">Novr. 26.<hi rend="sup">th</hi> 1861</date></p>
<p>W. B. Machen Esq
<lb/>President of the Council of Kentucky
<lb/>Sir</p>
<p>I hereby nominate Robert M<hi rend="sup">c</hi>Kee for the Office of Secretary of State</p>
<p>Very Respectfully
<lb/>Your Ob<hi rend="sup">t</hi> Serv<hi rend="sup">t.</hi>
<lb/>George W. Johnson<pb/>
<lb/><note place="header">19</note></p>
<p>The council on motion went into executive Session<figure type="hr"/></p>
<p>On motion the nomination by the Governor of R. M<hi rend="sup">c</hi>Kee for Secretary of State was unanimously confirmed.<figure type="hr"/></p>
<p>On motion the Council then adjourned to meet again at 2 O'Clock P. M.</p>
<p>Attest A Frank Brown<figure type="hr"/></p>
<p><hi rend="underline">Evening Session</hi></p>
<p>The Council met pursuant to adjournment- Hon<hi rend="sup">l</hi>. W. B. Machen President in the Chair.<figure type="hr"/></p>
<p>Mr Crockett moved the following resolution-
<lb/>Resolved- That his Excellency the Governor of the Provisional Government be and he is hereby requested and instructed to require all the collecting officers of the State revenue in the State of Kentucky to pay all the revenue collected or uncollected in their respective Counties for the year <date when="1861">1861</date> or any previous year under existing revenue laws into the Treasury of this government and the Governor will communicate in writing to the Council the result of this requisition -- 
<lb/>Which was adopted<figure type="hr"/></p>
<p>Mr. Thompson from the Committee on Military Affairs presented the following report:</p>
<p>The Committee on Military affairs to whom was refered the communication of Rob<hi rend="sup">t</hi> M<hi rend="sup">c</hi>Kee -- Report That upon deliberation they have concluded that the request of said M<hi rend="sup">c</hi>Kee should be granted, and that he be authorized to raise a regiment the same to be Officered and subject to all laws that may hereby be enacted relative to the army and militia of Kentucky</p>
<p>P. B. Thompson Chr<hi rend="sup">mn</hi></p>
<p>And thereupon Mr Thompson moved the following resolution
<lb/>Resolved That Robert M<hi rend="sup">c</hi>Kee be authorized to raise a regiment to be Officered and subject to all laws that may hereafter be enacted relative to the Army and militia of Kentucky- Said Regiment when raised to serve for twelve months unless sooner discharged
<lb/>Which was adopted<figure type="hr"/></p>
<p>And then the Council adjourned until tomorrow at 10 O'Clock A. M.</p>
<p>Attest
<lb/>A. Frank Brown Clerk</p>
  </body>
 </text>
</TEI>
EOF

KYR00040330009_ENTITY_ATTRIBUTES = [{"id"=>853,
  "name"=>"Philip Burton Thompson, Sr.",
  "entity_type"=>"person",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"KY prov govt, attorney ",
  "birth_date"=>"1821-01-08",
  "death_date"=>"1908-11-28"},
 {"id"=>838,
  "name"=>"Theodore Legrand Burnett",
  "entity_type"=>"person",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>
   "Spencer County, KY, representative (Confederate), attorney and soldier",
  "birth_date"=>"1829-11-14",
  "death_date"=>"1917-10-30"},
 {"id"=>11014,
  "name"=>"Robert McKee",
  "entity_type"=>"person",
  "user_id"=>26,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Louisville, KY, journalist and prov govt sec of state",
  "birth_date"=>"c1831",
  "death_date"=>"1909-06-11"},
 {"id"=>96,
  "name"=>"George Washington Johnson",
  "entity_type"=>"person",
  "user_id"=>1,
  "ref_id"=>"N001002",
  "gender"=>"male",
  "disambiguator"=>"Provisional Governor of Kentucky",
  "birth_date"=>"1811-05-27",
  "death_date"=>"1862-04-08"},
 {"id"=>11226,
  "name"=>"John Burton Thompson Jr.",
  "entity_type"=>"person",
  "user_id"=>26,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrodsburg, Kentucky, Provis Govt page",
  "birth_date"=>"c1845",
  "death_date"=>""},
 {"id"=>560,
  "name"=>"Bowling Green, Kentucky",
  "entity_type"=>"place",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Seat of Warren County, Kentucky.",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>11019,
  "name"=>"Provisional Council",
  "entity_type"=>"organization",
  "user_id"=>26,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Legislative Body of Provisional Government",
  "birth_date"=>"1861-11-18",
  "death_date"=>"1865"},
 {"id"=>832,
  "name"=>"Willis Benson Machen",
  "entity_type"=>"person",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>
   "Lyon County, KY, attorney, farmer, iron manufacturer, and politician (KY & Confederate)",
  "birth_date"=>"1810-04-10",
  "death_date"=>"1893-09-29"},
 {"id"=>1858,
  "name"=>"A. Frank Brown",
  "entity_type"=>"person",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Bourbon County, KY, attorney and clerk of prov govt ",
  "birth_date"=>"c1826",
  "death_date"=>""},
 {"id"=>11064,
  "name"=>"G. Malcolm",
  "entity_type"=>"person",
  "user_id"=>24,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Jefferson County, prov govt",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>833,
  "name"=>"John Watkins Crockett, Jr.",
  "entity_type"=>"person",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>
   "Jessamine County, KY, attorney and representative (Confederate)",
  "birth_date"=>"1818-05-17",
  "death_date"=>"1874-06-20"},
 {"id"=>843,
  "name"=>"Horatio Washington Bruce",
  "entity_type"=>"person",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Jefferson County, KY, Representative (Confederate)",
  "birth_date"=>"1830-02-22",
  "death_date"=>"1903-01-22"},
 {"id"=>83,
  "name"=>"Commonwealth of Kentucky",
  "entity_type"=>"organization",
  "user_id"=>1,
  "ref_id"=>"O001025",
  "gender"=>"male",
  "disambiguator"=>"state government org",
  "birth_date"=>"1792",
  "death_date"=>""},
 {"id"=>3448,
  "name"=>"Provisional Government of Kentucky",
  "entity_type"=>"organization",
  "user_id"=>2,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Rebel govt of KY",
  "birth_date"=>"1861-11-18",
  "death_date"=>"1865"},
 {"id"=>11358,
  "name"=>"Committee on the Judiciary",
  "entity_type"=>"organization",
  "user_id"=>26,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Provisional Government of Kentucky",
  "birth_date"=>"1861-11-25",
  "death_date"=>"1865"},
 {"id"=>11355,
  "name"=>"Committee on Military Affairs",
  "entity_type"=>"organization",
  "user_id"=>26,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Prov Govt of Ky",
  "birth_date"=>"1861-11-25",
  "death_date"=>"1865"}]


KYR00040330009_ANNOTATIONS = [{"id"=>24421,
  "document_id"=>1753,
  "verbatim"=>"Mr. Thompson",
  "user_id"=>1,
  "entity_id"=>853,
  "hypothesis_annotation_id"=>"yToV7vU_EemjkMdNWhVEcQ",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"dment was accepted-On motion of ",
  "suffix"=>" said bill and amendment was re-",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[23]"},
 {"id"=>24419,
  "document_id"=>1753,
  "verbatim"=>" T. L. Burnett",
  "user_id"=>1,
  "entity_id"=>838,
  "hypothesis_annotation_id"=>"1vFOFPU_EemMiHf405bBSA",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"it:\n" + "\"Resolved That the Treasurer",
  "suffix"=>" be and he is hereby authorized ",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[30]"},
 {"id"=>24418,
  "document_id"=>1753,
  "verbatim"=>"Robert McKee",
  "user_id"=>1,
  "entity_id"=>11014,
  "hypothesis_annotation_id"=>"3Q7YevU_Eemh7Q-DeTAbgA",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"f Kentucky\n" + "SirI hereby nominate ",
  "suffix"=>" for the Office of Secretary of ",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[35]"},
 {"id"=>24417,
  "document_id"=>1753,
  "verbatim"=>"George W. Johnson",
  "user_id"=>1,
  "entity_id"=>96,
  "hypothesis_annotation_id"=>"4FXPjvU_EemntC9S4TatjA",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"ery Respectfully\n" + "Your Obt Servt.",
  "suffix"=>" < 19 >The council on motion wen",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[36]"},
 {"id"=>24420,
  "document_id"=>1753,
  "verbatim"=>" J. B. Thompson Jr.",
  "user_id"=>1,
  "entity_id"=>11226,
  "hypothesis_annotation_id"=>"0VuRWPU_EemDXk_NbFRueg",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"hich resulted in the election of",
  "suffix"=>"Mr H. W. Bruce moved the followi",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[28]"},
 {"id"=>24430,
  "document_id"=>1753,
  "verbatim"=>"Bowling Green Ky",
  "user_id"=>1,
  "entity_id"=>560,
  "hypothesis_annotation_id"=>"mDFEXvU_EemGf-cexmsbbQ",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"   \n" + "\n" + "\n" + "\n" + "\n" + "  < 17 >Council Chamber\n",
  "suffix"=>"\n" + "Tuesday November 26.th 1861The ",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>24429,
  "document_id"=>1753,
  "verbatim"=>"Council",
  "user_id"=>1,
  "entity_id"=>11019,
  "hypothesis_annotation_id"=>"msJ56vU_EempERO3JarAjA",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"\n" + "Tuesday November 26.th 1861The ",
  "suffix"=>" met pursuant to adjournment — H",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]"},
 {"id"=>24428,
  "document_id"=>1753,
  "verbatim"=>" W. B. Machen",
  "user_id"=>1,
  "entity_id"=>832,
  "hypothesis_annotation_id"=>"nXZZSvU_EemHCQswnu4v0w",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>" pursuant to adjournment — Honl.",
  "suffix"=>" President in the ChairA. Frank ",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]"},
 {"id"=>24427,
  "document_id"=>1753,
  "verbatim"=>"A. Frank Brown",
  "user_id"=>1,
  "entity_id"=>1858,
  "hypothesis_annotation_id"=>"oLagYPU_EemYK1P_wZvHBw",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"B. Machen President in the Chair",
  "suffix"=>" Clerk of the Council elect, and",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>24426,
  "document_id"=>1753,
  "verbatim"=>"G. Malcom",
  "user_id"=>1,
  "entity_id"=>11064,
  "hypothesis_annotation_id"=>"pBw01vU_EemhSYuv3u1yJg",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"aid office.A communication from ",
  "suffix"=>" was received and read and on mo",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"},
 {"id"=>24425,
  "document_id"=>1753,
  "verbatim"=>" Mr Crockett",
  "user_id"=>1,
  "entity_id"=>833,
  "hypothesis_annotation_id"=>"qmcKtPU_EemDw6e1YMZixw",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"n Officers- reported the same-By",
  "suffix"=>" — \n" + "\"An act to fix the salaries ",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[11]"},
 {"id"=>24424,
  "document_id"=>1753,
  "verbatim"=>"H. W. Bruce",
  "user_id"=>1,
  "entity_id"=>843,
  "hypothesis_annotation_id"=>"snRc_PU_EemOhKcv1cCOnw",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"at the title be as reported.Mr. ",
  "suffix"=>" from the Committee on the Judic",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[16]"},
 {"id"=>24423,
  "document_id"=>1753,
  "verbatim"=>"Kentucky",
  "user_id"=>1,
  "entity_id"=>83,
  "hypothesis_annotation_id"=>"tfmXDPU_EemNsSvT5CdbvA",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"cution and distribution laws of ",
  "suffix"=>" — Be it enacted by the Council ",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[17]"},
 {"id"=>24422,
  "document_id"=>1753,
  "verbatim"=>"Provisional Government ",
  "user_id"=>1,
  "entity_id"=>3448,
  "hypothesis_annotation_id"=>"uPM-kPU_EemDXQs16Ia3dA",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"t enacted by the Council of the ",
  "suffix"=>"of the State of Kentucky That ev",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[18]"},
 {"id"=>24675,
  "document_id"=>1753,
  "verbatim"=>"Committee on the Judiciary",
  "user_id"=>1,
  "entity_id"=>11358,
  "hypothesis_annotation_id"=>"PnqhbPtDEemPNE_X_pG4Vg",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"ported.Mr. H. W. Bruce from the ",
  "suffix"=>" reported a bill to amend the Ex",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[16]"},
 {"id"=>24676,
  "document_id"=>1753,
  "verbatim"=>"committee on Military affairs",
  "user_id"=>1,
  "entity_id"=>11355,
  "hypothesis_annotation_id"=>"NyAXsvtDEemrB_s4gKXK9Q",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"on motion it was refered to the ",
  "suffix"=>"The Committees to whom was refer",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"}]



KYR00010040079 = <<EOF
﻿<?xml version="1.0" encoding="UTF-8"?> 
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0001-004-0079"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">Greenberry Tingle, Jr. to Thomas E. Bramlette</title>
    <title level="a" type="parallel">CWG4198</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Anthony P Curtis</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Matthew C Hulbert</name>
    </respStmt>
    <respStmt>
     <resp n="proof_2">Double Proof by:</resp>
     <name>CWGK Staff</name>
    </respStmt>
   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Department for Libraries and Archives</repository>
      <collection>Office of the Governor, Thomas E. Bramlette: Governor's official correspondence file, petitions for pardons, remissions, and respites 1863-1867</collection>
      <idno>BR8-116 to BR8-117</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Henry County, Kentucky</placeName>
    <date when="1863-09-08">8 September 1863</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Petition</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p>To his Excellency the Governor of Kentucky.</p>
<p>Your petitioner Greenberry Tingle Jr states that he was indicted in the Henry Circuit Court for stabbing and wounding Turner, a slave of James Boyer, in sudden heat and passion, without malice and not in self defense. And at the September Term <date when="1863">1863</date> with the permission of the attorney for the Com'th, he plead guilty and the jury assessed his fine at &#36;50 -- Peititioner was induced to take this course because he was aware that he had committed a technical violation of law, though, he acted under the circumstances, just as the majority of men would have done.</p>
<p>The facts in his case were these -- This slave stole petitioner's horse and <hi rend="str">an</hi> Endeavorrd to make way with it- Petitioner after missing his horse found it &amp; became thoroughly satisfied that the negro had stolen it &amp; his bridle. Petitioner &amp; his father tried to get the owner of the negro to correct him for his conduct but he failed to do So, and petitioner seeing the negro one day accosted him &amp; demanded the bridle which<pb/>
<lb/>he had stolen- Some words occurred between them the negro used imprudent langugae <hi rend="str">between</hi> towards petitioner ^was generally known to be a very bad negro^ and threatened peition with his master when petitioner, in the excitement of the moment, cut him with his knife- the wound was not serious has not damaged the negro, and deft regrets that he ever used the <hi rend="str">negro</hi> knife on the negro -- </p>
<p>Petitioner is a poor young man <hi rend="str">of</hi> 19 years of age, and can sustain &amp; prove a good character as a peaceable quiet boy who never had a difficulty before <hi rend="str">l</hi> in his life, &amp; never interferes with other people's business</p>
<p>Petitioner promising ^not^ to get into a like difficulty again respectfully asks your Excellency to remit so much of the fine against him as the law will permit to be done.</p>
<p>G ^his X mark^ Tingle Jr
<lb/>attest John M Harlan</p>
<p>Sworn to before me by G. Tingle Jr this <date when="1863-09-08">8<hi rend="sup">th</hi> day of September 1863</date></p>
<p>Jno. C. Monfort P J H c c</p>
<p>The undesigned knows G. Tingle Jr &amp; the slave Turner wounded by him- Tingle is a quiet, peaceable, inoffensive young man, of excellent habits and <hi rend="str">of</hi> industrious and law abiding generally. And the <unclear><hi rend="str">ne</hi></unclear> negro<pb/>
<lb/>is a bad dangerous slave who in one or two instances recently has acted in an outrageous manner. We ask that Tingle's fine be remitted.</p>
<p>H C Gardner
<lb/>Augustus Elston</p>
<p>The undersigned testify to the general good character &amp; peaceable desposition of G. Tingle Jr- We are citizens of Henry County, and ask respectfully that his fine be remitted.</p>
<p>Samuel Jones
<lb/>Berry Ellis
<lb/>John Mahoney
<lb/>David Fitzgerald
<lb/>James Pearce Sr</p>
<p>We unite in the prayer of the petitioner</p>
<p>Tho. Rodman</p>
<p>The recommendation of Saml Jones, whom I well know, induces me to sign petition</p>
<p><hi rend="underline">Jno, C. Monfort</hi> P J H c c<pb/></p>
<p>Henry Cir Ct
<lb/>vs</p>
<p><date when="1863-09-21">Sept 21<hi rend="sup">st</hi>/63</date>
<lb/>Remit all except costs and attys fees
<lb/>Tho Bramlette</p>
<p>G. Tingle Jr
<lb/>&#36;50 -- </p>
  </body>
 </text>
</TEI>
EOF

KYR00010040079_ANNOTATIONS =
[{"id"=>13548,
  "document_id"=>1073,
  "verbatim"=>"Henry Circuit Court",
  "user_id"=>1,
  "entity_id"=>400,
  "hypothesis_annotation_id"=>"BVjONkMIEeeskF8baY8mtQ",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"tes that he was indicted in the ",
  "suffix"=>" for stabbing and wounding Turne",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>13545,
  "document_id"=>1073,
  "verbatim"=>"John M Harlan",
  "user_id"=>1,
  "entity_id"=>2635,
  "hypothesis_annotation_id"=>"MeP96kMIEeeskWcdthwizg",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"G ^his x mark^ Tingle Jr\nattest ",
  "suffix"=>"Sworn to before me by G Tingle J",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>13544,
  "document_id"=>1073,
  "verbatim"=>"Jno. A. Monfort",
  "user_id"=>1,
  "entity_id"=>4943,
  "hypothesis_annotation_id"=>"NlcUmEMIEeeQ0OcqgO6v1A",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"r this 8th day of September 1863",
  "suffix"=>" P H H C CThe undesigned knows G",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"},
 {"id"=>13541,
  "document_id"=>1073,
  "verbatim"=>"Henry County",
  "user_id"=>1,
  "entity_id"=>758,
  "hypothesis_annotation_id"=>"T5I6vkMIEeeak1Po2a8RPw",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>". Tingle Jr. We are citizens of ",
  "suffix"=>", and ask respectfully that his ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[12]"},
 {"id"=>13536,
  "document_id"=>1073,
  "verbatim"=>"Tho. Rodman",
  "user_id"=>1,
  "entity_id"=>4733,
  "hypothesis_annotation_id"=>"XXCrAkMIEeeJxwd3423C7A",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>" in the prayer of the petitioner",
  "suffix"=>"The recommendation of Saml Jones",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[15]"},
 {"id"=>13535,
  "document_id"=>1073,
  "verbatim"=>"Tho Bramlette\n",
  "user_id"=>1,
  "entity_id"=>94,
  "hypothesis_annotation_id"=>"czzIikMIEeealDuJYkaTdA",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"all except costs and attys fees\n",
  "suffix"=>"\n               \n               ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[19]"},
 {"id"=>13547,
  "document_id"=>1073,
  "verbatim"=>"Turner",
  "user_id"=>1,
  "entity_id"=>6612,
  "hypothesis_annotation_id"=>"CLvXTkMIEee6lbemMo1HTg",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"Court for stabbing and wounding ",
  "suffix"=>", a slave of James Boyer, in sud",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>13546,
  "document_id"=>1073,
  "verbatim"=>"James Boyer",
  "user_id"=>1,
  "entity_id"=>6613,
  "hypothesis_annotation_id"=>"DJ2T_EMIEeeYAedLo4GhPg",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"and wounding Turner, a slave of ",
  "suffix"=>", in sudden heat and passion, wi",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>13549,
  "document_id"=>1073,
  "verbatim"=>"Greenberry Tingle Jr",
  "user_id"=>1,
  "entity_id"=>6614,
  "hypothesis_annotation_id"=>"AFJW3EMIEeeHK2cLddsxrQ",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"nor of Kentucky.Your petitioner ",
  "suffix"=>" states that he was indicted in ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>13543,
  "document_id"=>1073,
  "verbatim"=>"H C Gardner\n",
  "user_id"=>1,
  "entity_id"=>6615,
  "hypothesis_annotation_id"=>"SQiRjkMIEee__VOZ8LCXzA",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>" that Tingle's fine be remitted.",
  "suffix"=>"Augustus ElstonThe undersigned t",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[11]"},
 {"id"=>13542,
  "document_id"=>1073,
  "verbatim"=>"Augustus Elston",
  "user_id"=>1,
  "entity_id"=>6616,
  "hypothesis_annotation_id"=>"SsruXkMIEeeNDRdnw3RKgw",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"'s fine be remitted.H C Gardner\n",
  "suffix"=>"The undersigned testify to the g",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[11]"},
 {"id"=>13540,
  "document_id"=>1073,
  "verbatim"=>"Berry Ellis\n",
  "user_id"=>1,
  "entity_id"=>6617,
  "hypothesis_annotation_id"=>"VEQFukMIEeemqr9ZySAaMA",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"s fine be remitted.Samuel Jones\n",
  "suffix"=>"John Muhoney\nDavid Fitzgerald\nJa",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[13]"},
 {"id"=>13539,
  "document_id"=>1073,
  "verbatim"=>"John Muhoney\n",
  "user_id"=>1,
  "entity_id"=>6618,
  "hypothesis_annotation_id"=>"VrSVHEMIEeeaDgN2Ih1ezw",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"mitted.Samuel Jones\nBerry Ellis\n",
  "suffix"=>"David Fitzgerald\nJames Pearce Sr",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[13]"},
 {"id"=>13538,
  "document_id"=>1073,
  "verbatim"=>"David Fitzgerald\n",
  "user_id"=>1,
  "entity_id"=>6619,
  "hypothesis_annotation_id"=>"WDXSokMIEeeHaE_vo-_t1w",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>" Jones\nBerry Ellis\nJohn Muhoney\n",
  "suffix"=>"James Pearce SrWe unite in the p",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[13]"},
 {"id"=>13537,
  "document_id"=>1073,
  "verbatim"=>"James Pearce Sr",
  "user_id"=>1,
  "entity_id"=>6620,
  "hypothesis_annotation_id"=>"Wl406EMIEeeYAuNwedkOkw",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"s\nJohn Muhoney\nDavid Fitzgerald\n",
  "suffix"=>"We unite in the prayer of the pe",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[13]"},
 {"id"=>13550,
  "document_id"=>1073,
  "verbatim"=>"Samuel Jones\n",
  "user_id"=>1,
  "entity_id"=>6621,
  "hypothesis_annotation_id"=>"ySqOtkMxEeePdBuD-PVwxw",
  "hypothesis_user"=>"jnasta@hypothes.is",
  "prefix"=>"fully that his fine be remitted.",
  "suffix"=>"Berry Ellis\nJohn Muhoney\nDavid F",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[13]"},
 {"id"=>27113,
  "document_id"=>1073,
  "verbatim"=>"Kentucky",
  "user_id"=>1,
  "entity_id"=>83,
  "hypothesis_annotation_id"=>"67nCwl-7EeqXfQfIuIFWiA",
  "hypothesis_user"=>"dthompsonKHS@hypothes.is",
  "prefix"=>" his Excellency the Governor of ",
  "suffix"=>".Your petitioner Greenberry Ting",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"}]


KYR00010040079_ENTITIES =
[{"id"=>400,
  "name"=>"Henry Circuit Court",
  "entity_type"=>"organization",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"court in 8th Judicial District",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>2635,
  "name"=>"John Marshall Harlan ",
  "entity_type"=>"person",
  "user_id"=>11,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Kentucky politician, soldier, and attorney",
  "birth_date"=>"1833-06-01",
  "death_date"=>"1911-10-14"},
 {"id"=>4943,
  "name"=>"John C. Monfort",
  "entity_type"=>"person",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, KY, judge and attorney",
  "birth_date"=>"c1805",
  "death_date"=>""},
 {"id"=>758,
  "name"=>"Henry County, Kentucky",
  "entity_type"=>"place",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"place - County in northern Kentucky",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>4733,
  "name"=>"Thomas Rodman",
  "entity_type"=>"person",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, KY, merchant",
  "birth_date"=>"1823-08-10",
  "death_date"=>"1900-12-21"},
 {"id"=>94,
  "name"=>"Thomas Elliott Bramlette",
  "entity_type"=>"person",
  "user_id"=>1,
  "ref_id"=>"N001000",
  "gender"=>"male",
  "disambiguator"=>"Kentucky governor",
  "birth_date"=>"1817-01-03",
  "death_date"=>"1875-01-12"},
 {"id"=>6612,
  "name"=>"Turner",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry Co, KY, slave of James Boyer",
  "birth_date"=>"c1845",
  "death_date"=>""},
 {"id"=>6613,
  "name"=>"James Boyer",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, Kentucky, farmer",
  "birth_date"=>"1824-09-01",
  "death_date"=>"1905-02-08"},
 {"id"=>6614,
  "name"=>"Green Berry Tingle, Jr.",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, Kentucky, resident",
  "birth_date"=>"1843-03-30",
  "death_date"=>"1913-07-28"},
 {"id"=>6615,
  "name"=>"Harvey Carlile Gardner",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, KY, farm laborer",
  "birth_date"=>"c1832",
  "death_date"=>""},
 {"id"=>6616,
  "name"=>"Augustus Elston",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, Kentucky, resident",
  "birth_date"=>"1844-12-27",
  "death_date"=>"1922-03-25"},
 {"id"=>6617,
  "name"=>"Berry Ellis",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, Kentucky, farmer",
  "birth_date"=>"1804-04-19",
  "death_date"=>"1878-11-06"},
 {"id"=>6618,
  "name"=>"John Mahoney",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, Kentucky, farmer",
  "birth_date"=>"c1810",
  "death_date"=>""},
 {"id"=>6619,
  "name"=>"David Fitzgerald",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, Kentucky, merchant",
  "birth_date"=>"1813-03-04",
  "death_date"=>"c1870"},
 {"id"=>6620,
  "name"=>"James Pearce, Sr.",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, KY, tailor",
  "birth_date"=>"c1800",
  "death_date"=>""},
 {"id"=>6621,
  "name"=>"Samuel Jones",
  "entity_type"=>"person",
  "user_id"=>9,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Henry County, Kentucky, resident",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>83,
  "name"=>"Commonwealth of Kentucky",
  "entity_type"=>"organization",
  "user_id"=>1,
  "ref_id"=>"O001025",
  "gender"=>"male",
  "disambiguator"=>"state government org",
  "birth_date"=>"1792",
  "death_date"=>""}]





KYR00010030072 = <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0001-003-0072"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">J. M. Mackenzie to Thomas E. Bramlette</title>
    <title level="a" type="parallel">CWG1589</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Elizabeth J Van Allen</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Anthony P Curtis</name>
    </respStmt>
   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
     <title level="s" type="sub">Early Access</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Department for Libraries and Archives</repository>
      <collection>Office of the Governor, Thomas E. Bramlette: Governor's Official Correspondence File, Military Correspondence, 1863-1867</collection>
      <idno>BR5-127 to BR5-128</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Paducah, McCracken County, Kentucky</placeName>
    <date when="1864-02-10">10 February 1864</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Correspondence</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p>U. S. Com<hi rend="underline"><hi rend="sup">s</hi></hi> office at Paducah Ky,,
<lb/><date when="1864-02-10">February 10<hi rend="sup">th</hi> 1864</date>
<lb/>To His Excellency
<lb/>Thomas E Bramlett
<lb/>Governer of Kentucky
<lb/>Dear Sir</p>
<p>The recruiting of negro soldiers at this point, and more especially the <hi rend="underline">manner</hi> of recruiting is very damaging to our union Cause, and is in violation of the President,s proclamation, the laws of congress, and the laws of the state</p>
<p>When <hi rend="underline">armed negroes</hi> are permited to go with impunity into the Dwellings of true and Loyal men use insolent language to the family and take by force the only Servent of the family in oposition to the expresed wish of that servent -- it is not very encouraging to union men</p>
<p>Such was the case at Dr Capes of this City Yesterday morning and there is not a more <hi rend="underline">Loyal true Patriot</hi> than D<hi rend="sup">r</hi> Cope on the american continent</p>
<p>J. M. Mackenzie
<lb/>Capt &amp; C S U S Army</p>
  </body>
 </text>
</TEI>
EOF

KYR00041010014 = <<EOF
﻿<?xml version="1.0" encoding="UTF-8"?> 
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0003-101-0014"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">Daniel W. Lindsey, General Orders, No. 9</title>
    <title level="a" type="parallel">CWG14444</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Matthew C Hulbert</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Christina K Adkins</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
    <respStmt>
     <resp n="proof_2">Double Proof by:</resp>
     <name>CWGK Staff</name>
    </respStmt>
   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Historical Society</repository>
      <collection>Charles W. Quiggins papers</collection>
      <idno></idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Frankfort, Franklin County, Kentucky</placeName>
    <date when="1865-04-05">5 April 1865</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Order</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p>Headquarters Kentucky Volunteers,
<lb/>Adjutant=General's Office,
<lb/>Frankfort, <date when="1865-04-05">April 5<hi rend="sup">:</hi> 1865</date>.
<lb/>General Orders
<lb/>N<hi rend="sup">o.</hi> 9.</p>
<p>A Military Court Martial is hereby. ordered to convene at the Inspector General's Office Frankfort, Ky on this the <date when="1865-04-05">5<hi rend="sup">: </hi>day of April 1865</date>, or as soon thereafter as practicable, for the trial of such prisoners as may be brought before them.</p>
<p>The following Officers are hereby detailed and will constitute said Court viz: -- </p>
<p><hi rend="underline">Maj. C. W. Quiggens
<lb/>Maj W. H. Hays
<lb/>Lieut W. E. Cox</hi> <hi rend="underline">Judge Advocate</hi></p>
<p>No other officers than those named can be assembled without manifest injury to the service.</p>
<p>Said detail will also constitute a Commission to investigate and ascertain the correctness of certain claims laid against the State by all officers of the 30<hi rend="sup">:</hi> Ky Vol -- Inf<hi rend="sup">y</hi>. for services rendered the State previous to being mustered into the U. S. service, who will report their opinion as to same-</p>
<p>No other Officers than those named can be assembled for this Commission without manifest injury to the service. <hi rend="underline">Court will sit without regard to hours.</hi></p>
<p>By order of the Governor
<lb/>D, W, Lindsey
<lb/>Adj' Gen<hi rend="sup">l</hi> Ky</p>
<p>Maj C W. Quiggens<pb/></p>
<p><date when="1865-04-05">April 5<hi rend="underline"><hi rend="sup">th</hi></hi> /65,</date></p>
  </body>
 </text>
</TEI>
EOF

KYR00041010014_ANNOTATIONS_ATTRIBUTES =
[{"id"=>23681,
  "document_id"=>1721,
  "verbatim"=>"Kentucky Volunteers",
  "user_id"=>1,
  "entity_id"=>870,
  "hypothesis_annotation_id"=>"6yEsDMm_EemBKtMnXtGFgA",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"  \n    \n    \n\n\n\n\n  Headquarters ",
  "suffix"=>",\nAdjutant=General's Office,\nFra",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>23678,
  "document_id"=>1721,
  "verbatim"=>"Inspector General's Office",
  "user_id"=>1,
  "entity_id"=>920,
  "hypothesis_annotation_id"=>"_kGRFMm_EemJp8tY2T7pxg",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"reby. ordered to convene at the ",
  "suffix"=>" Frankfort, Ky on this the 5: da",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>23679,
  "document_id"=>1721,
  "verbatim"=>"Frankfort",
  "user_id"=>1,
  "entity_id"=>308,
  "hypothesis_annotation_id"=>"8NXrnMm_EemkyJdl3uIo2A",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"ers,\nAdjutant=General's Office,\n",
  "suffix"=>", April 5: 1865.\nGeneral Orders\n",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>23680,
  "document_id"=>1721,
  "verbatim"=>"Adjutant=General's Office",
  "user_id"=>1,
  "entity_id"=>388,
  "hypothesis_annotation_id"=>"7afB6Mm_EemF2uN3u46p7Q",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"adquarters Kentucky Volunteers,\n",
  "suffix"=>",\nFrankfort, April 5: 1865.\nGene",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>23677,
  "document_id"=>1721,
  "verbatim"=>"Ky",
  "user_id"=>1,
  "entity_id"=>44,
  "hypothesis_annotation_id"=>"AhSNZMnAEemd4K-v-2MQzQ",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"tor General's Office Frankfort, ",
  "suffix"=>" on this the 5: day of April 186",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>23670,
  "document_id"=>1721,
  "verbatim"=>"Governor",
  "user_id"=>1,
  "entity_id"=>94,
  "hypothesis_annotation_id"=>"L_NToMnAEemuCW9YPuvRRg",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"regard to hours.By order of the ",
  "suffix"=>"\nD, W, Lindsey\nAdj' Genl KyMaj C",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"},
 {"id"=>23671,
  "document_id"=>1721,
  "verbatim"=>"D, W, Lindsey\n",
  "user_id"=>1,
  "entity_id"=>873,
  "hypothesis_annotation_id"=>"Kp4uKsnAEemwWn-sIDytBg",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>" hours.By order of the Governor\n",
  "suffix"=>"Adj' Genl KyMaj C W. Quiggens Ap",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"},
 {"id"=>23672,
  "document_id"=>1721,
  "verbatim"=>"U. S. service",
  "user_id"=>1,
  "entity_id"=>1186,
  "hypothesis_annotation_id"=>"I2aSCsnAEemmDkNvaZHxPw",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"ious to being mustered into the ",
  "suffix"=>", who will report their opinion ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>23676,
  "document_id"=>1721,
  "verbatim"=>"Maj. C. W. Quiggens\n",
  "user_id"=>1,
  "entity_id"=>9430,
  "hypothesis_annotation_id"=>"B3KfxsnAEemDumt3b4_zFw",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"ll constitute said Court viz: — ",
  "suffix"=>"Maj W. H. Hays\nLieut W. E. CoxJu",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]/span[1]"},
 {"id"=>23674,
  "document_id"=>1721,
  "verbatim"=>"Lieut W. E. Cox",
  "user_id"=>1,
  "entity_id"=>9339,
  "hypothesis_annotation_id"=>"Dc24dMnAEem7_YfgomZpKg",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>". C. W. Quiggens\nMaj W. H. Hays\n",
  "suffix"=>"Judge AdvocateNo other officers ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]/span[1]"},
 {"id"=>23675,
  "document_id"=>1721,
  "verbatim"=>"Maj W. H. Hays",
  "user_id"=>1,
  "entity_id"=>1581,
  "hypothesis_annotation_id"=>"Cogx-MnAEemA-oN9w2xXhw",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"ourt viz: — Maj. C. W. Quiggens\n",
  "suffix"=>"\nLieut W. E. CoxJudge AdvocateNo",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]/span[1]"},
 {"id"=>23673,
  "document_id"=>1721,
  "verbatim"=>"0: Ky Vol — Infy",
  "user_id"=>1,
  "entity_id"=>11002,
  "hypothesis_annotation_id"=>"FFoiXsnAEemkyW-elRxu6Q",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"e State by all officers of the 3",
  "suffix"=>". for services rendered the Stat",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"}
]

KYR00041010014_ENTITIES = [{"id"=>870,
  "name"=>"Kentucky Volunteers",
  "entity_type"=>"organization",
  "biography"=>
   "The official organization of Kentucky military forces under the command of the Adjutant General of Kentucky. Organized into infantry, cavalry, and artillery regiments. Civil War-era Adjutant Generals: Scott Brown (1859-1861); John W. Finnell (1861-1863); John Boyle (1863-1864); Daniel W. Lindsey (1864-1867).",
  "bibliography"=>
   "_Report of the Adjutant General of the State of Kentucky_, vol. 1 (Frankfort: John H. Harney, Public Printer, 1866); _Report of the Adjutant General of the State of Kentucky_, vol. 2 (Frankfort: John H. Harney, Public Printer, 1866).",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"organization",
  "birth_date"=>"1861",
  "death_date"=>"1865"},
 {"id"=>920,
  "name"=>"Office of the Inspector General of Kentucky",
  "entity_type"=>"organization",
  "biography"=>
   "The office of the military officer in charge of “the better organization of the Militia, and the collection and preservation of the public arms and other property” and to “convene a court of inquiry to examine into the qualifications of persons holding any office in the Active Militia, or in the Active Reserves; and in the Enrolled Militia when in the service of the State.” Resides in the Executive Branch of the Commonwealth of Kentucky. Civil War-era inspectors general: Simon Bolivar Buckner (1860-1861); Unoccupied (1861-1863); Daniel W. Lindsey (1863-1865); William H. Hays (1865); and James T. Bramlette (1865-1866).",
  "bibliography"=>
   "“An Act for the Better Organization of the Kentucky Militia,” _Acts of the General Assembly of the Commonwealth of Kentucky, Passed_, vol 1 (Frankfort: J. B. Major, State Printer, 1860), 28-33.\r\n\r\n _Report of the Adjutant General of the State of Kentucky, vol. 1_ (Frankfort: John H. Harney, Public Printer, 1866), VII.",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Military officer organizing the property and inquiries into military issues",
  "birth_date"=>"1793",
  "death_date"=>""},
 {"id"=>308,
  "name"=>"Frankfort, Kentucky",
  "entity_type"=>"place",
  "biography"=>"Capital of Kentucky. Seat of Franklin County, Kentucky. Located on the Kentucky River.\r\n",
  "bibliography"=>
   "Robert M. Rennick, _Kentucky Place Names_ (Lexington: University of Kentucky Press, 1987), 108. \r\n\r\n_USGS: Earth Explorer_, \"Frankfort, Kentucky,\" https://earthexplorer.usgs.gov/ (accessed on July 16, 2019).",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Capital of KY, seat of Franklin County",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>388,
  "name"=>"Office of the Adjutant General of Kentucky",
  "entity_type"=>"organization",
  "biography"=>
   "The office of the chief military officer and advisor to the Governor of the Commonwealth of Kentucky. Resides in the Executive Branch of the Commonwealth of Kentucky. Civil War-era Adjutant Generals: Scott Brown (1859-1861); John W. Finnell (1861-1863); John Boyle (1863-1864); Daniel W. Lindsey (1864-1867).",
  "bibliography"=>
   "Report of the Adjutant General of the State of Kentucky, vol. 1 (Frankfort: John H. Harney, Public Printer, 1866), VII.",
  "user_id"=>7,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Kentucky AGO",
  "birth_date"=>"1793",
  "death_date"=>""},
 {"id"=>44,
  "name"=>"Kentucky",
  "entity_type"=>"place",
  "biography"=>"State with capital at Frankfort, Kentucky. Located on the Ohio River.",
  "bibliography"=>
   "_The Kentucky Encyclopedia_, John E. Kleber, ed. (Lexington: University Press of Kentucky, 1992).\r\n\r\n_USGS: Earth Explorer_, \"Kentucky,\" https://earthexplorer.usgs.gov/ (accessed on June 14, 2019).",
  "user_id"=>1,
  "ref_id"=>"P001800",
  "gender"=>"male",
  "disambiguator"=>"State with capital at Frankfort",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>94,
  "name"=>"Thomas Elliott Bramlette",
  "entity_type"=>"person",
  "biography"=>
   "Twenty-third governor of the Commonwealth of Kentucky, attorney and soldier. Cumberland County, Kentucky, native. Married Sallie Travis Bramlette in September 1837. Father of James T. Bramlette, William L. Bramlette, Eugene Bramlette, and Corrina Bell Bramlette. Practiced law in Clinton County, Kentucky, and Columbia, Kentucky. Represented Cumberland and Clinton Counties in the House of Representatives of the Commonwealth of Kentucky from 1841 to 1843. Served as commonwealth's attorney of the Eighth Judicial District of Kentucky from 1848 to 1850. Owned two enslaved persons in 1850. Served as circuit judge of the Sixth Judicial District of Kentucky from 1856 to 1861.  Owned nine enslaved persons in 1860. Served as colonel of the 3rd Kentucky Volunteer Infantry Regiment (U.S.A.) from 1861 to 1862. Served as district attorney of the United States District Court for Kentucky in 1863. Elected governor of Kentucky in November 1863. Served as governor of the Commonwealth of Kentucky from September 1, 1863, to September 3, 1867. Owned law firm of Bramlette & Van Winkle in partnership with Ephraim L. Van Winkle.\r\n",
  "bibliography"=>
   "Ross A. Webb, “Thomas E. Bramlette (1863-1867)” in Lowell H. Harrison, ed., _Kentucky’s Governors_ (Lexington: University Press of Kentucky, 2004), 93-97\r\n\r\nLowell H. Harrison, \"Bramlette, Thomas Elliott\" in _The Kentucky Encyclopedia_, John E. Kleber, ed. (Lexington: University Press of Kentucky, 1992), 112-13.\r\n\r\n_Seventh Manuscript Census of the United States_ (1850), Population Schedules, Kentucky, Clinton County, District No. 1, p. 181A\r\n\r\n_Seventh Manuscript Census of the United States_ (1850), Slave Schedules, Kentucky, Clinton County, District No. 1, p. 335 (p. 2 of 2 on microfilm).\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Adair County, The Town of Columbia 1st Division, p. 13 (p. 2 of 3 on microfilm).\r\n\r\n_Ninth Manuscript Census of the United States_ (1870), Population Schedules, Kentucky, Jefferson County, Louisville Ward 8, p. 83B\r\n",
  "user_id"=>1,
  "ref_id"=>"N001000",
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Kentucky governor",
  "birth_date"=>"1817-01-03",
  "death_date"=>"1875-01-12"},
 {"id"=>873,
  "name"=>"Daniel Weisiger Lindsey",
  "entity_type"=>"person",
  "biography"=>
   "Kentucky soldier, attorney, and politician. Educated by B. B. Sayre in Frankfort, Kentucky. Graduated from the Kentucky Military Institute in 1854. Admitted to the bar and practiced law with his father, Thomas N. Lindsey, in Frankfort, Kentucky. Graduated from the University of Louisville Law School in 1857. Married to Catherine McIlavain Fitch Lindsey. Father of Antoinette Dumesnill Lindsey, Thomas Noble Lindsey, Jr., Henry Fitch Lindsey, Daniel Weisiger Lindsey, Jr, and Catherine F. Lindsey. Member of the Protestant Episcopal Church and the Masonic Lodge in Frankfort, Kentucky. Captain in the Kentucky State Guard in 1861. Appointed as chief of staff to General Thomas L. Crittenden in September 1861. Colonel in the 22nd Kentucky Volunteer Infantry Regiment (U.S.A.) from 1861 to 1863. Inspector general of Kentucky from 1863 to 1865. Adjutant general of Kentucky from 1864 to 1867, serving simultaneously as inspector general from 1864 to 1865.",
  "bibliography"=>
   "_Eighth Manuscript Census of the United States (1860)_, Population Schedules, Kentucky, Franklin County, Frankfort District No 1, p. 237. \r\n\r\n_Ninth Manuscript Census of the United States (1870)_, Population Schedules, Kentucky, Franklin County, Frankfort, p. 162A. \r\n\r\nH. Levin, _The Lawyers and Lawmakers of Kentucky_ (Chicago: The Lewis Publishing Company, 1897), 126-128. \r\n\r\n_The Biographical Encyclopædia of Kentucky of the Dead and Living Men of the Nineteenth Century_, vol. 1 (Cincinnati: J. M. Armstrong & Company, 1878), 468. \r\n\r\n_Report of the Adjutant General of the State of Kentucky_, vol. 1 (Frankfort: John H. Harney, Public Printer, 1866), VII. \r\n\r\n_Find A Grave_, “Daniel Weisiger Lindsey,” 1835-1917, Memorial #13775691, https://www.findagrave.com/cgi-bin/fg.cgi?page=gr&GRid=13775691 (accessed February 7, 2017).",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Adjutant General & Inspector General",
  "birth_date"=>"1835-10-04",
  "death_date"=>"1917-08-04"},
 {"id"=>1186,
  "name"=>"United States Army",
  "entity_type"=>"organization",
  "biography"=>
   "The organization of infantry, cavalry, and artillery military units in the United States government. Commander(s): Winfield Scott, George B. McClellan, Henry W. Halleck, and Ulysses S. Grant.",
  "bibliography"=>
   "Richard W. Stewart, ed. _American Military History_ (Washington, D.C.: Center of Military History, United States Army, 2009).",
  "user_id"=>7,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Military units in US govt - Infantry, cavalry, and artillery",
  "birth_date"=>"1775",
  "death_date"=>""},
 {"id"=>9430,
  "name"=>"Charles W. Quiggins",
  "entity_type"=>"person",
  "biography"=>
   "Hardin County, Kentucky, carpenter and soldier. Kentucky native. Son of John Quiggins and Phebe Quiggins. Resident in Hardin County in 1850. Carpenter in Hardin County in 1860. Served in the 9th Kentucky Volunteer Cavalry Regiment (U.S.A.) as first lieutenant from August 22, 1862 to September 11, 1863. Promoted to colonel of the 49th Kentucky Militia in June 1864. Served in the Capital Guard Regiment of the Kentucky State Militia as captain and major from June 7, 1864 to May 19, 1865.",
  "bibliography"=>
   "_Seventh Manuscript Census of the United States_ (1850), Population Schedules, Kentucky, Hardin County, upper or northern district, p. 308B.\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Kentucky, Hardin County, District 3, p. 95.\r\n\r\n_Compiled Service Records of Volunteer Union Soldiers who Served in Organizations From State of Kentucky_, NARA RG 94, Microfilm Series M397, Roll 98.\r\n\r\n_Find A Grave_, \"Charles Wesley Quiggins (1842-1921),\" Memorial #74640077, https://www.findagrave.com/memorial/74640077 (accessed October 3, 2018).\r\n\r\n_Report of the Adjutant General of the State of Kentucky_, vol. 2, 1861-1866 (Frankfort: Kentucky Yeoman Office, 1866), 758, 771.\r\n\r\nKYR-0003-101-0004.",
  "user_id"=>20,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Hardin County, carpenter and soldier",
  "birth_date"=>"1842-12-25",
  "death_date"=>"1921-06-02"},
 {"id"=>9339,
  "name"=>"W. E. Cox",
  "entity_type"=>"person",
  "biography"=>"Appointed aid-de-camp and 1st Lieutenant for the Kentucky National Legion on March 13, 1865.",
  "bibliography"=>"KYR-0002-060-0001.",
  "user_id"=>20,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Kentucky National Legion, Aid-de-camp",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>1581,
  "name"=>"William Hercules Hays",
  "entity_type"=>"person",
  "biography"=>
   "Washington County, Kentucky, attorney, soldier, and judge. Washington County native. Son of William Hays and Eleanor Burcham Hays. Educated in Washington County schools. Read law in Elizabethtown, Kentucky, under James W. Hays and attended law lectures in Glasgow, Kentucky. Admitted to the bar in 1845. Attorney in Springfield, Kentucky, in 1850. Owned twenty-seven enslaved persons in 1850. Elected county judge of Washington County in 1851. Elected county judge of Washington County in 1854. Owned thirty enslaved persons in 1860. Elected as a member of the House of Representatives of the Commonwealth of Kentucky in 1861. Served  in the 10th Kentucky Volunteer Infantry Regiment (U.S.A.) as lieutenant colonel and colonel from March 11, 1861 to December 6, 1864. Inspector general of Kentucky from March 1865 to November 1865.",
  "bibliography"=>
   "_Seventh Manuscript Census of the United States_ (1850), Population Schedules, Kentucky, Washington County, Springfield, p. 238A.\r\n\r\n_Seventh Manuscript Census of the United States_ (1850), Slave Schedules, Kentucky, Washington County, p. 507.\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Washington County, District 2, p. 470B (p. 14 of microfilm).\r\n\r\n_Report of the Adjutant General of the State of Kentucky_, vol. 1, 1861-1866 (Frankfort: Kentucky Yeoman Office, 1866), 806.\r\n\r\n_Birth and Death Records: Covington, Lexington, Louisville, and Newport – Microfilm (before 1911)_, KDLA, Roll #7007127. Louisville, Jefferson County Deaths, p. 17 (accessed via Ancestry.com). \r\n\r\n_The Biographical Encyclopædia of Kentucky of the Dead and Living Men of the Nineteenth Century_, vol. 1 (Cincinnati: J. M. Armstrong & Company, 1878), 281. \r\n\r\n\"Death of Judge Hays,\" _Courier-Journal_ (Louisville, Ky.), March 8, 1880, p. 4.",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"Colonel of 10th KY Infantry, Inspector Gen'l of KY",
  "birth_date"=>"1820-08-26",
  "death_date"=>"1880-03-07"},
 {"id"=>11002,
  "name"=>"30th Kentucky Volunteer Infantry (U.S.A.)",
  "entity_type"=>"organization",
  "biography"=>
   "Organized for one year of service in the United States Army. Companies A, B, E, and F mustered in at Frankfort, Kentucky on February 19, 1864; company F mustered in at Burnside on April 5, 1864. Mustered out on April 18, 1865. Commander(s): Colonel Francis N. Alexander.",
  "bibliography"=>
   "_Report of the Adjutant General of the State of Kentucky_, vol. 2, 1861-1866 (Frankfort: Kentucky Yeoman Office, 1866), 286-300.",
  "user_id"=>27,
  "ref_id"=>nil,
  "gender"=>"male",
  "lat"=>nil,
  "long"=>nil,
  "disambiguator"=>"military organization (U.S.A.)",
  "birth_date"=>"1864-03",
  "death_date"=>"1865-04"}]

KYR00010060066 = <<EOF
﻿<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0001-006-0066"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">Andrew Johnson, Requisition</title>
    <title level="a" type="parallel">CWG1112</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Anthony P Curtis</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Patrick A Lewis</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
     <title level="s" type="sub">Early Access</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Department for Libraries and Archives</repository>
      <collection>Office of the Governor, Thomas E. Bramlette: Governor's Official Correspondence File, Requisitions for the Return of Fugitives from Justice, 1863-1867</collection>
      <idno>BR6-80</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Nashville, Davidson County, Kentucky</placeName>
    <date when="1865-01-21">21 January 1865</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Legal/Financial</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p><figure type="seal"><ab>XVI.
<lb/>AGRICULTURE
<lb/>COMMERCE.</ab></figure>
<lb/>State of Tennessee.
<lb/>EXECUTIVE DEPARTMENT.<figure type="hr"/>
<lb/>To His Excellency, the Governor of The Commonwealth of Kentucky</p>
<p>Sir: It has been made known to me that a certain Patrick Meyer of our County of Davidson stands charged with having in the month of June 1864 <hi rend="str">the</hi> Committing the Crime of Grand Larceny by stealing and carrying away feloniously two mules the Property of Benjamin Groomis as will more fully appear from an authenticated copy of an affidavit herewith transmitted: And whereas, it has been made known to me that the said Patrick Meyer fled from justice and is now running at large in the State of Kentucky</p>
<p>Now, therefore, I, Andrew Johnson Governor of the State of Tennessee, in pursuance of the Act of Congress, entitled "An Act respecting Fugitives from Justice," do hereby demand that your Excellency will please cause the said Patrick Meyer to be arrested, if to be found within the limits of the State over which you preside, and have him safely delivered to James A Steele who is appointed Agent on the part of this State to receive the said fugitive from the civil authorities of the State of Kentucky to the end that <gap/> may be brought to the State of Tennessee and dealt with according to law.</p>
<p><figure type="seal"><ab>THE GREAT SEAL OF THE STATE OF TENNESSEE
<lb/>XVI.
<lb/>AGRICULTURE
<lb/>COMMERCE
<lb/>1796</ab></figure></p>
<p>In Testimony Whereof, I have hereunto set my hand, and caused the Great Seal of the State to be affixed, at Nashville, on the <date when="1865-01-21">21<hi rend="sup">st</hi> day of January 1865</date></p>
<p>Andrew Johnson
<lb/>By the Governor:
<lb/>Edward H. East Secretary of State.<pb/></p>
<p>Tennessee
<lb/>Requsition of Andrew Johnson Gov of Tenn
<lb/>Warrant issued <date when="1865-01-24">24<hi rend="sup">th </hi>Jany /65</date></p>
  </body>
 </text>
</TEI>
EOF

KYR00010060066_ANNOTATIONS_ATTRIBUTES =
[{"id"=>21543,
  "document_id"=>1560,
  "verbatim"=>"Andrew Johnson",
  "user_id"=>1,
  "entity_id"=>150,
  "hypothesis_annotation_id"=>"3xltBFI1EemlaivAh2Tcig",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"e of KentuckyNow, therefore, I, ",
  "suffix"=>" Governor of the State of Tennes",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]"},
 {"id"=>21548,
  "document_id"=>1560,
  "verbatim"=>"Tennessee",
  "user_id"=>1,
  "entity_id"=>2,
  "hypothesis_annotation_id"=>"kXPEglI1EemvNk-FRzpX6w",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"\nAGRICULTURE\nCOMMERCE.}State of ",
  "suffix"=>".\nEXECUTIVE DEPARTMENT.To His Ex",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>21547,
  "document_id"=>1560,
  "verbatim"=>"Governor",
  "user_id"=>1,
  "entity_id"=>94,
  "hypothesis_annotation_id"=>"sTXYllI1Eemcq8_Q_daHow",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"PARTMENT.To His Excellency, the ",
  "suffix"=>" of The Commonwealth of Kentucky",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]"},
 {"id"=>21541,
  "document_id"=>1560,
  "verbatim"=>"Nashville,",
  "user_id"=>1,
  "entity_id"=>5,
  "hypothesis_annotation_id"=>"APEsglI2EemWrpdoEoNtaA",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>" of the State to be affixed, at ",
  "suffix"=>" on the 21st day of January 1865",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>21545,
  "document_id"=>1560,
  "verbatim"=>"County of Davidson",
  "user_id"=>1,
  "entity_id"=>1927,
  "hypothesis_annotation_id"=>"z11ilFI1Eem5t7ddeEBAYQ",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>" a certain Patrick Meyer of our ",
  "suffix"=>" stands charged with having in t",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]"},
 {"id"=>21539,
  "document_id"=>1560,
  "verbatim"=>"Kentucky",
  "user_id"=>1,
  "entity_id"=>44,
  "hypothesis_annotation_id"=>"XVewzFI2EemlpyuYIsFVnw",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"Governor of The Commonwealth of ",
  "suffix"=>"Sir: It has been made known to m",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]"},
 {"id"=>21546,
  "document_id"=>1560,
  "verbatim"=>"Patrick Meyer",
  "user_id"=>1,
  "entity_id"=>10512,
  "hypothesis_annotation_id"=>"ywR_AlI1EemWQ8vSyWC7xg",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"made known to me that a certain ",
  "suffix"=>" of our County of Davidson stand",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]"},
 {"id"=>21549,
  "document_id"=>1560,
  "verbatim"=>"EXECUTIVE DEPARTMENT",
  "user_id"=>1,
  "entity_id"=>10513,
  "hypothesis_annotation_id"=>"i53kelI1Eemc-YPryYmV0g",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"E\nCOMMERCE.}State of Tennessee.\n",
  "suffix"=>".To His Excellency, the Governor",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>21544,
  "document_id"=>1560,
  "verbatim"=>"Benjamin Groomis",
  "user_id"=>1,
  "entity_id"=>10525,
  "hypothesis_annotation_id"=>"1ibsElI1Eemh5N9G3U9geg",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"ously two mules the Property of ",
  "suffix"=>" as will more fully appear from ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[3]"},
 {"id"=>21542,
  "document_id"=>1560,
  "verbatim"=>"James A Steele",
  "user_id"=>1,
  "entity_id"=>10526,
  "hypothesis_annotation_id"=>"8tyN5FI1EemGCwOhtG-kDQ",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"nd have him safely delivered to ",
  "suffix"=>" who is appointed Agent on the p",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]"},
 {"id"=>21540,
  "document_id"=>1560,
  "verbatim"=>"Edward H. East",
  "user_id"=>1,
  "entity_id"=>10527,
  "hypothesis_annotation_id"=>"ESYaVFI2Eemcu5eZGdT3mA",
  "hypothesis_user"=>"AU_PRT@hypothes.is",
  "prefix"=>"Andrew Johnson\nBy the Governor:\n",
  "suffix"=>" Secretary of State. Tennessee\nR",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[7]"}]

KYR00010060066_ENTITIES = [{"id"=>2,
  "name"=>"Tennessee",
  "entity_type"=>"place",
  "biography"=>
   "Capital at Nashville, Tennessee. Located on the Cumberland River.",
  "bibliography"=>
   "Paul H. Bergeron, Stephen V. Ash, and Jeanette Keith, _Tennesseans and Their History_ (Knoxville: University of Tennessee Press, 1999), 69.\r\n\r\n_USGS: Earth Explorer_, \"Tennessee,\" https://earthexplorer.usgs.gov/ (accessed on August 14, 2019).",
  "user_id"=>1,
  "ref_id"=>"P001001",
  "gender"=>"male",
  "disambiguator"=>"State with capital at Nashville",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>5,
  "name"=>"Nashville, Tennessee",
  "entity_type"=>"place",
  "biography"=>
   "Capital of Tennessee. Seat of Davidson County, Tennessee. Located on the Cumberland River.",
  "bibliography"=>
   "Ophelia Paine and John Lawrence Connelly, \"Nashville (Metropolitan Nashville/ Davidson County),\" _Tennessee Encyclopedia of History and Culture_, 2016, http://www.tennesseeencyclopedia.net/entry.php?rec=964 (accessed July 19, 2016).\r\n\r\n_USGS: Earth Explorer_, \"Nashville, Tennessee\" https://earthexplorer.usgs.gov/ (accessed on December 11, 2019).\r\n",
  "user_id"=>1,
  "ref_id"=>"P001004",
  "gender"=>"male",
  "disambiguator"=>"Capital of Tennessee, seat of Davidson County",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>44,
  "name"=>"Kentucky",
  "entity_type"=>"place",
  "biography"=>
   "State with capital at Frankfort, Kentucky. Located on the Ohio River.",
  "bibliography"=>
   "_The Kentucky Encyclopedia_, John E. Kleber, ed. (Lexington: University Press of Kentucky, 1992).\r\n\r\n_USGS: Earth Explorer_, \"Kentucky,\" https://earthexplorer.usgs.gov/ (accessed on June 14, 2019).",
  "user_id"=>1,
  "ref_id"=>"P001800",
  "gender"=>"male",
  "disambiguator"=>"State with capital at Frankfort",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>94,
  "name"=>"Thomas Elliott Bramlette",
  "entity_type"=>"person",
  "biography"=>
   "Twenty-third governor of the Commonwealth of Kentucky, attorney and soldier. Cumberland County, Kentucky, native. Married Sallie Travis Bramlette in September 1837. Father of James T. Bramlette, William L. Bramlette, Eugene Bramlette, and Corrina Bell Bramlette. Practiced law in Clinton County, Kentucky, and Columbia, Kentucky. Represented Cumberland and Clinton Counties in the House of Representatives of the Commonwealth of Kentucky from 1841 to 1843. Served as commonwealth's attorney of the Eighth Judicial District of Kentucky from 1848 to 1850. Owned two enslaved persons in 1850. Served as circuit judge of the Sixth Judicial District of Kentucky from 1856 to 1861.  Owned nine enslaved persons in 1860. Served as colonel of the 3rd Kentucky Volunteer Infantry Regiment (U.S.A.) from 1861 to 1862. Served as district attorney of the United States District Court for Kentucky in 1863. Elected governor of Kentucky in November 1863. Served as governor of the Commonwealth of Kentucky from September 1, 1863, to September 3, 1867. Owned law firm of Bramlette & Van Winkle in partnership with Ephraim L. Van Winkle.\r\n",
  "bibliography"=>
   "Ross A. Webb, “Thomas E. Bramlette (1863-1867)” in Lowell H. Harrison, ed., _Kentucky’s Governors_ (Lexington: University Press of Kentucky, 2004), 93-97\r\n\r\nLowell H. Harrison, \"Bramlette, Thomas Elliott\" in _The Kentucky Encyclopedia_, John E. Kleber, ed. (Lexington: University Press of Kentucky, 1992), 112-13.\r\n\r\n_Seventh Manuscript Census of the United States_ (1850), Population Schedules, Kentucky, Clinton County, District No. 1, p. 181A\r\n\r\n_Seventh Manuscript Census of the United States_ (1850), Slave Schedules, Kentucky, Clinton County, District No. 1, p. 335 (p. 2 of 2 on microfilm).\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Adair County, The Town of Columbia 1st Division, p. 13 (p. 2 of 3 on microfilm).\r\n\r\n_Ninth Manuscript Census of the United States_ (1870), Population Schedules, Kentucky, Jefferson County, Louisville Ward 8, p. 83B\r\n",
  "user_id"=>1,
  "ref_id"=>"N001000",
  "gender"=>"male",
  "disambiguator"=>"Kentucky governor",
  "birth_date"=>"1817-01-03",
  "death_date"=>"1875-01-12"},
 {"id"=>150,
  "name"=>"Andrew Johnson",
  "entity_type"=>"person",
  "biography"=>
   "Sixteenth vice president and Seventeenth president of the United States. Married to Eliza McCardle in 1827. Father of Martha Johnson Patterson, Charles Johnson, Mary Johnson Stover, Robert Johnson, and Andrew Johnson, Jr. Apprenticed to a tailor. Worked as a tailor in North Carolina, South Carolina, Alabama, and Greenville, Tennessee. Member of the Democratic Party. Elected as alderman of Greeneville, Tennessee, in 1829, and mayor of Greeneville in 1834. Member of the House of Representatives of the State of Tennessee from Greene County, Tennessee, from 1835 to 1837. Member of the House of Representatives of the State of Tennessee from Washington County, Tennessee, from 1839 to 1841. Democratic presidential elector in 1840. Member of the Senate of the State of Tennessee from 1841 to 1843. Member of the House of Representatives of the United States from the 1st District of Tennessee from 1843 to 1853. Governor of the State of Tennessee from 1853 to 1857. Member of the Senate of the United States from Tennessee from 1857 to 1862. Military governor of Tennessee, with the rank of brigadier general, from 1862 to 1865. Vice president of the United States on the National Union Party ticket with President Abraham Lincoln from March 1865 to April 1865. President of the United States, following the assassination of Lincoln, from April 1865 to March 1869.",
  "bibliography"=>
   "Andrew Johnson National Historic Site, National Park Service, s.v. “Andrew Johnson Timeline,” https://www.nps.gov/anjo/learn/historyculture/timeline.htm (accessed on October 24, 2016); Hans L. Trefousse, *Andrew Johnson: A Biography* (New York: W. W. Norton & Company, 1989).",
  "user_id"=>1,
  "ref_id"=>"N001801",
  "gender"=>"male",
  "disambiguator"=>"president",
  "birth_date"=>"1808-12-29",
  "death_date"=>"1875-07-31"},
 {"id"=>1927,
  "name"=>"Davidson County, Tennessee",
  "entity_type"=>"place",
  "biography"=>
   "Seat at Nashville, Tennessee. Located on the Cumberland River.",
  "bibliography"=>
   "Carroll Van West, \"Davidson County\" in _The Tennessee Encyclopedia of History and Culture_, version 2.0, tennesseeencyclopedia.net/entry.php?rec=356 (accessed September 18, 2017).",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"place",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>10512,
  "name"=>"Patrick Meyer",
  "entity_type"=>"person",
  "biography"=>
   "Appears in a requisition between Andrew Johnson and Thomas E. Bramlette in Nashville, Tennessee, on January 1865. Mentioned as a fugitive with a warrant for his arrest. ",
  "bibliography"=>"KYR-0001-006-0066.",
  "user_id"=>27,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Davidson County, Tennessee ",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>10513,
  "name"=>"Executive Department, Tennessee",
  "entity_type"=>"organization",
  "biography"=>
   "Office of the Governor, in which the constitution of Tennessee vests the executive power of the state. ",
  "bibliography"=>
   "\"Tennessee Constitution, 1796, Article 2, Section 1\" _Tennessee Founding and Landmark Documents_, https://cdm15138.contentdm.oclc.org/digital/collection/tfd/id/388 (Accessed April 1, 2019).  \"The Constitution of the State of Tennessee\" _Prepared by the Office of the Chief of Clerk of the Senate Revised November 4, 2014_, http://www.capitol.tn.gov/about/docs/tn-constitution.pdf (Accessed April 1, 2019). Connie L. Lester, \"Tennessee Governor's Office\" in_The Tennessee Encyclopedia of History and Culture_, Carroll Van West and Connie L. Lester, eds., http://Tennesseeencyclopedia.net/entries/Tennessee-governors-office/ (Accessed April 1, 2019). ",
  "user_id"=>27,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Tennessee office of the Governor",
  "birth_date"=>"1796",
  "death_date"=>""},
 {"id"=>10525,
  "name"=>"Benjamin Groomes",
  "entity_type"=>"person",
  "biography"=>
   "Nashville, Davidson County, Tennessee, cabinet maker. Virginia native. Married to Mary Parrish Groomes in Nashville on December 11, 1838. Father of Catherine Grooms, Thomas Randle Grooms, Benjamin Franklin Groomes, Sarah E. “Sally” Groomes, and Richard “Dick” Groomes. Cabinet maker in Nashville in 1850. Cabinet maker in Nashville 1860. Partner with James Cavert in Groomes, Cavert & Co. in Nashville in 1860. ",
  "bibliography"=>
   "_Seventh Manuscript Census of the United States_ (1850), Population Schedules, Tennessee, Davidson County, Nashville, p. 87A. \r\n_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Tennessee, Davidson County, Nashville, p. 434. \r\n_Tennessee Marriage Records_, Davidson County, Nashville,1838-1864, p.8. \r\n_Tennessee City Death Records_, 1872-1923, Davidson County, Nashville, p. 55. \r\n_Nashville City and Business Directory for 1860-1861_, vol.  V., (Nashville, TN: L. P. Williams & CO., Publishers and Proprietors, 1860), pp. 142, 182, 199. ",
  "user_id"=>27,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Nashville, Davidson County, Tennessee, cabinet maker",
  "birth_date"=>"c1814",
  "death_date"=>"1876-10-21"},
 {"id"=>10526,
  "name"=>"James A. Steele",
  "entity_type"=>"person",
  "biography"=>
   "Nashville, Davidson County, Tennessee, deputy marshal. Tennessee native. Carpenter in Nashville in 1860. Served as deputy marshal in Nashville from 1862 to 1865.",
  "bibliography"=>
   "_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Tennessee, Nashville, Davidson County, p. 393. \r\n\r\n\"The Nashville Union, 1862-06-26,\" The Ancestor Hunt, Tennessee Online Historical Newspapers Summary, https://chroniclingamerica.loc.gov/lccn/sn83025718/1862-06-26/ed-1/ (accessed April 2, 2019). \r\n\r\n\"The Nashville Union, 1865-01-27,\" The Ancestor Hunt, Tennessee Online Historical Newspapers Summary, https://chroniclingamerica.loc.gov/lccn/sn83025718/1865-01-27/ed-1/seq-4/ (accessed April 2, 2019). ",
  "user_id"=>27,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Nashville, Davidson County, Tennessee, deputy marshal",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>10527,
  "name"=>"Edward H. East",
  "entity_type"=>"person",
  "biography"=>
   "Nashville, Davidson County, Tennessee, attorney and politician. Nashville, Tennessee, native. Son of Edward Hyde East and Cecilia Buchanan East. Graduate of Washington Institute in Nashville, Tennessee, in 1850. Graduate of the Law School of Cumberland University in Lebanon, Tennessee, in 1854. Elected member of the Tennessee State Legislature from Davidson County in 1859. Partner with George G. Bradford in Bradford & East Attorneys at Law in 1860. Appointed Secretary of State of Tennessee from 1862 to 1865. Governor of Tennessee (interregnum) from March 4, 1865, to April 5, 1865. ",
  "bibliography"=>
   "_Seventh Manuscript Census of the United States_ (1850), Population Schedules, Tennessee, Davidson County, Nashville, p. 227A. \r\n_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Tennessee, Nashville, Davidson County, p. 380. \r\n_Find A Grave_, \"Edward Hyde East (October 1, 1830-November 12, 1904),\" Memorial #8005195, https://www.findagrave.com/memorial/8005195 (accessed March 31, 2019).\r\n _Nashville City and Business Directory for 1860-1861_, vol. V., (Nashville, TN: L. P. Williams & CO., Publishers and Proprietors, 1860), p. 239. \r\nJames Welch Patton, _Unionism and Reconstruction in Tennessee, 1860-1869_(Chapel Hill, NC: University of North Carolina Press, 1934), 34, 84, 89. \r\nWilliam S. Speer, _Sketches of Prominent Tennesseans, Containing Biographies and Records of Many of the Families Who Have Attained Prominence in Tennessee_ (Nashville, TN: A.B. Tavel, 1888), 196-199. \r\n",
  "user_id"=>27,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>
   "Nashville, Davidson County, Tennessee, attorney and politician ",
  "birth_date"=>"1830-10-01",
  "death_date"=>"1904-11-12"}]



KYR00022220021 = <<EOF
﻿<?xml version="1.0" encoding="UTF-8"?> 
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0002-222-0021"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">James F. Robinson, Jr., Receipt to Hannah Hays</title>
    <title level="a" type="parallel">CWG13710</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Elizabeth J Van Allen</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Anthony P Curtis</name>
    </respStmt>
    <respStmt>
     <resp n="proof_2">Double Proof by:</resp>
     <name>CWGK Staff</name>
    </respStmt>
   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Department of Military Affairs</repository>
      <collection>Misc. QM Expenditures, 1863-1865</collection>
      <idno>QMG Box 10; 1863 Office Expenses - Telegraph, Stationary - Transportation - Ordinance Stores; Bundle 3</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Frankfort, Franklin County, Kentucky</placeName>
    <date when="1863-03-02">2 March 1863</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Legal/Financial</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p>No. 22.<figure type="hr"/>
<lb/>The <hi rend="str">United States,</hi> State of Kentucky
<lb/>To Hannah Hays Dr.</p>
<p><table rend="rules">
<row>
  <cell><date when="1861">1861</date></cell>
  <cell/>
  <cell>DOLLARS.</cell>
  <cell>CTS.</cell>
</row>
<row>
  <cell><date when="1861-11-14">Nov 14</date></cell>
  <cell>To 4 Barels Flour-- &#36;5<hi rend="sup">00</hi></cell>
  <cell>20</cell>
  <cell>00</cell>
</row>
<row>
  <cell/>
  <cell/>
  <cell>&#36;20</cell>
  <cell>00</cell>
</row>
</table></p>
<p>196
<lb/><hi rend="underline">4</hi>
<lb/>784</p>
<p>Approved
<lb/>By order of the Governor
<lb/>Jno W Finnell
<lb/>Adjt Genl Ky Vols</p>
<p>I certify that the above account is correct and just: that the services were rendered as stated; and that they were necessary for the public service</p>
<p>B. F. Wilson
<lb/>Quartermaster-of Home Guards -- Under Coln<hi rend="underline"><hi rend="sup">l</hi></hi> Pope -- </p>
<p>Received at Frankfort Ky the <date when="1863-03-02">2<hi rend="sup">d</hi> of March 1863</date>, of James F Robinson Jr. Quartermaster <hi rend="str">U.S. Army,</hi> Ky Vols the sum of Twenty Dollars, and <gap/> cents, in full of the above account.</p>
<p>Hannah, Hays,</p>
<p>(DUPLICATES.)<pb/></p>
<p>No. 22.<figure type="hr"/>
<lb/>No. 106 ABSTRACT B "D" QR. 186<gap/><figure type="hr"/></p>
<p>Hannah Hays
<lb/>Dollars 20 <hi rend="sup">x</hi>/<hi rend="sub">100</hi>
<lb/>Paid <date when="1863-03-02">2<hi rend="sup">nd</hi> of <hi rend="str">Feb</hi>Mch 1863</date>
<lb/>Home Gd
<lb/>11</p>
<p>N A Rapier
<lb/>J198</p>
<p> -- Rapier -- Larue</p>
  </body>
 </text>
</TEI>
EOF


KYR00022220021_ANNOTATIONS_ATTRIBUTES = [{"id"=>20826,
  "document_id"=>1532,
  "verbatim"=>"State of Kentucky",
  "user_id"=>1,
  "entity_id"=>83,
  "hypothesis_annotation_id"=>"P1rfIArBEemZd1-pvq8w6Q",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"\n\n\n\n  No. 22.The United States, ",
  "suffix"=>"\nTo Hannah Hays Dr.1861DOLLARS.C",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]"},
 {"id"=>20824,
  "document_id"=>1532,
  "verbatim"=>"Governor",
  "user_id"=>1,
  "entity_id"=>98,
  "hypothesis_annotation_id"=>"ULlewgrBEemzV6veY2omzw",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"96\n4784Approved\nBy order of the ",
  "suffix"=>"\nJno W Finnell\nAdjt Genl Ky Vols",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>20823,
  "document_id"=>1532,
  "verbatim"=>"Jno W Finnell",
  "user_id"=>1,
  "entity_id"=>228,
  "hypothesis_annotation_id"=>"VLvBmgrBEemZeLPO1fyoyA",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"proved\nBy order of the Governor\n",
  "suffix"=>"\nAdjt Genl Ky VolsI certify that",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>20822,
  "document_id"=>1532,
  "verbatim"=>"Ky Vols",
  "user_id"=>1,
  "entity_id"=>870,
  "hypothesis_annotation_id"=>"WEL5jArBEemCpp8-SPkMDQ",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"overnor\nJno W Finnell\nAdjt Genl ",
  "suffix"=>"I certify that the above account",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>20820,
  "document_id"=>1532,
  "verbatim"=>"Home Guards",
  "user_id"=>1,
  "entity_id"=>902,
  "hypothesis_annotation_id"=>"YU_0YgrBEemN91fT3QLdLA",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"ceB. F. Wilson\nQuartermaster-of ",
  "suffix"=>" — Under Colnl Pope — Received a",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"},
 {"id"=>20818,
  "document_id"=>1532,
  "verbatim"=>"Frankfort",
  "user_id"=>1,
  "entity_id"=>308,
  "hypothesis_annotation_id"=>"lH7vCgrBEemCZq-JwkHi9g",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>" Under Colnl Pope — Received at ",
  "suffix"=>" Ky the 2d of March 1863, of Jam",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[9]"},
 {"id"=>20817,
  "document_id"=>1532,
  "verbatim"=>"ames F Robinson Jr",
  "user_id"=>1,
  "entity_id"=>234,
  "hypothesis_annotation_id"=>"mUwP1grBEemWC6sSzn8ZwQ",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"rt Ky the 2d of March 1863, of J",
  "suffix"=>". Quartermaster U.S. Army, Ky Vo",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[9]"},
 {"id"=>20825,
  "document_id"=>1532,
  "verbatim"=>"Hannah Hays",
  "user_id"=>1,
  "entity_id"=>10457,
  "hypothesis_annotation_id"=>"RC2xgArBEemuLP8PYMzZmg",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"ed States, State of Kentucky\nTo ",
  "suffix"=>" Dr.1861DOLLARS.CTS.Nov 14To 4 B",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]"},
 {"id"=>20821,
  "document_id"=>1532,
  "verbatim"=>"B. F. Wilson",
  "user_id"=>1,
  "entity_id"=>10458,
  "hypothesis_annotation_id"=>"XUdt-grBEemLrJPgycxiIQ",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"necessary for the public service",
  "suffix"=>"\nQuartermaster-of Home Guards — ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"},
 {"id"=>20816,
  "document_id"=>1532,
  "verbatim"=>"N A Rapier",
  "user_id"=>1,
  "entity_id"=>10459,
  "hypothesis_annotation_id"=>"onWxDArBEemWjP_P-CTT0g",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"aid 2nd of FebMch 1863Home Gd\n11",
  "suffix"=>"\nJ198 — Rapier — LarueCivil War ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[15]"},
 {"id"=>20819,
  "document_id"=>1532,
  "verbatim"=>"Pope",
  "user_id"=>1,
  "entity_id"=>5692,
  "hypothesis_annotation_id"=>"jcNBKgrBEemLreMpZNr7eg",
  "hypothesis_user"=>"BKirk@hypothes.is",
  "prefix"=>"er-of Home Guards — Under Colnl ",
  "suffix"=>" — Received at Frankfort Ky the ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[8]"},
 {"id"=>22341,
  "document_id"=>1532,
  "verbatim"=>"Adjt Genl ",
  "user_id"=>1,
  "entity_id"=>388,
  "hypothesis_annotation_id"=>"C06eloF9EemWdwc5E4SKXw",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"r of the Governor\nJno W Finnell\n",
  "suffix"=>"Ky VolsI certify that the above ",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[6]"},
 {"id"=>22335,
  "document_id"=>1532,
  "verbatim"=>"Quartermaster U.S. Army, Ky Vols ",
  "user_id"=>1,
  "entity_id"=>389,
  "hypothesis_annotation_id"=>"I8YiZIF9EemFpPNah59h9w",
  "hypothesis_user"=>"mdevelvis@hypothes.is",
  "prefix"=>"h 1863, of James F Robinson Jr. ",
  "suffix"=>"the sum of Twenty Dollars, and [",
  "start_container"=>
   "/div[2]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[9]"},
 {"id"=>24794,
  "document_id"=>1532,
  "verbatim"=>"Larue",
  "user_id"=>1,
  "entity_id"=>1718,
  "hypothesis_annotation_id"=>"_OTxVAVkEeql2V-llmsdSg",
  "hypothesis_user"=>"JMBKHS@hypothes.is",
  "prefix"=>"Gd\n11N A Rapier\nJ198 — Rapier — ",
  "suffix"=>"Civil War Governors of Kentucky ",
  "start_container"=>
   "/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[16]"}]


KYR00022220021_ENTITIES = [{"id"=>83,
  "name"=>"Commonwealth of Kentucky",
  "entity_type"=>"organization",
  "biography"=>
   "Administrative body of the state of Kentucky. Capital at Frankfort, Kentucky. Governor(s): Beriah Magoffin (1859-1862), James F. Robinson (1862-1863), and Thomas E. Bramlette (1863-1867).",
  "bibliography"=>
   "Paul Blanchard, \"Office of Governor\" in _The Kentucky Encyclopedia_, John E. Kleber, ed. (Lexington: University Press of Kentucky, 1992), 380; Malcolm E. Jewell, \"General Assembly\" in _The Kentucky Encyclopedia_, John E. Kleber, ed. (Lexington: University Press of Kentucky, 1992), 366; Paul J. Weber, \"Court System\" in _The Kentucky Encyclopedia_, John E. Kleber, ed. (Lexington: University Press of Kentucky, 1992), 233.",
  "user_id"=>1,
  "ref_id"=>"O001025",
  "gender"=>"male",
  "disambiguator"=>"state government org",
  "birth_date"=>"1792",
  "death_date"=>""},
 {"id"=>98,
  "name"=>"James Fisher Robinson",
  "entity_type"=>"person",
  "biography"=>
   "Twenty-second governor of the Commonwealth of Kentucky from August 18, 1862 to September 1, 1863. Son of Jonathan Robinson and Jane Black Robinson. Married Susan D. Mansell Robinson on December 26, 1821. Father of Emilie Jane Robinson and James F. Robinson, Jr. Married Willina S. Herndon Robinson on May 30, 1842. Father of Scott Herndon Robinson, John McCracken Robinson, George Sidney Robinson, Madison Johnson Robinson, Stephen Gano Robinson, Willa Ewing Robinson, Philip Eldon Robinson, and Stephen Gano Robinson. Educated at Forest Hill Academy and Transylvania University in Lexington, Kentucky. Owned thirty five enslaved persons in 1860. Trustee of Georgetown College. President of the Farmers' Bank of Georgetown. Represented Fayette and Scott counties in the Senate of the Commonwealth of Kentucky from 1851 to 1855. Represented Fayette and Scott counties in the Senate of the Commonwealth of Kentucky from 1861 until he became governor on August 18, 1862. Speaker of the Senate of the Commonwealth of Kentucky from September 3 to September 5, 1861. Speaker of the Senate of the Commonwealth of Kentucky from August 16 to August 18, 1862. Returned to practicing law and farming on retiring from politics in 1863.",
  "bibliography"=>
   "John David Smith, “James F. Robinson (1862-1863)” in Lowell H. Harrison, Ed., _Kentucky’s Governors_ (Lexington: University Press of Kentucky, 2004), 89-92. \r\n\r\nWilliam Henry Engle, _Pennsylvania Genealogies: Scotch-Irish and German_ (Harrisburg: Lane S. Hart, 1886), 553, 556-7. \r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Scott County, District No 1, p. 216B, 230, . \r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Scott County, District No 2, pp. 235, 236, 252.\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Jefferson County, Louisville Ward 4, p. 266.",
  "user_id"=>1,
  "ref_id"=>"N001004",
  "gender"=>"male",
  "disambiguator"=>
   "governor, state senator, businessman, attorney, and farmer",
  "birth_date"=>"1800-10-04",
  "death_date"=>"1882-10-31"},
 {"id"=>228,
  "name"=>"John William Finnell",
  "entity_type"=>"person",
  "biography"=>
   "Covington, Kentucky, attorney, politician, editor, and soldier. Winchester, Kentucky, native. Son of Nimrod L. Finnell. Married to Elizabeth Wall Finnell in Harrison County, Kentucky, on September 7, 1841. Married to Elizabeth S. Tureman Finnell in Nicholas County, Kentucky, on February 6, 1844. Father of Virginia Finnell, Ida Finnell, Joseph Finnell, and Nelly Finnell. Graduated from Transylvania University in Lexington, Kentucky, in 1838. Editor at the Lexington _Daily Intelligencer_ in Lexington in 1840. Read law with Richard H. Menefee. Graduated from law school at Transylvania University in 1841. Practiced law in Carlisle, Kentucky. Successful Whig candidate for the House of Representatives of the Commonwealth of Kentucky from Nicholas County, Kentucky, in 1843. Editor of the Frankfort _Commonwealth_ in Frankfort, Kentucky, from 1844 to 1848. Appointed secretary of state of the Commonwealth of Kentucky by John J. Crittenden in 1848. Appointed secretary of state of the Commonwealth of Kentucky by John LaRue Helm in 1850. Practiced law in Covington from 1852 to 1861. Represented Archibald Gaines in the fugitive slave case of Margaret Garner in Cincinnati, Ohio, in 1856. Delegate to the Constitutional Union Party national convention in Baltimore in 1860. Owned two enslaved people in Covington in 1860. Member of the House of Representatives of the Commonwealth of Kentucky from Kenton County, Kentucky, from 1861 to 1863. Adjutant general of the Commonwealth of Kentucky from October 12, 1861 to September 1863.",
  "bibliography"=>
   "_Kentucky Marriage Records_, Madison County Courthouse, Richmond, Kentucky, Harrison County Marriages, Film #001690281, p. 28 of microfilm.\r\n\r\n_Kentucky Marriage Records_, Madison County Courthouse, Richmond, Kentucky, Nicholas County Marriages, Film #000252392, p. 74 of microfilm.\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Kentucky, Kenton County, Covington Ward 4, p. 699\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Kenton County, City of Covington, p. 2\r\n\r\nLewis Collins and Richard H. Collins, _Collins' Historical Sketches of Kentucky_, vol. 2. Covington, KY: Collins & Co., 1874, 421, 437-38 \r\n\r\nMark Reinhardt, _Who Speaks for Margaret Garner?_ Minneapolis and London: University of Minnesota Press, 2010\r\n\r\n_Find A Grave_, \"John William Finnell (1821-1888),\" Memorial #13775594, https://www.findagrave.com/memorial/13775594 (accessed November 20, 2017).",
  "user_id"=>2,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"TAG, Kenton Co. State Rep",
  "birth_date"=>"1821-12-24",
  "death_date"=>"1888-01-25"},
 {"id"=>234,
  "name"=>"James Fisher Robinson, Jr.",
  "entity_type"=>"person",
  "biography"=>
   "Lexington, Kentucky, resident and Quartermaster General of Kentucky. Georgetown, Kentucky, native. Son of James Fisher Robinson and Susan D. Mansell Robinson. Married to Mary Wheeler Robinson in 1859. Graduated from Georgetown College in Georgetown in 1853. Merchant in Louisville in 1860. Quartermaster General of Kentucky from 1862 to 1863.",
  "bibliography"=>
   "_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Kentucky, Jefferson County, 4th Ward City of Louisville, p. 14. William Henry Perrin, ed., *History of Fayette County, Kentucky, with an Outline Sketch of the Blue Grass Region by Robert Peter, M. D., Professor of Chemistry in the Agricultural and Mechanical College, Chemist to the State Geological Society, Etc.* (Chicago, IL: O. L. Baskin and Company, 1882), p. 691. “Robinson, James Fisher, Jr., 1832-” *Social Networks and Archival Context*, http://socialarchive.iath.virginia.edu/ark:/99166/w6v1241s (accessed January 3, 2017).  *Find A Grave*, “James F. Robinson (November 25, 1832-1892),” Memorial #98031371, http://findagrave.com/memorial/98031371 (accessed February 23, 2018). ",
  "user_id"=>2,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"QMG of KY, Gov's son",
  "birth_date"=>"1832-11-25",
  "death_date"=>"1892"},
 {"id"=>308,
  "name"=>"Frankfort, Kentucky",
  "entity_type"=>"place",
  "biography"=>
   "Capital of Kentucky. Seat of Franklin County, Kentucky. Located on the Kentucky River.\r\n",
  "bibliography"=>
   "Robert M. Rennick, _Kentucky Place Names_ (Lexington: University of Kentucky Press, 1987), 108. \r\n\r\n_USGS: Earth Explorer_, \"Frankfort, Kentucky,\" https://earthexplorer.usgs.gov/ (accessed on July 16, 2019).",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Capital of KY, seat of Franklin County",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>388,
  "name"=>"Office of the Adjutant General of Kentucky",
  "entity_type"=>"organization",
  "biography"=>
   "The office of the chief military officer and advisor to the Governor of the Commonwealth of Kentucky. Resides in the Executive Branch of the Commonwealth of Kentucky. Civil War-era Adjutant Generals: Scott Brown (1859-1861); John W. Finnell (1861-1863); John Boyle (1863-1864); Daniel W. Lindsey (1864-1867).",
  "bibliography"=>
   "Report of the Adjutant General of the State of Kentucky, vol. 1 (Frankfort: John H. Harney, Public Printer, 1866), VII.",
  "user_id"=>7,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Kentucky AGO",
  "birth_date"=>"1793",
  "death_date"=>""},
 {"id"=>389,
  "name"=>"Office of the Quartermaster General of Kentucky",
  "entity_type"=>"organization",
  "biography"=>
   "Chief supply officer of the Commonwealth of Kentucky. Civil War-era quartermaster generals: W. A. Dudley (October 3,1861-October 30, 1862), James F. Robinson, Jr. (December 2, 1862-August 31, 1863), Samuel G. Suddarth (September 1, 1863-January 13, 1866).  ",
  "bibliography"=>
   "_Report of the Adjutant General of the State of Kentucky, vol. 1_ (Frankfort: John H. Harney, Public Printer, 1866), VII.",
  "user_id"=>7,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Kentucky",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>870,
  "name"=>"Kentucky Volunteers",
  "entity_type"=>"organization",
  "biography"=>
   "The official organization of Kentucky military forces under the command of the Adjutant General of Kentucky. Organized into infantry, cavalry, and artillery regiments. Civil War-era Adjutant Generals: Scott Brown (1859-1861); John W. Finnell (1861-1863); John Boyle (1863-1864); Daniel W. Lindsey (1864-1867).",
  "bibliography"=>
   "_Report of the Adjutant General of the State of Kentucky_, vol. 1 (Frankfort: John H. Harney, Public Printer, 1866); _Report of the Adjutant General of the State of Kentucky_, vol. 2 (Frankfort: John H. Harney, Public Printer, 1866).",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"organization",
  "birth_date"=>"1861",
  "death_date"=>"1865"},
 {"id"=>902,
  "name"=>"Kentucky Home Guard",
  "entity_type"=>"organization",
  "biography"=>
   "County level military organization primarily comprised of Union soldiers. Created in 1861 to counter the southern aligned Kentucky State Guard.",
  "bibliography"=>
   "Nicky Hughes, “Home Guard,” _The Kentucky Encyclopedia_, ed. John E. Kleber (Lexington: University Press of Kentucky, 1992), 438.",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>
   "Military organization of Union soldiers at the county level",
  "birth_date"=>"1861",
  "death_date"=>"1865"},
 {"id"=>1718,
  "name"=>"LaRue County, Kentucky",
  "entity_type"=>"place",
  "biography"=>"Seat at Hodgenville, Kentucky.",
  "bibliography"=>
   "Robert M. Rennick, *Kentucky Place Names* (Lexington: University of Kentucky Press, 1987), 166.",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"place",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>5692,
  "name"=>"Curran Pope",
  "entity_type"=>"person",
  "biography"=>
   "Louisville, Kentucky, soldier. Louisville native. Son of Worden Pope and Elizabeth Taylor Thruston Pope. Married Matilda Prather Jacob Pope. Father of John J. Pope, Patrick H. Pope, and Mary Tyler Pope. Graduate of the United States Military Academy at West Point in 1834. Second lieutenant in the United States Artillery in 1834. Assistant engineer on the Kentucky River and Cumberland River in 1835. Clerk of the Jefferson County Court in Jefferson County for seventeen years. Colonel of the Fifth Kentucky Volunteer Infantry Regiment (U.S.A.) until November 5, 1862.",
  "bibliography"=>
   "_The Biographical Encyclopædia of Kentucky of the Dead and Living Men of the Nineteenth Century_, vol. 1 (Cincinnati: J. M. Armstrong & Company, 1878), 115-116. \r\n\r\n_Find A Grave_, \"Col. Curran Pope (July 30, 1813-November 5, 1862),\" Memorial #57357318, http://www.findagrave.com/memorial/57357318 (accessed May 12, 2017).",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Colonel of the 5th Kentucky Infantry",
  "birth_date"=>"1813-07-30",
  "death_date"=>"1862-11-05"},
 {"id"=>10457,
  "name"=>"Hannah Hays",
  "entity_type"=>"person",
  "biography"=>
   "Nelson County, Kentucky, merchant. Native of Prussia. Mother of Emilia Hays, Paulina Hays, Frances Hays, and Josephine Hays. Merchant in Nelson County in 1860. Employed Julius Hays in Nelson County in 1860. ",
  "bibliography"=>
   "_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Kentucky, Nelson County, District 2, p. 29.\r\n\r\nKYR-0002-222-0021",
  "user_id"=>24,
  "ref_id"=>nil,
  "gender"=>"female",
  "disambiguator"=>"Nelson County, Kentucky, merchant",
  "birth_date"=>"c1821",
  "death_date"=>""},
 {"id"=>10458,
  "name"=>"B. F. Wilson",
  "entity_type"=>"person",
  "biography"=>
   "Mentioned as quartermaster of Kentucky Home Guards in receipt of payment to Hannah Hays on November 14, 1861.",
  "bibliography"=>"KYR-0002-222-0021",
  "user_id"=>24,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Kentucky, resident",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>10459,
  "name"=>"Nicholas A. Rapier",
  "entity_type"=>"person",
  "biography"=>
   "Larue County, Kentucky, farmer. Kentucky native. Married to Charlotte M. Boon Rapier in Larue County on April 26, 1844. Father of Charles H. Rapier, Silvester Rapier, F. B. Rapier, James E. Rapier, A. E. Rapier, and Monterey Rapier. Owned four enslaved persons in Larue County in 1850. Farmer in Larue County in 1850.  Owned four enslaved persons in Larue County in 1860. Farmer in Larue County in 1860.",
  "bibliography"=>
   "_Seventh Manuscript Census of the United States_ (1850), Population Schedules, Kentucky, Larue County, Hamiltons, p. 442A.\r\n\r\n_Seventh Manuscript Census of the United States_ (1850), Slave Schedules, Kentucky, Larue County, Hamiltons, p. 150\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Population Schedules, Kentucky, Larue County, p. 308.\r\n\r\n_Eighth Manuscript Census of the United States_ (1860), Slave Schedules, Kentucky, Larue County, p. 325B\r\n\r\n_Kentucky Marriage Records_, Madison County Courthouse, Richmond, Kentucky, Larue County Marriages, Film #000409559.\r\n\r\n_Find A Grave_, \"Nicholas A. Rapier (April 2, 1821-October 6, 1890),\" Memorial #6034487, http://www.findagrave.com/memorial/6034487 (accessed March 11, 2019).\r\n",
  "user_id"=>24,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Larue County, Kentucky, farmer",
  "birth_date"=>"1821-04-02",
  "death_date"=>"1890-10-06"}]




KYR00010290565_ANNOTATIONS_ATTRIBUTES =
 [{"id"=>9680,
  "document_id"=>764,
  "verbatim"=>"O, C, Egbert",
  "user_id"=>1,
  "entity_id"=>3489,
  "hypothesis_annotation_id"=>"vof6LDNiEeefNfexO-NCvQ",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"Tho. M. Freeman\nJ C Betterworth\n",
  "suffix"=>"\nE. Yeates\nJohn Mcmichael\nT D Ra",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9669,
  "document_id"=>764,
  "verbatim"=>"J. S. Littlepage Jr",
  "user_id"=>1,
  "entity_id"=>3487,
  "hypothesis_annotation_id"=>"_mCTjjNiEeeSFWetKUqY6g",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"tion mentionedNames of the Jury ",
  "suffix"=>"\nLawrenceburg\nKy\n               ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[3]"},
 {"id"=>9679,
  "document_id"=>764,
  "verbatim"=>"E. Yeates",
  "user_id"=>1,
  "entity_id"=>5240,
  "hypothesis_annotation_id"=>"xeMgxjNiEeePhD8dC5391w",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"an\nJ C Betterworth\nO, C, Egbert\n",
  "suffix"=>"\nJohn Mcmichael\nT D Rake\nJ J Car",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9678,
  "document_id"=>764,
  "verbatim"=>"John Mcmichael",
  "user_id"=>1,
  "entity_id"=>5243,
  "hypothesis_annotation_id"=>"yQpoSjNiEeeCxe8EO31aOg",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"terworth\nO, C, Egbert\nE. Yeates\n",
  "suffix"=>"\nT D Rake\nJ J Carter\nGeorge Sear",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9677,
  "document_id"=>764,
  "verbatim"=>"T D Rake",
  "user_id"=>1,
  "entity_id"=>5248,
  "hypothesis_annotation_id"=>"zLyYljNiEeeMcEP9Ey2xBA",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"Egbert\nE. Yeates\nJohn Mcmichael\n",
  "suffix"=>"\nJ J Carter\nGeorge Searcy\nE. N. ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9676,
  "document_id"=>764,
  "verbatim"=>"J J Carter",
  "user_id"=>1,
  "entity_id"=>5249,
  "hypothesis_annotation_id"=>"0wRY4jNiEeeA2QOVBqX7NQ",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>" Yeates\nJohn Mcmichael\nT D Rake\n",
  "suffix"=>"\nGeorge Searcy\nE. N. Berryman\nWm",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9675,
  "document_id"=>764,
  "verbatim"=>"George Searcy",
  "user_id"=>1,
  "entity_id"=>5253,
  "hypothesis_annotation_id"=>"4K_DgjNiEeeFXgPoTJB6Xg",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"n Mcmichael\nT D Rake\nJ J Carter\n",
  "suffix"=>"\nE. N. Berryman\nWm M. Neal\nP. A.",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9674,
  "document_id"=>764,
  "verbatim"=>"E. N. Berryman",
  "user_id"=>1,
  "entity_id"=>5254,
  "hypothesis_annotation_id"=>"5GFrejNiEeetMNtYWHaTTg",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"D Rake\nJ J Carter\nGeorge Searcy\n",
  "suffix"=>"\nWm M. Neal\nP. A. Spear\nB. Roach",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9673,
  "document_id"=>764,
  "verbatim"=>"Wm M. Neal",
  "user_id"=>1,
  "entity_id"=>5256,
  "hypothesis_annotation_id"=>"6B-s6jNiEeeMcVcW59x8Sg",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"er\nGeorge Searcy\nE. N. Berryman\n",
  "suffix"=>"\nP. A. Spear\nB. RoachI certify t",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9672,
  "document_id"=>764,
  "verbatim"=>"P. A. Spear",
  "user_id"=>1,
  "entity_id"=>5260,
  "hypothesis_annotation_id"=>"7FIb1jNiEeetMSe4LfF0wA",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"earcy\nE. N. Berryman\nWm M. Neal\n",
  "suffix"=>"\nB. RoachI certify that the abov",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9671,
  "document_id"=>764,
  "verbatim"=>"B. Roach",
  "user_id"=>1,
  "entity_id"=>5261,
  "hypothesis_annotation_id"=>"79PgUDNiEeepLzMHQqmabg",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"Berryman\nWm M. Neal\nP. A. Spear\n",
  "suffix"=>"I certify that the above names a",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9686,
  "document_id"=>764,
  "verbatim"=>"Ky",
  "user_id"=>1,
  "entity_id"=>83,
  "hypothesis_annotation_id"=>"m9FRVDNiEeeEcMM09UHmHw",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"\n\n\n\n\n\n\n\n\n\n\n  To the Governor of ",
  "suffix"=>" James F. Robinson, At the July ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>9685,
  "document_id"=>764,
  "verbatim"=>"James F. Robinson",
  "user_id"=>1,
  "entity_id"=>98,
  "hypothesis_annotation_id"=>"oBTAUjNiEeeAhOPun4wXLA",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"\n\n\n\n\n\n\n\n  To the Governor of Ky ",
  "suffix"=>", At the July term of the Anders",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>9684,
  "document_id"=>764,
  "verbatim"=>"Anderson Circuit Court",
  "user_id"=>1,
  "entity_id"=>341,
  "hypothesis_annotation_id"=>"pxQe8jNiEeetd8cuxHgy3g",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"binson, At the July term of the ",
  "suffix"=>" held in 1863your petitioner Hen",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]/date[1]"},
 {"id"=>9683,
  "document_id"=>764,
  "verbatim"=>"Henry Gee",
  "user_id"=>1,
  "entity_id"=>5202,
  "hypothesis_annotation_id"=>"q7vdADNiEeeAhX-M1QbJUQ",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>"urt held in 1863your petitioner ",
  "suffix"=>" was fined the sum of fifty doll",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>9682,
  "document_id"=>764,
  "verbatim"=>"Tho. M. Freeman",
  "user_id"=>1,
  "entity_id"=>5206,
  "hypothesis_annotation_id"=>"ttv2XDNiEee-6RcO17-jlg",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>" and the fine be remited. Jury.\n",
  "suffix"=>"\nJ C Betterworth\nO, C, Egbert\nE.",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>9681,
  "document_id"=>764,
  "verbatim"=>"J C Betterworth",
  "user_id"=>1,
  "entity_id"=>5239,
  "hypothesis_annotation_id"=>"uo84SjNiEee2fiO4l8rz9A",
  "hypothesis_user"=>"hannahodaniel@hypothes.is",
  "prefix"=>" remited. Jury.\nTho. M. Freeman\n",
  "suffix"=>"\nO, C, Egbert\nE. Yeates\nJohn Mcm",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>28139,
  "document_id"=>764,
  "verbatim"=>"C H Fenwick",
  "user_id"=>1,
  "entity_id"=>12585,
  "hypothesis_annotation_id"=>"D6pxdpAKEeqiYj99CFlA8w",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"e case in the petition mentioned",
  "suffix"=>" c a c c\nNames of the Jury J. S.",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>28138,
  "document_id"=>764,
  "verbatim"=>"Ky",
  "user_id"=>1,
  "entity_id"=>44,
  "hypothesis_annotation_id"=>"JjTf5JAKEeqbxTvFrBqFiw",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>" J. S. Littlepage JrLawrenceburg",
  "suffix"=>"Civil War Governors of Kentucky ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]"}
  ]


KYR00010290565_ENTITIES = [{"id"=>1867,
  "name"=>"Lawrenceburg, Kentucky",
  "entity_type"=>"place",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"place - Seat of Anderson County, KY",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>3489,
  "name"=>"Oliver C. Egbert",
  "entity_type"=>"person",
  "user_id"=>11,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, officer",
  "birth_date"=>"c1808",
  "death_date"=>""},
 {"id"=>3487,
  "name"=>"James S. Littlepage, Jr.",
  "entity_type"=>"person",
  "user_id"=>11,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, attorney",
  "birth_date"=>"c1828",
  "death_date"=>"1864-10"},
 {"id"=>5240,
  "name"=>"Enoch Yeates",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer",
  "birth_date"=>"1812-11-15",
  "death_date"=>"1878-02-27"},
 {"id"=>5243,
  "name"=>"John McMichael",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer",
  "birth_date"=>"c1813",
  "death_date"=>""},
 {"id"=>5248,
  "name"=>"John D. Rake",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Franklin County and Anderson County, Kentucky, cabinet maker.",
  "birth_date"=>"c1799",
  "death_date"=>""},
 {"id"=>5249,
  "name"=>"Joseph J. Carter",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer",
  "birth_date"=>"c1820",
  "death_date"=>""},
 {"id"=>5253,
  "name"=>"George W. Searcy",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer",
  "birth_date"=>"1827-03-03",
  "death_date"=>"1896-05-17"},
 {"id"=>5254,
  "name"=>"E. N. Berryman",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, merchant",
  "birth_date"=>"c1828",
  "death_date"=>""},
 {"id"=>5256,
  "name"=>"William M. Neal",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer",
  "birth_date"=>"c1818",
  "death_date"=>""},
 {"id"=>5260,
  "name"=>"Peyton A. Spears",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer",
  "birth_date"=>"c1812",
  "death_date"=>""},
 {"id"=>5261,
  "name"=>"Bailey Roach",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, merchant",
  "birth_date"=>"1835-01-10",
  "death_date"=>"1902-03-01"},
{"id"=>83,
  "name"=>"Commonwealth of Kentucky",
  "entity_type"=>"organization",
  "user_id"=>1,
  "ref_id"=>"O001025",
  "gender"=>"male",
  "disambiguator"=>"state government org",
  "birth_date"=>"1792",
  "death_date"=>""},
 {"id"=>98,
  "name"=>"James Fisher Robinson",
  "entity_type"=>"person",
  "user_id"=>1,
  "ref_id"=>"N001004",
  "gender"=>"male",
  "disambiguator"=>"governor, state senator, businessman, attorney, and farmer",
  "birth_date"=>"1800-10-04",
  "death_date"=>"1882-10-31"},
 {"id"=>341,
  "name"=>"Anderson Circuit Court",
  "entity_type"=>"organization",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Court in Anderson County, KY",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>5202,
  "name"=>"Henry Gee",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farm laborer",
  "birth_date"=>"c1839",
  "death_date"=>""},
 {"id"=>5206,
  "name"=>"Thomas M. Freeman",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer",
  "birth_date"=>"c1809",
  "death_date"=>"1886-04-21"},
 {"id"=>5239,
  "name"=>"John C. Betterworth",
  "entity_type"=>"person",
  "user_id"=>10,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, farmer and hatter",
  "birth_date"=>"c1825",
  "death_date"=>""},
{"id"=>12585,
  "name"=>"Cabel Harrison Fenwick",
  "entity_type"=>"person",
  "user_id"=>29,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Anderson County, Kentucky, attorney and court clerk",
  "birth_date"=>"c1805",
  "death_date"=>""},
 {"id"=>44,
  "name"=>"Kentucky",
  "entity_type"=>"place",
  "user_id"=>1,
  "ref_id"=>"P001800",
  "gender"=>"male",
  "disambiguator"=>"Place. State with capital at Frankfort",
  "birth_date"=>"",
  "death_date"=>""}]


  KYR00010040310 = <<EOF
﻿<?xml version="1.0" encoding="UTF-8"?> 
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0001-004-0310"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">L. A. Wood to Thomas E. Bramlette</title>
    <title level="a" type="parallel">CWG4429</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Anthony P Curtis</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Matthew C Hulbert</name>
    </respStmt>
    <respStmt>
     <resp n="proof_2">Double Proof by:</resp>
     <name>CWGK Staff</name>
    </respStmt>
   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Department for Libraries and Archives</repository>
      <collection>Office of the Governor, Thomas E. Bramlette: Governor's official correspondence file, petitions for pardons, remissions, and respites 1863-1867</collection>
      <idno>BR8-487</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Louisville, Jefferson County, Kentucky</placeName>
    <date when="1865-02-23">23 February 1865</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Correspondence</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p>L. A. WOOD
<lb/>ATTORNEY AT LAW,
<lb/>LOUISVILLE, KY.</p>
<p>OFFICE NO. 15 COURT PLACE.<figure type="hr"/>
<lb/>Louisville, Ky <date when="1865-02-23">Feby 23<hi rend="sup">d</hi> 1865</date>
<lb/>His Excellency Gov. Thos. E. Bramlette
<lb/>Frankfort Ky
<lb/>Dear Sir:</p>
<p>As. I. was conizant of all the facts and circumstances in the case of Wm Schofield from his arrest up to his conviction, I deem it proper, to State <hi rend="str">that</hi> without going into a detailed account of the facts &amp; circumStances, that they were wholy inSufficient in my opinion to establish his guilt. I was his counsel up until he told me that he was going to plead guilty- He Still told me that he was not guilty; but Said he had rather plead guilty and get, (as he hoped by pleading guilty he would) only one year, than to lie in Jail until the next term of the court.</p>
<p>I talked with his witness Some time before the trial, and if they could have been got there. I think <hi rend="str">y</hi>beyond a doubt that there testimony would have inSured an acquittal. But they had, Some of them left the State and others of them we did not know where they were; and he Said rather than lie in jail to the next court he would plead guilty. I then refused to defend him; and did not defend him on the trial. I have no contingent fee in this case; nor am I to be benefitted a farthing by his being pardoned. But I never did believe he Stole<pb/>
<lb/>the money; and I do not believe that the public weal requires that he Should be retained in Prison. And as it would So rejoice the hearts of his distressed mother and the whole family I do hope you will pardon him</p>
<p>Yours Truly
<lb/>L,, A. Wood</p>
  </body>
 </text>
</TEI>
EOF


  KYR00010040310_ANNOTATIONS = [{"id"=>27143,
  "document_id"=>1860,
  "verbatim"=>"L. A. WOOD",
  "user_id"=>1,
  "entity_id"=>975,
  "hypothesis_annotation_id"=>"gcJ1eGCuEeqGTcst6tvkJQ",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>"load XML\n      \n    \n    \n\n\n\n\n  ",
  "suffix"=>"\nATTORNEY AT LAW,\nLOUISVILLE, KY",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>27142,
  "document_id"=>1860,
  "verbatim"=>"LOUISVILLE",
  "user_id"=>1,
  "entity_id"=>337,
  "hypothesis_annotation_id"=>"jCP3imCuEeqCFbNdQfmPVw",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>"\n\n  L. A. WOOD\nATTORNEY AT LAW,\n",
  "suffix"=>", KY.OFFICE NO. 15 COURT PLACE.L",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>27141,
  "document_id"=>1860,
  "verbatim"=>"Thos. E. Bramlette",
  "user_id"=>1,
  "entity_id"=>94,
  "hypothesis_annotation_id"=>"lOVRUmCuEeqxfYtDYebtmg",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>"eby 23d 1865His Excellency Gov. ",
  "suffix"=>"\nFrankfort Ky\nDear Sir:As. I. wa",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]"},
 {"id"=>27140,
  "document_id"=>1860,
  "verbatim"=>"Frankfort",
  "user_id"=>1,
  "entity_id"=>308,
  "hypothesis_annotation_id"=>"nnQDHGCuEeqPC2uqJQY5Cw",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>"ellency Gov. Thos. E. Bramlette\n",
  "suffix"=>" Ky\nDear Sir:As. I. was conizant",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]"},
 {"id"=>27139,
  "document_id"=>1860,
  "verbatim"=>"Wm Schofield ",
  "user_id"=>1,
  "entity_id"=>12252,
  "hypothesis_annotation_id"=>"rCyrYmCuEeq8i7OOvQs8ew",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>"nd circumstances in the case of ",
  "suffix"=>"from his arrest up to his convic",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]"},
 {"id"=>27137,
  "document_id"=>1860,
  "verbatim"=>"mother ",
  "user_id"=>1,
  "entity_id"=>12324,
  "hypothesis_annotation_id"=>"1VfSAGCuEeq6fkcrQm7cYg",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>"ce the hearts of his distressed ",
  "suffix"=>"and the whole family I do hope y",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[5]"},
 {"id"=>27351,
  "document_id"=>1860,
  "verbatim"=>"Jail",
  "user_id"=>1,
  "entity_id"=>1161,
  "hypothesis_annotation_id"=>"9ONZRmlkEeqY56P2B1w71A",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>") only one year, than to lie in ",
  "suffix"=>" until the next term of the cour",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]"},
 {"id"=>27350,
  "document_id"=>1860,
  "verbatim"=>"court",
  "user_id"=>1,
  "entity_id"=>59,
  "hypothesis_annotation_id"=>"_YX1XmlkEeqVTEd-3mbnzw",
  "hypothesis_user"=>"KBailey27@hypothes.is",
  "prefix"=>"Jail until the next term of the ",
  "suffix"=>".I talked with his witness Some ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[4]"},
 {"id"=>27498,
  "document_id"=>1860,
  "verbatim"=>"KY",
  "user_id"=>1,
  "entity_id"=>44,
  "hypothesis_annotation_id"=>"TSRTWnNeEeqGvTOWtQxPqw",
  "hypothesis_user"=>"GRA1@hypothes.is",
  "prefix"=>"OD\nATTORNEY AT LAW,\nLOUISVILLE, ",
  "suffix"=>".OFFICE NO. 15 COURT PLACE.Louis",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"}]





  KYR00010040310_ENTITIES = [{"id"=>975,
  "name"=>"Logan Adams Wood",
  "entity_type"=>"person",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Louisville, Kentucky, attorney",
  "birth_date"=>"1829-11-04",
  "death_date"=>"1904-01-18"},
 {"id"=>337,
  "name"=>"Louisville, Kentucky",
  "entity_type"=>"place",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Seat of Jefferson County, Kentucky",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>94,
  "name"=>"Thomas Elliott Bramlette",
  "entity_type"=>"person",
  "user_id"=>1,
  "ref_id"=>"N001000",
  "gender"=>"male",
  "disambiguator"=>"Kentucky governor",
  "birth_date"=>"1817-01-03",
  "death_date"=>"1875-01-12"},
 {"id"=>308,
  "name"=>"Frankfort, Kentucky",
  "entity_type"=>"place",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Capital of KY, seat of Franklin County",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>12252,
  "name"=>"William Schofield (Bennett) ",
  "entity_type"=>"person",
  "user_id"=>33,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Jefferson County, Kentucky, resident",
  "birth_date"=>"c1813",
  "death_date"=>""},
 {"id"=>12324,
  "name"=>"[Unknown] Schofield",
  "entity_type"=>"person",
  "user_id"=>33,
  "ref_id"=>nil,
  "gender"=>"female",
  "disambiguator"=>"Louisville, Kentucky, resident",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>1161,
  "name"=>"Jefferson County Jail",
  "entity_type"=>"organization",
  "user_id"=>8,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Jail for Louisville ",
  "birth_date"=>"1846",
  "death_date"=>"1905"},
 {"id"=>59,
  "name"=>"Jefferson Circuit Court",
  "entity_type"=>"organization",
  "user_id"=>1,
  "ref_id"=>"O001000",
  "gender"=>"male",
  "disambiguator"=>"org - 7th judicial district",
  "birth_date"=>"1850",
  "death_date"=>""},
 {"id"=>44,
  "name"=>"Kentucky",
  "entity_type"=>"place",
  "user_id"=>1,
  "ref_id"=>"P001800",
  "gender"=>"male",
  "disambiguator"=>"Place. State with capital at Frankfort",
  "birth_date"=>"",
  "death_date"=>""}]


KYR00010040300 = <<EOF
﻿<?xml version="1.0" encoding="UTF-8"?> 
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0001-004-0300"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">David Dills et al. to Thomas E. Bramlette</title>
    <title level="a" type="parallel">CWG4419</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Anthony P Curtis</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Matthew C Hulbert</name>
    </respStmt>
    <respStmt>
     <resp n="proof_2">Double Proof by:</resp>
     <name>CWGK Staff</name>
    </respStmt>
   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Department for Libraries and Archives</repository>
      <collection>Office of the Governor, Thomas E. Bramlette: Governor's official correspondence file, petitions for pardons, remissions, and respites 1863-1867</collection>
      <idno>BR8-474</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Cynthiana, Harrison County, Kentucky</placeName>
    <date when="1863-11-04">4 November 1863</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Petition</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p>Cynthiana Ky
<lb/><date when="1863-11-04">Novr 4<hi rend="underline"><hi rend="sup">th</hi></hi> 1863</date>
<lb/>To His Excellency
<lb/>Govenor Tho<hi rend="underline"><hi rend="sup">s</hi></hi> E. Bramlette,</p>
<p>We the undersigned would most respectfully state that at the <date when="--05">May Term</date> of the Harrison Circuit Court an indictment was found by the Grand Jury of said Court against one Guy Bryant for selling liquor to a miner by the name of Alonzo Lyter, The proof shows conclusively that at the time the liquor was sold to said Lyter that his (Lyters) Guardian &amp; Step Father was present &amp; drank with him, thereby giving tacit consent to his drinking the Spirits, but the Jury under the Law, &amp; instructions of the Court were found to find said Bryant guilty of the charge in the indictment &amp; fined him fifty Dollar, <hi rend="str">the least amount fixed by the Statute</hi>, &amp; the Jury whose names are hereto signed together with other citizens who Know the circumstances &amp; were present at the trial, would hereby most respectfully recommend Mr Bryant to the clemency of the Executive.
<lb/>over<pb/></p>
<p><milestone unit="column" n="2"/><cb n="1"/>David Dills Foreman
<lb/>Wm Hutcheron
<lb/>J B Hickman
<lb/>J H Debrulan
<lb/>F. Cummins
<lb/>C. G. Land
<lb/>R J Levi
<lb/>R S Holmes
<lb/>george <unclear>dumis</unclear>
<lb/>Wm Hinkson
<lb/>B, F. Dills
<lb/>Wm G Courtney
<lb/>Jury on this case</p>
<p>J, B, McClintock SHC
<lb/>F A Rankin Step Father &amp; Guardian of the Boy that Bought the ^whiskey^
<lb/>T. J. Terry
<lb/>T. W. Hedges
<lb/>Alonzo Lyter
<lb/>M. L. Broadwell P,J,H,C
<lb/>David A Groves
<lb/>T. R, Rankin
<lb/>Jno T. M<hi rend="sup">c</hi>Clintock Dep Clk</p>
<p><cb n="2"/>I certify that the statement of the <unclear/> in the within petition is Substantially correct</p>
<p>R B Carpenter
<lb/>Comth atty</p>
<p>G, W, Berry Capt &amp; Pro Mar 6<hi rend="sup"> -- </hi>/Destrict Ky<milestone unit="column" n="1"/></p>
<p>Harrison Cir Ct
<lb/>vs
<lb/>Guy Bryant
<lb/>Tipling
<lb/>&#36;50
<lb/>Remitted
<lb/><date when="1863-11-10">10<hi rend="sup">th</hi> Nov/63</date></p>
  </body>
 </text>
</TEI>
EOF

KYR00010040300_V2 = <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<TEI xmlns="http://www.tei-c.org/ns/1.0" xml:id="KYR-0001-004-0300"> 
 <teiHeader>
  <fileDesc>
   <titleStmt>
    <title level="a" type="main">David Dills et al. to Thomas E. Bramlette</title>
    <title level="a" type="parallel">CWG4419</title>
    <respStmt>
     <resp n="transcriber">Transcribed by:</resp>
     <name>Anthony P Curtis</name>
    </respStmt>
    <respStmt>
     <resp n="proof_1">Single Proof by:</resp>
     <name>Whitney R Smith</name>
    </respStmt>
    <respStmt>
     <resp n="encoding">Markup by:</resp>
     <name>Matthew C Hulbert</name>
    </respStmt>
    <respStmt>
     <resp n="proof_2">Double Proof by:</resp>
     <name>CWGK Staff</name>
    </respStmt><respStmt>
<resp n="reviewed">Fact checked by</resp>
<name>Sarah Haywood</name>
</respStmt>
<respStmt>
<resp n="needs_review">Annotated by</resp>
<name>Carl Creason</name>
</respStmt>

   </titleStmt>
   <publicationStmt>
    <publisher>Kentucky Historical Society</publisher>
    <pubPlace>Frankfort, Kentucky</pubPlace>
    <availability>
     <p>This image and transcription is publicly accessible. The image appears courtesy of the repository named in the Source Description. The transcription and annotation were undertaken by Kentucky Historical Society staff, volunteers, and interns. If referencing this document title, accession number, and permanent URL.</p>
    </availability>
   </publicationStmt>
   <seriesStmt>
    <title level="s" type="main">Civil War Governors of Kentucky Digital Documentary Edition</title>
    <respStmt>
     <resp>Project Director</resp>
     <name>Patrick A. Lewis</name>
    </respStmt>
   </seriesStmt>
   <sourceDesc>
    <msDesc>
    <msIdentifier>
      <country>UNITED STATES</country>
      <region>KY</region>
      <settlement>Frankfort</settlement>
      <repository>Kentucky Department for Libraries and Archives</repository>
      <collection>Office of the Governor, Thomas E. Bramlette: Governor's official correspondence file, petitions for pardons, remissions, and respites 1863-1867</collection>
      <idno>BR8-474</idno>
     </msIdentifier>
    </msDesc>
   </sourceDesc>
  </fileDesc>
  <profileDesc>
   <creation>
    <placeName>Cynthiana, Harrison County, Kentucky</placeName>
    <date when="1863-11-04">4 November 1863</date>
   </creation>
   <textClass>
    <keywords>
     <term type="genre">Petition</term>
    </keywords>
   </textClass>
  </profileDesc>
 </teiHeader>
 <text>
  <body>
   <p><placeName ref="cwgk:P00005772">Cynthiana</placeName> <placeName ref="cwgk:P001800">Ky</placeName>
<lb/><date when="1863-11-04">Novr 4<hi rend="underline"><hi rend="sup">th</hi></hi> 1863</date>
<lb/>To His Excellency
<lb/>Govenor <persName ref="cwgk:N001000">Tho<hi rend="underline"><hi rend="sup">s</hi></hi> E. Bramlette</persName>,</p>
<p>We the undersigned would most respectfully state that at the <date when="--05">May Term</date> of the <orgName ref="cwgk:O00000405">Harrison Circuit Court</orgName> an indictment was found by the Grand Jury of said Court against one <persName ref="cwgk:N00012170">Guy Bryant</persName> for selling liquor to a miner by the name of <persName ref="cwgk:N00012171">Alonzo Lyter</persName>, The proof shows conclusively that at the time the liquor was sold to said Lyter that his (Lyters) Guardian &amp; Step Father was present &amp; drank with him, thereby giving tacit consent to his drinking the Spirits, but the Jury under the Law, &amp; instructions of the Court were found to find said Bryant guilty of the charge in the indictment &amp; fined him fifty Dollar, <hi rend="str">the least amount fixed by the Statute</hi>, &amp; the Jury whose names are hereto signed together with other citizens who Know the circumstances &amp; were present at the trial, would hereby most respectfully recommend Mr Bryant to the clemency of the Executive.
<lb/>over<pb/></p>
<p><milestone unit="column" n="2"/><cb n="1"/><persName ref="cwgk:N00012173">David Dills Foreman</persName>
<lb/><persName ref="cwgk:N00012174">Wm Hutcheron</persName>
<lb/><persName ref="cwgk:N00012176">J B Hickman</persName>
<lb/><persName ref="cwgk:N00012177">J H Debrulan</persName>
<lb/><persName ref="cwgk:N00012178">F. Cummins</persName>
<lb/><persName ref="cwgk:N00011410">C. G. Land</persName>
<lb/><persName ref="cwgk:N00012179">R J Levi</persName>
<lb/><persName ref="cwgk:N00012181">R S Holmes</persName>
<lb/>george <unclear>dumis</unclear>
<lb/><persName ref="cwgk:N00012182">Wm Hinkson</persName>
<lb/><persName ref="cwgk:N00012183">B, F. Dills</persName>
<lb/><persName ref="cwgk:N00012184">Wm G Courtney</persName>
<lb/>Jury on this case</p>
<p>J, B, McClintock SHC
<lb/><lb/><persName ref="cwgk:N00012191">T. J. Terry</persName>
<lb/>T. W. Hedges
<lb/>Alonzo Lyter
<lb/><persName ref="cwgk:N00005522">M. L. Broadwell</persName> P,J,H,C
<lb/><lb/><lb/></p>
<p><cb n="2"/>I certify that the statement of the <unclear/> in the within petition is Substantially correct</p>
<p><persName ref="cwgk:N00005226">R B Carpenter</persName>
<lb/>Comth atty</p>
<p><persName ref="cwgk:N00012185">G, W, Berry</persName> Capt &amp; Pro Mar 6<hi rend="sup"> -- </hi>/Destrict Ky<milestone unit="column" n="1"/></p>
<p>Harrison Cir Ct
<lb/>vs
<lb/>Guy Bryant
<lb/>Tipling
<lb/>$50
<lb/>Remitted
<lb/><date when="1863-11-10">10<hi rend="sup">th</hi> Nov/63</date></p>
  </body>
 </text>
</TEI>
EOF

KYR00010040300_ENTITIES = 
[{"id"=>12182,
  "name"=>"William A. Hinkson",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"1815-04-05",
  "death_date"=>"1886-09-20"},
 {"id"=>12183,
  "name"=>"Benjamin F. Dills",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1822",
  "death_date"=>"1877-06-29"},
 {"id"=>12184,
  "name"=>"William G. Courtney",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farm hand",
  "birth_date"=>"c1844",
  "death_date"=>""},
 {"id"=>12185,
  "name"=>"George W. Berry",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1803",
  "death_date"=>""},
 {"id"=>5226,
  "name"=>"Richard B. Carpenter, Jr.",
  "entity_type"=>"person",
  "user_id"=>12,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Covington, Kentucky, commonwealth's attorney",
  "birth_date"=>"c1824",
  "death_date"=>""},
 {"id"=>12186,
  "name"=>"Thomas W. Hedges",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, physician ",
  "birth_date"=>"c1826",
  "death_date"=>""},
  {"id"=>11408,
    "name"=>"Joseph B. McClintock ",
    "entity_type"=>"person",
    "user_id"=>26,
    "ref_id"=>nil,
    "gender"=>"male",
    "disambiguator"=>"Harrison County, Kentucky, sheriff and farmer",
    "birth_date"=>"1834-06-23",
    "death_date"=>"1891-10-23"},
   {"id"=>12187,
    "name"=>"Thomas R. Rankin",
    "entity_type"=>"person",
    "user_id"=>31,
    "ref_id"=>nil,
    "gender"=>"male",
    "disambiguator"=>"Harrison County, Ky, hotel keeper",
    "birth_date"=>"1819-06-02",
    "death_date"=>"1874-06-18"},
   {"id"=>12188,
    "name"=>"John James McClintock",
    "entity_type"=>"person",
    "user_id"=>31,
    "ref_id"=>nil,
    "gender"=>"male",
    "disambiguator"=>"Harrison County, Ky, farmer and clerk",
    "birth_date"=>"1826",
    "death_date"=>"1892"},
   {"id"=>5522,
    "name"=>"Marquis Lafayette Broadwell",
    "entity_type"=>"person",
    "user_id"=>12,
    "ref_id"=>nil,
    "gender"=>"male",
    "disambiguator"=>"Cynthiana, Ky, judge",
    "birth_date"=>"1829-02-22",
    "death_date"=>"1870-07-04"},
   {"id"=>12189,
    "name"=>"David A. Grimes",
    "entity_type"=>"person",
    "user_id"=>31,
    "ref_id"=>nil,
    "gender"=>"male",
    "disambiguator"=>"Harrison County, Ky, farmer",
    "birth_date"=>"c1820",
    "death_date"=>""},
   {"id"=>12190,
    "name"=>"George Ennis",
    "entity_type"=>"person",
    "user_id"=>31,
    "ref_id"=>nil,
    "gender"=>"male",
    "disambiguator"=>"Harrison County, Ky, resident",
    "birth_date"=>"c1846",
    "death_date"=>""},
{"id"=>12191,
  "name"=>"Thomas J. Terry",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1811",
  "death_date"=>""},
 {"id"=>5772,
  "name"=>"Cynthiana, Kentucky",
  "entity_type"=>"place",
  "user_id"=>5,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"place",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>44,
  "name"=>"Kentucky",
  "entity_type"=>"place",
  "user_id"=>1,
  "ref_id"=>"P001800",
  "gender"=>"male",
  "disambiguator"=>"Place. State with capital at Frankfort",
  "birth_date"=>"",
  "death_date"=>""},
 {"id"=>94,
  "name"=>"Thomas Elliott Bramlette",
  "entity_type"=>"person",
  "user_id"=>1,
  "ref_id"=>"N001000",
  "gender"=>"male",
  "disambiguator"=>"Kentucky governor",
  "birth_date"=>"1817-01-03",
  "death_date"=>"1875-01-12"},
 {"id"=>405,
  "name"=>"Harrison Circuit Court",
  "entity_type"=>"organization",
  "user_id"=>4,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"org",
  "birth_date"=>"unknown",
  "death_date"=>"unknown"},
 {"id"=>12170,
  "name"=>"Guy Bryant",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1820",
  "death_date"=>""},
{"id"=>12171,
  "name"=>"Alonzo D. Lyter",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmhand and farmer",
  "birth_date"=>"1842",
  "death_date"=>"1910"},
 {"id"=>12172,
  "name"=>"Thomas A. Rankin",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County farmer",
  "birth_date"=>"c1809",
  "death_date"=>""},
 {"id"=>12173,
  "name"=>"David Dills",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, laborer",
  "birth_date"=>"c1826",
  "death_date"=>""},
 {"id"=>12174,
  "name"=>"William Hutcherson",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1790",
  "death_date"=>""},
 {"id"=>12176,
  "name"=>"Jesse B. Hickman",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1811",
  "death_date"=>"1878"},
 {"id"=>12177,
  "name"=>"James H. Debrular",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1803",
  "death_date"=>""},
 {"id"=>12178,
  "name"=>"Fleming Cummins",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"1817-11-09",
  "death_date"=>"1890-09-30"},
 {"id"=>11410,
  "name"=>"Charles Green Land",
  "entity_type"=>"person",
  "user_id"=>26,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Cynthiana, Kentucky, mayor and clerk.",
  "birth_date"=>"1818",
  "death_date"=>""},
 {"id"=>12179,
  "name"=>"Richard J. Levi",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"1840-01-01",
  "death_date"=>"1915-02-25"},
 {"id"=>12181,
  "name"=>"Robert S. Holmes",
  "entity_type"=>"person",
  "user_id"=>31,
  "ref_id"=>nil,
  "gender"=>"male",
  "disambiguator"=>"Harrison County, Ky, farmer",
  "birth_date"=>"c1820",
  "death_date"=>""}]


  KYR00010040300_ANNOTATIONS =  [{"id"=>26871,
  "document_id"=>1850,
  "verbatim"=>"Wm Hinkson",
  "user_id"=>1,
  "entity_id"=>12182,
  "hypothesis_annotation_id"=>"0pTVVkjnEeqoE2u12x6YvQ",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"J Levi\nR S Holmes\ngeorge [dumis]",
  "suffix"=>"\nB, F. Dills\nWm G Courtney\nJury ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26870,
  "document_id"=>1850,
  "verbatim"=>"B, F. Dills",
  "user_id"=>1,
  "entity_id"=>12183,
  "hypothesis_annotation_id"=>"1Yu9ukjnEeqycNPhvCSsOw",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"Holmes\ngeorge [dumis]Wm Hinkson\n",
  "suffix"=>"\nWm G Courtney\nJury on this case",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26869,
  "document_id"=>1850,
  "verbatim"=>"Wm G Courtney",
  "user_id"=>1,
  "entity_id"=>12184,
  "hypothesis_annotation_id"=>"2SMawkjnEeqggysrhyWaQw",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"e [dumis]Wm Hinkson\nB, F. Dills\n",
  "suffix"=>"\nJury on this caseJ, B, McClinto",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26867,
  "document_id"=>1850,
  "verbatim"=>"G, W, Berry",
  "user_id"=>1,
  "entity_id"=>12185,
  "hypothesis_annotation_id"=>"6WygBkjnEeqfmUOuP0xJbg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>" correctR B Carpenter\nComth atty",
  "suffix"=>" Capt & Pro Mar 6 — /Destrict Ky",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[2]/p[2]"},
 {"id"=>26868,
  "document_id"=>1850,
  "verbatim"=>"R B Carpenter",
  "user_id"=>1,
  "entity_id"=>5226,
  "hypothesis_annotation_id"=>"4cRJEkjnEeq8ojfC8EBJug",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"etition is Substantially correct",
  "suffix"=>"\nComth attyG, W, Berry Capt & Pr",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[2]/p[1]"},
 {"id"=>26862,
  "document_id"=>1850,
  "verbatim"=>"T. W. Hedges",
  "user_id"=>1,
  "entity_id"=>12186,
  "hypothesis_annotation_id"=>"Va1AkEjoEeqnxEuspEXE8w",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"ought the ^whiskey^\nT. J. Terry\n",
  "suffix"=>"\nAlonzo Lyter\nM. L. Broadwell P,",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26865,
  "document_id"=>1850,
  "verbatim"=>"J, B, McClintock",
  "user_id"=>1,
  "entity_id"=>11408,
  "hypothesis_annotation_id"=>"9AkA9EjnEeq9k1f5YbXrCg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"\nWm G Courtney\nJury on this case",
  "suffix"=>" SHC\nF A Rankin Step Father & Gu",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26859,
  "document_id"=>1850,
  "verbatim"=>"T. R, Rankin",
  "user_id"=>1,
  "entity_id"=>12187,
  "hypothesis_annotation_id"=>"ZTbvykjoEeqQB1-JH-1aRw",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"roadwell P,J,H,C\nDavid A Groves\n",
  "suffix"=>"\nJno T. McClintock Dep ClkI cert",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26858,
  "document_id"=>1850,
  "verbatim"=>"Jno T. McClintock",
  "user_id"=>1,
  "entity_id"=>12188,
  "hypothesis_annotation_id"=>"aFMudkjoEeq8f1dlVb2Z1Q",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"H,C\nDavid A Groves\nT. R, Rankin\n",
  "suffix"=>" Dep ClkI certify that the state",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26861,
  "document_id"=>1850,
  "verbatim"=>"M. L. Broadwell",
  "user_id"=>1,
  "entity_id"=>5522,
  "hypothesis_annotation_id"=>"XrJFgkjoEeqvBacKxLXymg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"Terry\nT. W. Hedges\nAlonzo Lyter\n",
  "suffix"=>" P,J,H,C\nDavid A Groves\nT. R, Ra",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26860,
  "document_id"=>1850,
  "verbatim"=>"David A Groves",
  "user_id"=>1,
  "entity_id"=>12189,
  "hypothesis_annotation_id"=>"YoD-JEjoEeqQBtc7WHbxOA",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"o Lyter\nM. L. Broadwell P,J,H,C\n",
  "suffix"=>"\nT. R, Rankin\nJno T. McClintock ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26872,
  "document_id"=>1850,
  "verbatim"=>"george [dumis]",
  "user_id"=>1,
  "entity_id"=>12190,
  "hypothesis_annotation_id"=>"z8sANEjnEeqrBD-pIhjQRQ",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"\nC. G. Land\nR J Levi\nR S Holmes\n",
  "suffix"=>"Wm Hinkson\nB, F. Dills\nWm G Cour",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26863,
  "document_id"=>1850,
  "verbatim"=>"T. J. Terry",
  "user_id"=>1,
  "entity_id"=>12191,
  "hypothesis_annotation_id"=>"UX5GhkjoEeqF5-d97-QYzQ",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"e Boy that Bought the ^whiskey^\n",
  "suffix"=>"\nT. W. Hedges\nAlonzo Lyter\nM. L.",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26886,
  "document_id"=>1850,
  "verbatim"=>"Cynthiana",
  "user_id"=>1,
  "entity_id"=>5772,
  "hypothesis_annotation_id"=>"gFjIGkjnEeqvA7vaHrpV0g",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"load XML\n      \n    \n    \n\n\n\n\n  ",
  "suffix"=>" Ky\nNovr 4th 1863To His Excellen",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>26885,
  "document_id"=>1850,
  "verbatim"=>"Ky",
  "user_id"=>1,
  "entity_id"=>44,
  "hypothesis_annotation_id"=>"hJffiEjnEeqIYbOPVwnkiw",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"     \n    \n    \n\n\n\n\n  Cynthiana ",
  "suffix"=>"\nNovr 4th 1863To His Excellency\n",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>26884,
  "document_id"=>1850,
  "verbatim"=>"Thos E. Bramlette",
  "user_id"=>1,
  "entity_id"=>94,
  "hypothesis_annotation_id"=>"iSCBBEjnEeqQtH-gzr6iHg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"h 1863To His Excellency\nGovenor ",
  "suffix"=>",We the undersigned would most r",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[1]"},
 {"id"=>26883,
  "document_id"=>1850,
  "verbatim"=>"Harrison Circuit Court",
  "user_id"=>1,
  "entity_id"=>405,
  "hypothesis_annotation_id"=>"jzXJPEjnEeqrA4cF4il9tA",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"ate that at the May Term of the ",
  "suffix"=>" an indictment was found by the ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>26882,
  "document_id"=>1850,
  "verbatim"=>"Guy Bryant",
  "user_id"=>1,
  "entity_id"=>12170,
  "hypothesis_annotation_id"=>"lO8iEEjnEeqDvlOykvp8ZQ",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>" Jury of said Court against one ",
  "suffix"=>" for selling liquor to a miner b",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>26881,
  "document_id"=>1850,
  "verbatim"=>"Alonzo Lyter",
  "user_id"=>1,
  "entity_id"=>12171,
  "hypothesis_annotation_id"=>"mb_UVkjnEeqRqTOPoaTCTg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"iquor to a miner by the name of ",
  "suffix"=>", The proof shows conclusively t",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/p[2]"},
 {"id"=>26864,
  "document_id"=>1850,
  "verbatim"=>"F A Rankin",
  "user_id"=>1,
  "entity_id"=>12172,
  "hypothesis_annotation_id"=>"TD6iEEjoEeq5yTs4nF6Okg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"n this caseJ, B, McClintock SHC\n",
  "suffix"=>" Step Father & Guardian of the B",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]/p[1]"},
 {"id"=>26880,
  "document_id"=>1850,
  "verbatim"=>"David Dills Foreman",
  "user_id"=>1,
  "entity_id"=>12173,
  "hypothesis_annotation_id"=>"tCKKoEjnEeqNI3d94UHIxg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"clemency of the Executive.\nover ",
  "suffix"=>"\nWm Hutcheron\nJ B Hickman\nJ H De",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26879,
  "document_id"=>1850,
  "verbatim"=>"Wm Hutcheron",
  "user_id"=>1,
  "entity_id"=>12174,
  "hypothesis_annotation_id"=>"t6VnTEjnEeqr3jvEYTnq6A",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"utive.\nover David Dills Foreman\n",
  "suffix"=>"\nJ B Hickman\nJ H Debrulan\nF. Cum",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26878,
  "document_id"=>1850,
  "verbatim"=>"J B Hickman",
  "user_id"=>1,
  "entity_id"=>12176,
  "hypothesis_annotation_id"=>"u6KN1EjnEeqzLZue1IJCxQ",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"avid Dills Foreman\nWm Hutcheron\n",
  "suffix"=>"\nJ H Debrulan\nF. Cummins\nC. G. L",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26877,
  "document_id"=>1850,
  "verbatim"=>"J H Debrulan",
  "user_id"=>1,
  "entity_id"=>12177,
  "hypothesis_annotation_id"=>"v_ynZkjnEeqRqocBrXXJHg",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"oreman\nWm Hutcheron\nJ B Hickman\n",
  "suffix"=>"\nF. Cummins\nC. G. Land\nR J Levi\n",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26876,
  "document_id"=>1850,
  "verbatim"=>"F. Cummins",
  "user_id"=>1,
  "entity_id"=>12178,
  "hypothesis_annotation_id"=>"w1jilEjnEeqpriPoeLfXmA",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"cheron\nJ B Hickman\nJ H Debrulan\n",
  "suffix"=>"\nC. G. Land\nR J Levi\nR S Holmes\n",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26875,
  "document_id"=>1850,
  "verbatim"=>"C. G. Land",
  "user_id"=>1,
  "entity_id"=>11410,
  "hypothesis_annotation_id"=>"xoAOtkjnEeqgr9u5vLV4YA",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"Hickman\nJ H Debrulan\nF. Cummins\n",
  "suffix"=>"\nR J Levi\nR S Holmes\ngeorge [dum",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26874,
  "document_id"=>1850,
  "verbatim"=>"R J Levi",
  "user_id"=>1,
  "entity_id"=>12179,
  "hypothesis_annotation_id"=>"yWWmIkjnEeqiM184URj-iQ",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>" Debrulan\nF. Cummins\nC. G. Land\n",
  "suffix"=>"\nR S Holmes\ngeorge [dumis]Wm Hin",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"},
 {"id"=>26873,
  "document_id"=>1850,
  "verbatim"=>"R S Holmes",
  "user_id"=>1,
  "entity_id"=>12181,
  "hypothesis_annotation_id"=>"zLRopEjnEeqJcWO9W4FlZw",
  "hypothesis_user"=>"carlcreasoncwgk@hypothes.is",
  "prefix"=>"\nF. Cummins\nC. G. Land\nR J Levi\n",
  "suffix"=>"\ngeorge [dumis]Wm Hinkson\nB, F. ",
  "start_container"=>"/div[1]/div[2]/aside[1]/div[1]/tei[1]/div[1]/text[1]/div[1]"}]

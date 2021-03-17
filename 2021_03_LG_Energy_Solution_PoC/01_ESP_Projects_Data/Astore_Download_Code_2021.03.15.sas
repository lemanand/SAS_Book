***************************************************** ;
* LG Chemical PoC (2021.03)                         * ;
* Download Astore file for scoring                  * ;
* Gradient Boosting and Ensemble Models * ;
***************************************************** ;

cas mycas ;
caslib _all_ assign ;
*caslib _all_ list ;

caslib models list ;
* /opt/sas/viya/config/data/cas/default/models/ ;

*************************************************************************** ;
* Find in 'dmcas_epscorecode.sas' required .sashdat file in models caslib * ;
* Firstly, upload .sashdat to CAS and then download astore file           * ;
*************************************************************************** ;

* Gradient Boosting Astore ;
proc casutil ;
    load casdata = "_A0GMUDWAPWVLAI85FOTLW8036_ast.sashdat"
    inCASlib = "models"
    casOut = "HMEQ_GB_ASTORE"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public.HMEQ_GB_ASTORE
    store="/home/viyademo01/LG_En_Sol/HMEQ_GB_ASTORE" ;
run ;


* Ensemble Astore ;
* Fist Astore ;
proc casutil ;
    load casdata = "_A0GMUDWAPWVLAI85FOTLW8036_ast.sashdat"
    inCASlib = "models"
    casOut = "HMEQ_ENS_ASTORE_01"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public.HMEQ_ENS_ASTORE_01
    store="/home/viyademo01/LG_En_Sol/HMEQ_ENS_ASTORE_01" ;
run ;

* Second Astore ;
proc casutil ;
    load casdata = "_BJ29AYK0L86GDUBVSSHB5LIVK_ast.sashdat"
    inCASlib = "models"
    casOut = "HMEQ_ENS_ASTORE_02"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public.HMEQ_ENS_ASTORE_02
    store="/home/viyademo01/LG_En_Sol/HMEQ_ENS_ASTORE_02" ;
run ;

cas mycas terminate ;


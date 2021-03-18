cas mycas ;
caslib _all_ assign ;
*caslib _all_ list ;

caslib models list ;
* /opt/sas/viya/config/data/cas/default/models/ ;

* FIRST ASTORE - _8B24HXDZBODEQYCZBMYFIPIRR_ast ;
proc casutil ;
    load casdata = "_8B24HXDZBODEQYCZBMYFIPIRR_ast.sashdat"
    inCASlib = "models"
    casOut = "_8B24HXDZBODEQYCZBMYFIPIRR_ast"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public._8B24HXDZBODEQYCZBMYFIPIRR_ast
    store="/home/viyaadm/Viya_Data_26_Poc/_8B24HXDZBODEQYCZBMYFIPIRR_ast" ;
run ;

* SECOND ASTORE - _DXO2Y91Q6R1FORBLIRT8QABNO_ast ;
proc casutil ;
    load casdata = "_DXO2Y91Q6R1FORBLIRT8QABNO_ast.sashdat"
    inCASlib = "models"
    casOut = "_DXO2Y91Q6R1FORBLIRT8QABNO_ast"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public._DXO2Y91Q6R1FORBLIRT8QABNO_ast
    store="/home/viyaadm/Viya_Data_26_Poc/_DXO2Y91Q6R1FORBLIRT8QABNO_ast" ;
run ;

* THIRD ASTORE - _4JFHE0GSREMWZH1CLW727YBA8_ast ;
proc casutil ;
    load casdata = "_4JFHE0GSREMWZH1CLW727YBA8_ast.sashdat"
    inCASlib = "models"
    casOut = "_4JFHE0GSREMWZH1CLW727YBA8_ast"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public._4JFHE0GSREMWZH1CLW727YBA8_ast
    store="/home/viyaadm/Viya_Data_26_Poc/_4JFHE0GSREMWZH1CLW727YBA8_ast" ;
run ;

* FOURTH ASTORE - _ZRLF23R2HZFI7XRKOYCXET59_ast ;
proc casutil ;
    load casdata = "_ZRLF23R2HZFI7XRKOYCXET59_ast.sashdat"
    inCASlib = "models"
    casOut = "_ZRLF23R2HZFI7XRKOYCXET59_ast"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public._ZRLF23R2HZFI7XRKOYCXET59_ast
    store="/home/viyaadm/Viya_Data_26_Poc/_ZRLF23R2HZFI7XRKOYCXET59_ast" ;
run ;

* FIFTH ASTORE - _N1XTQYL9Y5T9H7JF0XDWRVSH_ast ;
proc casutil ;
    load casdata = "_N1XTQYL9Y5T9H7JF0XDWRVSH_ast.sashdat"
    inCASlib = "models"
    casOut = "_N1XTQYL9Y5T9H7JF0XDWRVSH_ast"
    outCASlib = "public"
    replace ;
quit ;

proc astore ;
    download rstore=public._N1XTQYL9Y5T9H7JF0XDWRVSH_ast
    store="/home/viyaadm/Viya_Data_26_Poc/_N1XTQYL9Y5T9H7JF0XDWRVSH_ast" ;
run ;

cas mycas terminate ;


/*
 * This score code file references one or more analytic stores that are located in the caslib "Models".
 * This score code file references the following analytic-store tables:
 *   _8B24HXDZBODEQYCZBMYFIPIRR_ast
 *   _DXO2Y91Q6R1FORBLIRT8QABNO_ast
 *   _4JFHE0GSREMWZH1CLW727YBA8_ast
 *   _ZRLF23R2HZFI7XRKOYCXET59_ast
 *   _N1XTQYL9Y5T9H7JF0XDWRVSH_ast
 */
data sasep.out;
 
   dcl double PN1XTQYL9Y5T9H7JF0XDWRVSH1;
   dcl double PN1XTQYL9Y5T9H7JF0XDWRVSH2;
   dcl double P4JFHE0GSREMWZH1CLW727YBA81;
   dcl double P4JFHE0GSREMWZH1CLW727YBA82;
   dcl double PDXO2Y91Q6R1FORBLIRT8QABNO1;
   dcl double PDXO2Y91Q6R1FORBLIRT8QABNO2;
   dcl double PZRLF23R2HZFI7XRKOYCXET591;
   dcl double PZRLF23R2HZFI7XRKOYCXET592;
   dcl double P8B24HXDZBODEQYCZBMYFIPIRR1;
   dcl double P8B24HXDZBODEQYCZBMYFIPIRR2;
   dcl package score _4JFHE0GSREMWZH1CLW727YBA8();
   dcl package score _8B24HXDZBODEQYCZBMYFIPIRR();
   dcl package score _DXO2Y91Q6R1FORBLIRT8QABNO();
   dcl package score _N1XTQYL9Y5T9H7JF0XDWRVSH();
   dcl package score _ZRLF23R2HZFI7XRKOYCXET59();
   dcl nchar(24) "CELL_ID";
   dcl nchar(1) EM_CLASSIFICATION having label n'Predicted for Y_1';
   dcl double EM_EVENTPROBABILITY having label n'Probability for Y_1 =1';
   dcl double EM_PROBABILITY having label n'Probability of Classification';
   dcl nchar(32) "I_Y_1" having label n'Into: Y_1';
   dcl double "P_Y_10" having label n'Predicted: Y_1=0';
   dcl double "P_Y_11" having label n'Predicted: Y_1=1';
   dcl nchar(1) "Y_1";
   dcl double "CHS1AVG";
   dcl double "CHS1ENDV";
   dcl double "CHS2AVG";
   dcl double "CHS4CAPA";
   dcl double "CHS5CAPA";
   dcl double "CHS6AVG";
   dcl double "CHS6CAPA";
   dcl double "DISCHS1AVG";
   dcl double "DISCHS1CAPA";
   dcl double "DISPOWER1";
   dcl double "DOCV1";
   dcl double "DOCV2";
   dcl double "DOCV2MV";
   dcl double "DOCV2_LOG";
   dcl double "OCV1";
   dcl double "ONOCV1";
   dcl double "ONOCV2";
   dcl double "ONOCV3";
   dcl double "POWER4";
   dcl double "POWER5";
   dcl double "POWER6";
   dcl double "PREAGING_TIME";
   dcl double "PRE_AVG";
   dcl double "PRE_ENDVOLTCHS";
   dcl double "RTAGING4_TIME";
   dcl double "RTAGING5_TIME";
   dcl double "_P_";
   dcl nchar(4) "_WARN_" having label n'Warnings';
   varlist allvars [_all_];
 
   drop 
      PN1XTQYL9Y5T9H7JF0XDWRVSH1
      PN1XTQYL9Y5T9H7JF0XDWRVSH2
      P4JFHE0GSREMWZH1CLW727YBA81
      P4JFHE0GSREMWZH1CLW727YBA82
      PDXO2Y91Q6R1FORBLIRT8QABNO1
      PDXO2Y91Q6R1FORBLIRT8QABNO2
      PZRLF23R2HZFI7XRKOYCXET591
      PZRLF23R2HZFI7XRKOYCXET592
      P8B24HXDZBODEQYCZBMYFIPIRR1
      P8B24HXDZBODEQYCZBMYFIPIRR2
   ;
 
   method init();
      _4JFHE0GSREMWZH1CLW727YBA8.setvars(allvars);
      _4JFHE0GSREMWZH1CLW727YBA8.setkey(n'083CD3F6E9FC45AD1621B898E4847C8D108367DF');
      _8B24HXDZBODEQYCZBMYFIPIRR.setvars(allvars);
      _8B24HXDZBODEQYCZBMYFIPIRR.setkey(n'D169757B7BC334164B09134E5D3AF9A2F88E8953');
      _DXO2Y91Q6R1FORBLIRT8QABNO.setvars(allvars);
      _DXO2Y91Q6R1FORBLIRT8QABNO.setkey(n'4C2551A7A48596BC3F31528BA663104C4930B205');
      _N1XTQYL9Y5T9H7JF0XDWRVSH.setvars(allvars);
      _N1XTQYL9Y5T9H7JF0XDWRVSH.setkey(n'D741195AC1A8786904414A11B320BA2DBD5E93E0');
      _ZRLF23R2HZFI7XRKOYCXET59.setvars(allvars);
      _ZRLF23R2HZFI7XRKOYCXET59.setkey(n'24A074850E114B360520429CE06A12614BF0287F');
   end;
 
   method post_8B24HXDZBODEQYCZBMYFIPIRR();
      dcl double _P_;
       
      if "P_Y_10" = . then "P_Y_10" = 0.9999037506;
      if "P_Y_11" = . then "P_Y_11" = 0.0000962494;
      if MISSING("I_Y_1") then do ;
      _P_ = 0.0;
      if "P_Y_11" > _P_ then do ;
      _P_ = "P_Y_11";
      "I_Y_1" = '1';
      end;
      if "P_Y_10" > _P_ then do ;
      _P_ = "P_Y_10";
      "I_Y_1" = '0';
      end;
      end;
      EM_EVENTPROBABILITY = "P_Y_11";
      EM_CLASSIFICATION = "I_Y_1";
      EM_PROBABILITY = MAX("P_Y_11", "P_Y_10");
    
   end;
    
 
 
   method post_ZRLF23R2HZFI7XRKOYCXET59();
      dcl double _P_;
       
      if "P_Y_10" = . then "P_Y_10" = 0.9999037506;
      if "P_Y_11" = . then "P_Y_11" = 0.0000962494;
      if MISSING("I_Y_1") then do ;
      _P_ = 0.0;
      if "P_Y_11" > _P_ then do ;
      _P_ = "P_Y_11";
      "I_Y_1" = '1';
      end;
      if "P_Y_10" > _P_ then do ;
      _P_ = "P_Y_10";
      "I_Y_1" = '0';
      end;
      end;
      EM_EVENTPROBABILITY = "P_Y_11";
      EM_CLASSIFICATION = "I_Y_1";
      EM_PROBABILITY = MAX("P_Y_11", "P_Y_10");
    
   end;
    
 
 
   method post_DXO2Y91Q6R1FORBLIRT8QABNO();
      dcl double _P_;
       
      if "P_Y_10" = . then "P_Y_10" = 0.9999037506;
      if "P_Y_11" = . then "P_Y_11" = 0.0000962494;
      if MISSING("I_Y_1") then do ;
      _P_ = 0.0;
      if "P_Y_11" > _P_ then do ;
      _P_ = "P_Y_11";
      "I_Y_1" = '1';
      end;
      if "P_Y_10" > _P_ then do ;
      _P_ = "P_Y_10";
      "I_Y_1" = '0';
      end;
      end;
      EM_EVENTPROBABILITY = "P_Y_11";
      EM_CLASSIFICATION = "I_Y_1";
      EM_PROBABILITY = MAX("P_Y_11", "P_Y_10");
    
   end;
    
 
 
   method post_4JFHE0GSREMWZH1CLW727YBA8();
      dcl double _P_;
       
      if "P_Y_10" = . then "P_Y_10" = 0.9999037506;
      if "P_Y_11" = . then "P_Y_11" = 0.0000962494;
      if MISSING("I_Y_1") then do ;
      _P_ = 0.0;
      if "P_Y_11" > _P_ then do ;
      _P_ = "P_Y_11";
      "I_Y_1" = '1';
      end;
      if "P_Y_10" > _P_ then do ;
      _P_ = "P_Y_10";
      "I_Y_1" = '0';
      end;
      end;
      EM_EVENTPROBABILITY = "P_Y_11";
      EM_CLASSIFICATION = "I_Y_1";
      EM_PROBABILITY = MAX("P_Y_11", "P_Y_10");
    
   end;
    
 
 
   method post_N1XTQYL9Y5T9H7JF0XDWRVSH();
      dcl double _P_;
       
      if "P_Y_10" = . then "P_Y_10" = 0.9999037506;
      if "P_Y_11" = . then "P_Y_11" = 0.0000962494;
      if MISSING("I_Y_1") then do ;
      _P_ = 0.0;
      if "P_Y_11" > _P_ then do ;
      _P_ = "P_Y_11";
      "I_Y_1" = '1';
      end;
      if "P_Y_10" > _P_ then do ;
      _P_ = "P_Y_10";
      "I_Y_1" = '0';
      end;
      end;
      EM_EVENTPROBABILITY = "P_Y_11";
      EM_CLASSIFICATION = "I_Y_1";
      EM_PROBABILITY = MAX("P_Y_11", "P_Y_10");
    
   end;
    
 
 
   method _N1XTQYL9Y5T9H7JF0XDWRVSH();
      _N1XTQYL9Y5T9H7JF0XDWRVSH.scoreRecord();
      post_N1XTQYL9Y5T9H7JF0XDWRVSH();
      /*------------------------------------------------------------*/
      /* Renaming posterior variables for 0ad11f16-11f9-49a5-8ea9-44ed70ee5db1               */
      /*------------------------------------------------------------*/
      PN1XTQYL9Y5T9H7JF0XDWRVSH1= "P_Y_10";
      PN1XTQYL9Y5T9H7JF0XDWRVSH2= "P_Y_11";
   end;
 
   method _4JFHE0GSREMWZH1CLW727YBA8();
      _4JFHE0GSREMWZH1CLW727YBA8.scoreRecord();
      post_4JFHE0GSREMWZH1CLW727YBA8();
      /*------------------------------------------------------------*/
      /* Renaming posterior variables for 4cae7056-a304-4872-ad08-a4299c578ca0               */
      /*------------------------------------------------------------*/
      P4JFHE0GSREMWZH1CLW727YBA81= "P_Y_10";
      P4JFHE0GSREMWZH1CLW727YBA82= "P_Y_11";
   end;
 
   method _DXO2Y91Q6R1FORBLIRT8QABNO();
      _DXO2Y91Q6R1FORBLIRT8QABNO.scoreRecord();
      post_DXO2Y91Q6R1FORBLIRT8QABNO();
      /*------------------------------------------------------------*/
      /* Renaming posterior variables for eb621201-588e-41d0-bc12-776562826384               */
      /*------------------------------------------------------------*/
      PDXO2Y91Q6R1FORBLIRT8QABNO1= "P_Y_10";
      PDXO2Y91Q6R1FORBLIRT8QABNO2= "P_Y_11";
   end;
 
   method _ZRLF23R2HZFI7XRKOYCXET59();
      _ZRLF23R2HZFI7XRKOYCXET59.scoreRecord();
      post_ZRLF23R2HZFI7XRKOYCXET59();
      /*------------------------------------------------------------*/
      /* Renaming posterior variables for 10c81a93-f987-4560-85da-ccfa4f7e1c0d               */
      /*------------------------------------------------------------*/
      PZRLF23R2HZFI7XRKOYCXET591= "P_Y_10";
      PZRLF23R2HZFI7XRKOYCXET592= "P_Y_11";
   end;
   method _8B24HXDZBODEQYCZBMYFIPIRR();
      _8B24HXDZBODEQYCZBMYFIPIRR.scoreRecord();
      post_8B24HXDZBODEQYCZBMYFIPIRR();
      /*------------------------------------------------------------*/
      /* Renaming posterior variables for 8c5189a0-4e55-42a1-a0a7-ae07b15fb947               */
      /*------------------------------------------------------------*/
      P8B24HXDZBODEQYCZBMYFIPIRR1= "P_Y_10";
      P8B24HXDZBODEQYCZBMYFIPIRR2= "P_Y_11";
   end;
 
   method _7NG2A4ZFTUSE1TXJ23GLLM4DB();
      dcl double "_P_";
      dcl double "_PSUM";
      dcl double "_PREMAINDER";


      _N1XTQYL9Y5T9H7JF0XDWRVSH();
      _4JFHE0GSREMWZH1CLW727YBA8();
      _DXO2Y91Q6R1FORBLIRT8QABNO();
      _ZRLF23R2HZFI7XRKOYCXET59();
      _8B24HXDZBODEQYCZBMYFIPIRR();


      /*------------------------------------------------------------*/
      /* Computing posterior variables for 813d4754-282e-44ba-aff0-677d9fe3289f             */
      /*------------------------------------------------------------*/
      "P_Y_10"= (
      PN1XTQYL9Y5T9H7JF0XDWRVSH1
      + P4JFHE0GSREMWZH1CLW727YBA81
      + PDXO2Y91Q6R1FORBLIRT8QABNO1
      + PZRLF23R2HZFI7XRKOYCXET591
      + P8B24HXDZBODEQYCZBMYFIPIRR1
      ) / 5;
      "P_Y_11"= (
      PN1XTQYL9Y5T9H7JF0XDWRVSH2
      + P4JFHE0GSREMWZH1CLW727YBA82
      + PDXO2Y91Q6R1FORBLIRT8QABNO2
      + PZRLF23R2HZFI7XRKOYCXET592
      + P8B24HXDZBODEQYCZBMYFIPIRR2
      ) / 5;
      _P_= 0.0 ;
      if "P_Y_11" > _P_ then do;
      _P_ = "P_Y_11";
      "I_Y_1" = '1';
      end;
      if "P_Y_10" > _P_ then do;
      _P_ = "P_Y_10";
      "I_Y_1" = '0';
      end;
      /*------------------------------------------------------------*/
      /* Generating fixed output names                              */
      /*------------------------------------------------------------*/
       
      EM_EVENTPROBABILITY ="P_Y_11";
      EM_CLASSIFICATION ="I_Y_1";
      EM_PROBABILITY = max(
      "P_Y_11",
      "P_Y_10");
   end;
 
 
   method run();
      set SASEP.IN;
      _7NG2A4ZFTUSE1TXJ23GLLM4DB();
   end;
 
   method term();
   end;
 
enddata;

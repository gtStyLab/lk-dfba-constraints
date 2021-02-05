<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.24 (Build 197) (http://www.copasi.org) at 2020-08-25 18:26:39 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="24" versionDevel="197" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_40" name="function_4_PGI" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_PGI*(G6P/kmG6P_PGI)-Vmax_PGI/Keq_PGI*(F6P/kmG6P_PGI))/(1+G6P/kmG6P_PGI+F6P/kmF6P_PGI)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_265" name="F6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_250" name="G6P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="Keq_PGI" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="Vmax_PGI" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="kmF6P_PGI" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_264" name="kmG6P_PGI" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="function_4_ACK" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-16T17:34:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Vmax_ACK*(AcetCoA/kmAcetCoA_ACK)*(ADP/kmADP_ACK)/((1+AcetCoA/kmAcetCoA_ACK)*(1+ADP/kmADP_ACK)+(1+Acetate/kmAcetate_ACK)*(1+ATP/kmATP_ACK)*(1+CoA/kmCoA_ACK)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_276" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_275" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_274" name="AcetCoA" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_273" name="Acetate" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_272" name="CoA" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_271" name="Vmax_ACK" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="kmADP_ACK" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="kmATP_ACK" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="kmAcetCoA_ACK" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_267" name="kmAcetate_ACK" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_266" name="kmCoA_ACK" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="function_4_BDH" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-16T17:33:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vmax_BDH*(Acetoin/kmAcetoin_BDH)*(NADH/kmNADH_BDH)-Vmax_BDH/Keq_BDH*(Butanediol/kmAcetoin_BDH)*(NAD/kmNADH_BDH))/((1+Acetoin/kmAcetoin_BDH)*(1+NADH/kmNADH_BDH)+(1+Butanediol/kmButanediol_BDH)*(1+NAD/kmNAD_BDH)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_286" name="Acetoin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="Butanediol" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_284" name="Keq_BDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="NAD" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_282" name="NADH" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_281" name="Vmax_BDH" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="kmAcetoin_BDH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="kmButanediol_BDH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="kmNADH_BDH" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="kmNAD_BDH" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="function_4_MP" type="UserDefined" reversible="false">
      <Expression>
        Vmax_MP*(Mannitol1Phosphate/kmMannitol1Phosphate_MP)/(1+Mannitol1Phosphate/kmMannitol1Phosphate_MP+1+Mannitol/kmMannitol_MP-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_291" name="Mannitol" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_290" name="Mannitol1Phosphate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_289" name="Vmax_MP" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_288" name="kmMannitol1Phosphate_MP" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="kmMannitol_MP" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="function_4_ATPase" type="UserDefined" reversible="false">
      <Expression>
        Vmax_ATPase*((ATP/kmATP_ATPase)^nATPase/((ATP/kmATP_ATPase)^nATPase+1))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_295" name="ATP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_294" name="Vmax_ATPase" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="kmATP_ATPase" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="nATPase" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="function_4_P_transp" type="UserDefined" reversible="false">
      <Expression>
        kiPint_Ptransport/(Pint+kiPint_Ptransport)*Vmax_Ptransport*(ATP/kmATP_Ptransport)*(Pext/kmPext_Ptransport)/((1+Pext/kmPext_Ptransport)*(1+ATP/kmATP_Ptransport)+(1+Pint/kmPint_Ptransport+(Pint/kmPint_Ptransport)^2)*(1+ADP/kmADP_Ptransport)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="ADP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_304" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_303" name="Pext" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_302" name="Pint" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_301" name="Vmax_Ptransport" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="kiPint_Ptransport" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_299" name="kmADP_Ptransport" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="kmATP_Ptransport" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_297" name="kmPext_Ptransport" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_296" name="kmPint_Ptransport" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="function_4_LDH" type="UserDefined" reversible="false">
      <Expression>
        FBP/(FBP+kaFBP_LDH)*(kiPint_LDH/(Pint+kiPint_LDH))*Vmax_LDH*(PYR/kmPYR_LDH)*(NADH/kmNADH_LDH)/((1+PYR/kmPYR_LDH)*(1+NADH/kmNADH_LDH)+(1+Lactate/kmLactate_LDH)*(1+NAD/kmNAD_LDH)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_318" name="FBP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_317" name="Lactate" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_316" name="NAD" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_315" name="NADH" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_314" name="PYR" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_313" name="Pint" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="Vmax_LDH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="kaFBP_LDH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_310" name="kiPint_LDH" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="kmLactate_LDH" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="kmNADH_LDH" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="kmNAD_LDH" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_306" name="kmPYR_LDH" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="function_4_PTS_Glc" type="UserDefined" reversible="false">
      <Expression>
        Pint/(Pint+kaPint_PTS_Glc)*(kiFBP_PTS_Glc/(FBP+kiFBP_PTS_Glc))*Vmax_PTS_Glc*(Glucose/kmGlucose_PTS_Glc)*(PEP/kmPEP_PTS_Glc)/((1+Glucose/kmGlucose_PTS_Glc)*(1+PEP/kmPEP_PTS_Glc)+(1+G6P/kmG6P_PTS_Glc)*(1+PYR/kmPYR_PTS_Glc)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_331" name="FBP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_330" name="G6P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_329" name="Glucose" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_328" name="PEP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_327" name="PYR" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_326" name="Pint" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_325" name="Vmax_PTS_Glc" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="kaPint_PTS_Glc" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_323" name="kiFBP_PTS_Glc" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="kmG6P_PTS_Glc" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="kmGlucose_PTS_Glc" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_320" name="kmPEP_PTS_Glc" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_319" name="kmPYR_PTS_Glc" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="function_4_PFK" type="UserDefined" reversible="false">
      <Expression>
        Vmax_PFK*(F6P/kmF6P_PFK)*(ATP/kmATP_PFK)/((1+F6P/kmF6P_PFK)*(1+ATP/kmATP_PFK)+(1+FBP/kmFBP_PFK)*(1+ADP/kmADP_PFK)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_340" name="ADP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_339" name="ATP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_338" name="F6P" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_337" name="FBP" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_336" name="Vmax_PFK" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="kmADP_PFK" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_334" name="kmATP_PFK" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="kmF6P_PFK" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_332" name="kmFBP_PFK" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="function_4_PYK" type="UserDefined" reversible="false">
      <Expression>
        FBP/(FBP+kaFBP_PYK)*(kiPint_PYK^nPYK/(Pint^nPYK+kiPint_PYK^nPYK))*Vmax_PYK*(ADP/kmADP_PYK)*(PEP/kmPEP_PYK)/((1+ADP/kmADP_PYK)*(1+PEP/kmPEP_PYK)+(1+ATP/kmATP_PYK)*(1+PYR/kmPYR_PYK)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_354" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_353" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_352" name="FBP" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="PEP" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_350" name="PYR" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_349" name="Pint" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_348" name="Vmax_PYK" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="kaFBP_PYK" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="kiPint_PYK" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_345" name="kmADP_PYK" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_344" name="kmATP_PYK" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="kmPEP_PYK" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_342" name="kmPYR_PYK" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="nPYK" order="13" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="function_4_MPD" type="UserDefined" reversible="true">
      <Expression>
        kiF6P_MPD/(F6P+kiF6P_MPD)*(Vmax_MPD*(F6P/kmF6P_MPD)*(NADH/kmNADH_MPD)-Vmax_MPD/Keq_MPD*(Mannitol1Phosphate/kmF6P_MPD)*(NAD/kmNADH_MPD))/((1+F6P/kmF6P_MPD)*(1+NADH/kmNADH_MPD)+(1+Mannitol1Phosphate/kmMannitol1Phoshate_MPD)*(1+NAD/kmNAD_MPD)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_365" name="F6P" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_364" name="Keq_MPD" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="Mannitol1Phosphate" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_362" name="NAD" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_361" name="NADH" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_360" name="Vmax_MPD" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_359" name="kiF6P_MPD" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="kmF6P_MPD" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_357" name="kmMannitol1Phoshate_MPD" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="kmNADH_MPD" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="kmNAD_MPD" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="function_4_Acetoin_transp" type="UserDefined" reversible="false">
      <Expression>
        Vmax_Acetoin_transp*(Acetoin/kmAcetoin_Acetoin_transp)/(1+Acetoin/kmAcetoin_Acetoin_transp+Acetoin_Ext/kmAcetoin_Ext_Acetoin_transp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_370" name="Acetoin" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_369" name="Acetoin_Ext" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_368" name="Vmax_Acetoin_transp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_367" name="kmAcetoin_Acetoin_transp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_366" name="kmAcetoin_Ext_Acetoin_transp" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="function_4_Mannitol_transp" type="UserDefined" reversible="false">
      <Expression>
        Vmax_Mannitol_transp*(Mannitol/kmMannitol_Mannitol_transp)/(1+Mannitol/kmMannitol_Mannitol_transp+Mannitol_Ext/kmMannitol_Ext_Mannitol_transp)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_375" name="Mannitol" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_374" name="Mannitol_Ext" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_373" name="Vmax_Mannitol_transp" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="kmMannitol_Ext_Mannitol_transp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="kmMannitol_Mannitol_transp" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="function_4_FBPase" type="UserDefined" reversible="false">
      <Expression>
        Vmax_FBPase*(FBP/kmFBP_FBPase)/(FBP/kmFBP_FBPase+(1+F6P/kmF6P_FBPase)*(1+Pint/kmPint_FBPase))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="F6P" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_381" name="FBP" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_380" name="Pint" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_379" name="Vmax_FBPase" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_378" name="kmF6P_FBPase" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="kmFBP_FBPase" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="kmPint_FBPase" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="function_4_GAPDH" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_GAPDH*(G3P/kmG3P_GAPDH)*(NAD/kmNAD_GAPDH)*(Pint/kmPint_GAPDH)-Vmax_GAPDH/Keq_GAPDH*(BPG/kmG3P_GAPDH)*(NADH/kmNAD_GAPDH)*(1/kmPint_GAPDH))/((1+G3P/kmG3P_GAPDH)*(1+Pint/kmPint_GAPDH)*(1+NAD/kmNAD_GAPDH)+(1+BPG/kmBPG_GAPDH)*(1+NADH/kmNADH_GAPDH)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="BPG" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_393" name="G3P" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_392" name="Keq_GAPDH" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="NAD" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_390" name="NADH" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_389" name="Pint" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_388" name="Vmax_GAPDH" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="kmBPG_GAPDH" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_386" name="kmG3P_GAPDH" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_385" name="kmNADH_GAPDH" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="kmNAD_GAPDH" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="kmPint_GAPDH" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="function_4_ENO" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_ENO*(BPG/kmBPG_ENO)*(ADP/kmADP_ENO)-Vmax_ENO/Keq_ENO*(PEP/kmBPG_ENO)*(ATP/kmADP_ENO))/((1+BPG/kmBPG_ENO)*(1+ADP/kmADP_ENO)+(1+PEP/kmPEP_ENO)*(1+ATP/kmATP_ENO)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_404" name="ADP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_403" name="ATP" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_402" name="BPG" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_401" name="Keq_ENO" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="PEP" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_399" name="Vmax_ENO" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="kmADP_ENO" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_397" name="kmATP_ENO" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="kmBPG_ENO" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="kmPEP_ENO" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="function_4_ALS" type="UserDefined" reversible="true">
      <Expression>
        (Vmax_ALS*(PYR/kmPYR_ALS)^2-Vmax_ALS/Keq_ALS*(Acetoin/kmPYR_ALS))/(1+PYR/kmPYR_ALS+(PYR/kmPYR_ALS)^2+1+Acetoin/kmAcetoin_ALS-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_410" name="Acetoin" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_409" name="Keq_ALS" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="PYR" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_407" name="Vmax_ALS" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_406" name="kmAcetoin_ALS" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="kmPYR_ALS" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="function_4_FBA" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-14T10:03:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        (Vmax_FBA*(FBP/kmFBP_FBA)-Vmax_FBA/Keq_FBA*(G3P^2/kmFBP_FBA))/(1+FBP/kmFBP_FBA+G3P/kmG3P_FBA+(G3P/kmG3P_FBA)^2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_416" name="FBP" order="0" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="G3P" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_414" name="Keq_FBA" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_413" name="Vmax_FBA" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_412" name="kmFBP_FBA" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_411" name="kmG3P_FBA" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="function_4_AE" type="UserDefined" reversible="false">
      <Expression>
        kiATP_AE/(ATP+kiATP_AE)*Vmax_AE*(AcetCoA/kmAcetCoA_AE)*(NADH/kmNADH_AE)^2/((1+NADH/kmNADH_AE+(NADH/kmNADH_AE)^2)*(1+AcetCoA/kmAcetCoA_AE)+(1+Ethanol/kmEthanol_AE)*(1+CoA/kmCoA_AE)*(1+NAD/kmNAD_AE+(NAD/kmNAD_AE)^2)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_429" name="ATP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_428" name="AcetCoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_427" name="CoA" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_426" name="Ethanol" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_425" name="NAD" order="4" role="product"/>
        <ParameterDescription key="FunctionParameter_424" name="NADH" order="5" role="substrate"/>
        <ParameterDescription key="FunctionParameter_423" name="Vmax_AE" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="kiATP_AE" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_421" name="kmAcetCoA_AE" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="kmCoA_AE" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="kmEthanol_AE" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_418" name="kmNADH_AE" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_417" name="kmNAD_AE" order="12" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="function_4_PFL" type="UserDefined" reversible="true">
      <Expression>
        kiG3P_PFL/(G3P+kiG3P_PFL)*(Vmax_PFL*(PYR/kmPYR_PFL)*(CoA/KmCoA_PFL)-Vmax_PFL/Keq_PFL*(AcetCoA/kmPYR_PFL)*(Formate/KmCoA_PFL))/((1+PYR/kmPYR_PFL)*(1+CoA/KmCoA_PFL)+(1+AcetCoA/kmAcetCoA_PFL)*(1+Formate/kmFormate_PFL)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_441" name="AcetCoA" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_440" name="CoA" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_439" name="Formate" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_438" name="G3P" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_437" name="Keq_PFL" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_436" name="KmCoA_PFL" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_435" name="PYR" order="6" role="substrate"/>
        <ParameterDescription key="FunctionParameter_434" name="Vmax_PFL" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_433" name="kiG3P_PFL" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="kmAcetCoA_PFL" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="kmFormate_PFL" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_430" name="kmPYR_PFL" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="function_4_PTS_Man" type="UserDefined" reversible="false">
      <Expression>
        Vmax_PTS_Man*(Mannitol_Ext/kmMannitolExt_PTS_Man)*(PEP/kmPEP_PTS_Man)/((1+Mannitol_Ext/kmMannitolExt_PTS_Man)*(1+PEP/kmPEP_PTS_Man)+(1+Mannitol1Phosphate/kmMannitol1Phosphate_PTS_Man)*(1+PYR/kmPYR_PTS_Man)-1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_450" name="Mannitol1Phosphate" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_449" name="Mannitol_Ext" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_448" name="PEP" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_447" name="PYR" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_446" name="Vmax_PTS_Man" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="kmMannitol1Phosphate_PTS_Man" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_444" name="kmMannitolExt_PTS_Man" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="kmPEP_PTS_Man" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="kmPYR_PTS_Man" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Costa2014 - Computational Model of L. lactis Metabolism" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:bqbiol="http://biomodels.net/biology-qualifiers/"
   xmlns:bqmodel="http://biomodels.net/model-qualifiers/"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <bqbiol:hasTaxon>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/taxonomy/1358"/>
      </rdf:Bag>
    </bqbiol:hasTaxon>
    <bqmodel:isDerivedFrom>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/11932446"/>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/15006767"/>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/15345435"/>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/21841021"/>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/22325620"/>
        <rdf:li rdf:resource="http://identifiers.org/pubmed/873604"/>
      </rdf:Bag>
    </bqmodel:isDerivedFrom>
    <dcterms:bibliographicCitation>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <CopasiMT:isDescribedBy rdf:resource="http://identifiers.org/pubmed/24413179"/>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-03-26T15:31:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>lloret@ebi.ac.uk</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Lloret i Villas</vCard:Family>
                <vCard:Given>Audald</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>EMBL-EBI</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
        <rdf:li>
          <rdf:Description>
            <vCard:EMAIL>rafael.s.costa@tecnico.ulisboa.pt</vCard:EMAIL>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Costa</vCard:Family>
                <vCard:Given>Rafael</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>INESC-ID / IST, University of Lisbon</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2016-01-22T12:44:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/MODEL1503180000"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/biomodels.db/BIOMD0000000572"/>
      </rdf:Bag>
    </CopasiMT:is>
    <CopasiMT:isVersionOf>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0034079"/>
      </rdf:Bag>
    </CopasiMT:isVersionOf>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      
  <body xmlns="http://www.w3.org/1999/xhtml">
    <div class="dc:title">Costa2014 - Computational Model of L. lactis
Metabolism</div>
    <div class="dc:bibliographicCitation">
      <p>This model is described in the article:</p>
      <div class="bibo:title">
        <a href="http://identifiers.org/pubmed/24413179" title="Access to this publication">An extended dynamic model of
    Lactococcus lactis metabolism for mannitol and 2,3-butanediol
    production.</a>
      </div>
      <div class="bibo:authorList">Costa RS, Hartmann A, Gaspar P,
  Neves AR, Vinga S.</div>
      <div class="bibo:Journal">Mol Biosyst 2014 Mar; 10(3):
  628-639</div>
      <p>Abstract:</p>
      <div class="bibo:abstract">
        <p>Biomedical research and biotechnological production are
    greatly benefiting from the results provided by the development
    of dynamic models of microbial metabolism. Although several
    kinetic models of Lactococcus lactis (a Lactic Acid Bacterium
    (LAB) commonly used in the dairy industry) have been developed
    so far, most of them are simplified and focus only on specific
    metabolic pathways. Therefore, the application of mathematical
    models in the design of an engineering strategy for the
    production of industrially important products by L. lactis has
    been very limited. In this work, we extend the existing kinetic
    model of L. lactis central metabolism to include industrially
    relevant production pathways such as mannitol and
    2,3-butanediol. In this way, we expect to study the dynamics of
    metabolite production and make predictive simulations in L.
    lactis. We used a system of ordinary differential equations
    (ODEs) with approximate Michaelis-Menten-like kinetics for each
    reaction, where the parameters were estimated from multivariate
    time-series metabolite concentrations obtained by our team
    through in vivo Nuclear Magnetic Resonance (NMR). The results
    show that the model captures observed transient dynamics when
    validated under a wide range of experimental conditions.
    Furthermore, we analyzed the model using global perturbations,
    which corroborate experimental evidence about metabolic
    responses upon enzymatic changes. These include that mannitol
    production is very sensitive to lactate dehydrogenase (LDH) in
    the wild type (W.T.) strain, and to mannitol
    phosphoenolpyruvate: a phosphotransferase system (PTS(Mtl)) in
    a LDH mutant strain. LDH reduction has also a positive control
    on 2,3-butanediol levels. Furthermore, it was found that
    overproduction of mannitol-1-phosphate dehydrogenase (MPD) in a
    LDH/PTS(Mtl) deficient strain can increase the mannitol levels.
    The results show that this model has prediction capability over
    new experimental conditions and offers promising possibilities
    to elucidate the effect of alterations in the main metabolism
    of L. lactis, with application in strain optimization.</p>
      </div>
    </div>
    <div class="dc:publisher">
      <p>This model is hosted on 
  <a href="http://www.ebi.ac.uk/biomodels/">BioModels Database</a>
  and identified by: 
  <a href="http://identifiers.org/biomodels.db/BIOMD0000000572">BIOMD0000000572</a>.</p>
      <p>To cite BioModels Database, please use: 
  <a href="http://identifiers.org/pubmed/20587024" title="Latest BioModels Database publication">BioModels Database:
  An enhanced, curated and annotated resource for published
  quantitative kinetic models</a>.</p>
    </div>
    <div class="dc:license">
      <p>To the extent possible under law, all copyright and related or
  neighbouring rights to this encoded model have been dedicated to
  the public domain worldwide. Please refer to 
  <a href="http://creativecommons.org/publicdomain/zero/1.0/" title="Access to: CC0 1.0 Universal (CC0 1.0), Public Domain Dedication">CC0
  Public Domain Dedication</a> for more information.</p>
    </div>
  </body>

    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="Intracellular" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005622"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_1" name="Extracellular" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/go/GO:0005576"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_0" name="G6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17665"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_1" name="ATP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_1">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15422"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_2" name="ADP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_2">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16761"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_3" name="Pint" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_3">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18367"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_4" name="F6P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_4">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15946"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_5" name="FBP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_5">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16905"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_6" name="G3P" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_6">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17138"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_7" name="BPG" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_7">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16001"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_8" name="PEP" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_8">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18021"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_9" name="NAD" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_9">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15846"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_10" name="NADH" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_10">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16908"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_11" name="PYR" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_11">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15361"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_12" name="AcetCoA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_12">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15351"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_13" name="Acetoin" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_13">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15688"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_14" name="Mannitol" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_14">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:29864"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_15" name="Mannitol1Phosphate" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_15">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16298"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_16" name="CoA" simulationType="reactions" compartment="Compartment_0" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_16">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15346"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_17" name="Pext" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_17">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:18367"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="Lactate" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_18">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:422"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Ethanol" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:16236"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Acetate" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:30089"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_21" name="Butanediol" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_21">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:52684"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_22" name="Glucose" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_22">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:17234"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="Acetoin_Ext" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_23">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15688"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_24" name="Mannitol_Ext" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:29864"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_25" name="Formate" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_25">
    <CopasiMT:is>
      <rdf:Bag>
        <rdf:li rdf:resource="http://identifiers.org/chebi/CHEBI:15740"/>
      </rdf:Bag>
    </CopasiMT:is>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfReactions>
      <Reaction key="Reaction_0" name="PTS_Glc" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_22" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_0" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_22" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5061" name="Vmax_PTS_Glc" value="3.71082"/>
          <Constant key="Parameter_5063" name="kaPint_PTS_Glc" value="0.070909"/>
          <Constant key="Parameter_5064" name="kiFBP_PTS_Glc" value="1.16937"/>
          <Constant key="Parameter_5058" name="kmG6P_PTS_Glc" value="0.284871"/>
          <Constant key="Parameter_5060" name="kmGlucose_PTS_Glc" value="0.0485045"/>
          <Constant key="Parameter_5059" name="kmPEP_PTS_Glc" value="0.305604"/>
          <Constant key="Parameter_5062" name="kmPYR_PTS_Glc" value="1.95993"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="Metabolite_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="Parameter_5061"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="Parameter_5063"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Parameter_5064"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="Parameter_5058"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="Parameter_5060"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Parameter_5059"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Parameter_5062"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="ATPase" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5065" name="Vmax_ATPase" value="3.2901"/>
          <Constant key="Parameter_5056" name="kmATP_ATPase" value="4.34159"/>
          <Constant key="Parameter_5054" name="nATPase" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_5065"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_5056"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_5054"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="P_transp" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_17" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_3" stoichiometry="2"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_3" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_17" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5053" name="Vmax_Ptransport" value="3.59588"/>
          <Constant key="Parameter_5057" name="kiPint_Ptransport" value="0.561093"/>
          <Constant key="Parameter_5055" name="kmADP_Ptransport" value="0.192278"/>
          <Constant key="Parameter_5030" name="kmATP_Ptransport" value="0.523288"/>
          <Constant key="Parameter_5028" name="kmPext_Ptransport" value="0.749898"/>
          <Constant key="Parameter_5027" name="kmPint_Ptransport" value="0.30336"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="Metabolite_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Parameter_5053"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Parameter_5057"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_5055"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="Parameter_5030"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_5028"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_5027"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="PGI" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_0" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5031" name="Keq_PGI" value="0.43"/>
          <Constant key="Parameter_5029" name="Vmax_PGI" value="21.681"/>
          <Constant key="Parameter_5033" name="kmF6P_PGI" value="3.13894"/>
          <Constant key="Parameter_5048" name="kmG6P_PGI" value="0.199409"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Metabolite_0"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Parameter_5031"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Parameter_5029"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5033"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5048"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="PFK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_5" stoichiometry="1"/>
          <Product metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5036" name="Vmax_PFK" value="18.3577"/>
          <Constant key="Parameter_5050" name="kmADP_PFK" value="10.7357"/>
          <Constant key="Parameter_5051" name="kmATP_PFK" value="0.0616607"/>
          <Constant key="Parameter_5045" name="kmF6P_PFK" value="1.01973"/>
          <Constant key="Parameter_5032" name="kmFBP_PFK" value="86.8048"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Parameter_5036"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="Parameter_5050"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Parameter_5051"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="Parameter_5045"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="Parameter_5032"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="FBA" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_6" stoichiometry="2"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5040" name="Keq_FBA" value="0.056"/>
          <Constant key="Parameter_5047" name="Vmax_FBA" value="56.1311"/>
          <Constant key="Parameter_5034" name="kmFBP_FBA" value="0.300745"/>
          <Constant key="Parameter_5046" name="kmG3P_FBA" value="10.1058"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Parameter_5040"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="Parameter_5047"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="Parameter_5034"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Parameter_5046"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="GAPDH" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_6" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_3" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_7" stoichiometry="1"/>
          <Product metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_6" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5039" name="Keq_GAPDH" value="0.0007"/>
          <Constant key="Parameter_5043" name="Vmax_GAPDH" value="30.0058"/>
          <Constant key="Parameter_5038" name="kmBPG_GAPDH" value="0.0481603"/>
          <Constant key="Parameter_5042" name="kmG3P_GAPDH" value="0.181788"/>
          <Constant key="Parameter_5041" name="kmNADH_GAPDH" value="0.643019"/>
          <Constant key="Parameter_5044" name="kmNAD_GAPDH" value="0.0477445"/>
          <Constant key="Parameter_5049" name="kmPint_GAPDH" value="6.75302"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="Parameter_5039"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="Parameter_5043"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="Parameter_5038"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="Parameter_5042"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="Parameter_5041"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="Parameter_5044"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="Parameter_5049"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="ENO" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_7" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_8" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_7" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5035" name="Keq_ENO" value="27.55"/>
          <Constant key="Parameter_5037" name="Vmax_ENO" value="29.132"/>
          <Constant key="Parameter_5052" name="kmADP_ENO" value="0.413195"/>
          <Constant key="Parameter_5066" name="kmATP_ENO" value="0.748238"/>
          <Constant key="Parameter_5067" name="kmBPG_ENO" value="0.0241572"/>
          <Constant key="Parameter_5073" name="kmPEP_ENO" value="1.38899"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="Parameter_5035"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="Parameter_5037"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="Parameter_5052"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Parameter_5066"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="Parameter_5067"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="Parameter_5073"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="PYK" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5072" name="Vmax_PYK" value="2.22404"/>
          <Constant key="Parameter_5074" name="kaFBP_PYK" value="0.0388651"/>
          <Constant key="Parameter_5069" name="kiPint_PYK" value="3.70071"/>
          <Constant key="Parameter_5068" name="kmADP_PYK" value="3.07711"/>
          <Constant key="Parameter_5071" name="kmATP_PYK" value="29.6028"/>
          <Constant key="Parameter_5070" name="kmPEP_PYK" value="0.330583"/>
          <Constant key="Parameter_5075" name="kmPYR_PYK" value="96.4227"/>
          <Constant key="Parameter_5079" name="nPYK" value="3"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="Parameter_5072"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="Parameter_5074"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="Parameter_5069"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Parameter_5068"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Parameter_5071"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="Parameter_5070"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="Parameter_5075"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="Parameter_5079"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="LDH" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_18" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_5" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_18" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5077" name="Vmax_LDH" value="566.598"/>
          <Constant key="Parameter_5076" name="kaFBP_LDH" value="0.0184011"/>
          <Constant key="Parameter_5080" name="kiPint_LDH" value="0.0676829"/>
          <Constant key="Parameter_5078" name="kmLactate_LDH" value="94.1203"/>
          <Constant key="Parameter_5082" name="kmNADH_LDH" value="0.144443"/>
          <Constant key="Parameter_5084" name="kmNAD_LDH" value="3.08447"/>
          <Constant key="Parameter_5085" name="kmPYR_LDH" value="0.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="Metabolite_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Parameter_5077"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="Parameter_5076"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="Parameter_5080"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="Parameter_5078"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="Parameter_5082"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="Parameter_5084"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="Parameter_5085"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="PDH" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_12" stoichiometry="1"/>
          <Product metabolite="Metabolite_25" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_6" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_25" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5081" name="Keq_PFL" value="650"/>
          <Constant key="Parameter_5083" name="KmCoA_PFL" value="0.124066"/>
          <Constant key="Parameter_5088" name="Vmax_PFL" value="0.00230934"/>
          <Constant key="Parameter_5089" name="kiG3P_PFL" value="0.511288"/>
          <Constant key="Parameter_5090" name="kmAcetCoA_PFL" value="7.34319"/>
          <Constant key="Parameter_5086" name="kmFormate_PFL" value="54.2693"/>
          <Constant key="Parameter_5087" name="kmPYR_PFL" value="5.77662"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="Metabolite_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="Metabolite_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="Parameter_5081"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="Parameter_5083"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Parameter_5088"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Parameter_5089"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="Parameter_5090"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Parameter_5086"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="Parameter_5087"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="AE" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_19" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="2"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_1" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_19" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5091" name="Vmax_AE" value="2.11844"/>
          <Constant key="Parameter_5093" name="kiATP_AE" value="6.28119"/>
          <Constant key="Parameter_5092" name="kmAcetCoA_AE" value="7.38021"/>
          <Constant key="Parameter_5094" name="kmCoA_AE" value="0.091813"/>
          <Constant key="Parameter_5095" name="kmEthanol_AE" value="2.28106"/>
          <Constant key="Parameter_5096" name="kmNADH_AE" value="0.43127"/>
          <Constant key="Parameter_5097" name="kmNAD_AE" value="1.31442"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="Metabolite_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="Parameter_5091"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="Parameter_5093"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Parameter_5092"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="Parameter_5094"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="Parameter_5095"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Parameter_5096"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="Parameter_5097"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="AC" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_12" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_2" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_20" stoichiometry="1"/>
          <Product metabolite="Metabolite_1" stoichiometry="1"/>
          <Product metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_2" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_1" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_12" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_20" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_16" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5098" name="Vmax_ACK" value="3.83918"/>
          <Constant key="Parameter_5099" name="kmADP_ACK" value="1.17242"/>
          <Constant key="Parameter_5106" name="kmATP_ACK" value="14.1556"/>
          <Constant key="Parameter_5105" name="kmAcetCoA_ACK" value="0.55824"/>
          <Constant key="Parameter_5104" name="kmAcetate_ACK" value="0.552221"/>
          <Constant key="Parameter_5103" name="kmCoA_ACK" value="0.173388"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Metabolite_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_1"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Metabolite_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_20"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5098"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_5099"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_5106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Parameter_5105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_5104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_5103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="PA" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_11" stoichiometry="2"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5101" name="Keq_ALS" value="900000"/>
          <Constant key="Parameter_5100" name="Vmax_ALS" value="0.354581"/>
          <Constant key="Parameter_5111" name="kmAcetoin_ALS" value="0.0495418"/>
          <Constant key="Parameter_5108" name="kmPYR_ALS" value="0.262819"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="Parameter_5101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Parameter_5100"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Parameter_5111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="Parameter_5108"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="AB" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_21" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_21" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5109" name="Keq_BDH" value="1400"/>
          <Constant key="Parameter_5110" name="Vmax_BDH" value="2.28578"/>
          <Constant key="Parameter_5102" name="kmAcetoin_BDH" value="5.62373"/>
          <Constant key="Parameter_5107" name="kmButanediol_BDH" value="1.80684"/>
          <Constant key="Parameter_5112" name="kmNADH_BDH" value="3.54858"/>
          <Constant key="Parameter_5113" name="kmNAD_BDH" value="1.29567"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Parameter_5109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Parameter_5110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Parameter_5107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_5112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Parameter_5113"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="MPD" reversible="true" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_4" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_9" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="2"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_9" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_10" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5114" name="Keq_MPD" value="200"/>
          <Constant key="Parameter_5115" name="Vmax_MPD" value="1.32695"/>
          <Constant key="Parameter_5120" name="kiF6P_MPD" value="22.0284"/>
          <Constant key="Parameter_5117" name="kmF6P_MPD" value="0.321372"/>
          <Constant key="Parameter_5119" name="kmMannitol1Phoshate_MPD" value="0.0891203"/>
          <Constant key="Parameter_5118" name="kmNADH_MPD" value="0.0303446"/>
          <Constant key="Parameter_5116" name="kmNAD_MPD" value="0.373149"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="Parameter_5114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="Metabolite_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="Parameter_5115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="Parameter_5120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="Parameter_5117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Parameter_5119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="Parameter_5118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="Parameter_5116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="MP" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5123" name="Vmax_MP" value="3.48563"/>
          <Constant key="Parameter_5122" name="kmMannitol1Phosphate_MP" value="3.51571"/>
          <Constant key="Parameter_5121" name="kmMannitol_MP" value="0.238849"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Parameter_5123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_5122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Parameter_5121"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="PTS_Man" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_24" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_8" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_15" stoichiometry="1"/>
          <Product metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_15" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_8" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_11" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5180" name="Vmax_PTS_Man" value="4.44903"/>
          <Constant key="Parameter_5140" name="kmMannitol1Phosphate_PTS_Man" value="0.362571"/>
          <Constant key="Parameter_5124" name="kmMannitolExt_PTS_Man" value="0.0127321"/>
          <Constant key="Parameter_5178" name="kmPEP_PTS_Man" value="2.20816"/>
          <Constant key="Parameter_5183" name="kmPYR_PTS_Man" value="0.344134"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="Metabolite_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="Metabolite_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_11"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="Parameter_5180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="Parameter_5140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="Parameter_5124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="Parameter_5178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="Parameter_5183"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="Acetoin_transp" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_13" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_13" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_23" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5126" name="Vmax_Acetoin_transp" value="1.60066"/>
          <Constant key="Parameter_5129" name="kmAcetoin_Acetoin_transp" value="1.89255"/>
          <Constant key="Parameter_5127" name="kmAcetoin_Ext_Acetoin_transp" value="7.05248"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="Metabolite_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Parameter_5126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="Parameter_5129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Parameter_5127"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="Mannitol_transp" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_14" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_14" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_24" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5177" name="Vmax_Mannitol_transp" value="1.62459"/>
          <Constant key="Parameter_5125" name="kmMannitol_Ext_Mannitol_transp" value="0.940662"/>
          <Constant key="Parameter_5179" name="kmMannitol_Mannitol_transp" value="0.0223502"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="Metabolite_14"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="Metabolite_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="Parameter_5177"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="Parameter_5125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="Parameter_5179"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="FBPase" reversible="false" fast="false" addNoise="false">
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_5" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_4" stoichiometry="1"/>
          <Product metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_4" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_5" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_3" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5128" name="Vmax_FBPase" value="0.0970486"/>
          <Constant key="Parameter_5130" name="kmF6P_FBPase" value="1.90796"/>
          <Constant key="Parameter_5139" name="kmFBP_FBPase" value="0.412307"/>
          <Constant key="Parameter_5136" name="kmPint_FBPase" value="0.0109675"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="Metabolite_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Parameter_5128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Parameter_5130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="Parameter_5139"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="Parameter_5136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular]" value="0.047" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[G6P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[ATP]" value="1.3830284840170765e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[ADP]" value="5.7699784926623983e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Pint]" value="1.082913413187454e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[F6P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[FBP]" value="4.3305214902687007e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[G3P]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[BPG]" value="3.5761766654838239e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[PEP]" value="7.0166272416165593e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NAD]" value="1.3217996967029298e+20" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NADH]" value="57552896461065.109" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[PYR]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[AcetCoA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Acetoin]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Mannitol]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Mannitol1Phosphate]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[CoA]" value="2.8304062027900002e+19" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Pext]" value="3.0110704285000002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Lactate]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Ethanol]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Acetate]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Butanediol]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Glucose]" value="2.4088563428000002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Acetoin_Ext]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Mannitol_Ext]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Formate]" value="0" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=Vmax_PTS_Glc" value="3.71082" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kaPint_PTS_Glc" value="0.070909" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kiFBP_PTS_Glc" value="1.16937" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmG6P_PTS_Glc" value="0.28487099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmGlucose_PTS_Glc" value="0.048504499999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmPEP_PTS_Glc" value="0.30560399999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],ParameterGroup=Parameters,Parameter=kmPYR_PTS_Glc" value="1.9599299999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase],ParameterGroup=Parameters,Parameter=Vmax_ATPase" value="3.2900999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase],ParameterGroup=Parameters,Parameter=kmATP_ATPase" value="4.3415900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase],ParameterGroup=Parameters,Parameter=nATPase" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=Vmax_Ptransport" value="3.5958800000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kiPint_Ptransport" value="0.56109299999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmADP_Ptransport" value="0.192278" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmATP_Ptransport" value="0.52328799999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmPext_Ptransport" value="0.74989799999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],ParameterGroup=Parameters,Parameter=kmPint_Ptransport" value="0.30336000000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Keq_PGI" value="0.42999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=Vmax_PGI" value="21.681000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=kmF6P_PGI" value="3.1389399999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],ParameterGroup=Parameters,Parameter=kmG6P_PGI" value="0.199409" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=Vmax_PFK" value="18.357700000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmADP_PFK" value="10.7357" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmATP_PFK" value="0.061660699999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmF6P_PFK" value="1.01973" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],ParameterGroup=Parameters,Parameter=kmFBP_PFK" value="86.8048" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Keq_FBA" value="0.056000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=Vmax_FBA" value="56.131100000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=kmFBP_FBA" value="0.30074499999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],ParameterGroup=Parameters,Parameter=kmG3P_FBA" value="10.1058" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Keq_GAPDH" value="0.00069999999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=Vmax_GAPDH" value="30.005800000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmBPG_GAPDH" value="0.048160300000000003" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmG3P_GAPDH" value="0.18178800000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmNADH_GAPDH" value="0.64301900000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmNAD_GAPDH" value="0.047744500000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],ParameterGroup=Parameters,Parameter=kmPint_GAPDH" value="6.7530200000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Keq_ENO" value="27.550000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=Vmax_ENO" value="29.132000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmADP_ENO" value="0.41319499999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmATP_ENO" value="0.74823799999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmBPG_ENO" value="0.0241572" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],ParameterGroup=Parameters,Parameter=kmPEP_ENO" value="1.3889899999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=Vmax_PYK" value="2.22404" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kaFBP_PYK" value="0.0388651" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kiPint_PYK" value="3.7007099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmADP_PYK" value="3.0771099999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmATP_PYK" value="29.602799999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmPEP_PYK" value="0.33058300000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=kmPYR_PYK" value="96.422700000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],ParameterGroup=Parameters,Parameter=nPYK" value="3" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=Vmax_LDH" value="566.59799999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kaFBP_LDH" value="0.0184011" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kiPint_LDH" value="0.067682900000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmLactate_LDH" value="94.1203" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmNADH_LDH" value="0.14444299999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmNAD_LDH" value="3.08447" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],ParameterGroup=Parameters,Parameter=kmPYR_LDH" value="0.01" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=Keq_PFL" value="650" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=KmCoA_PFL" value="0.124066" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=Vmax_PFL" value="0.00230934" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kiG3P_PFL" value="0.51128799999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kmAcetCoA_PFL" value="7.3431899999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kmFormate_PFL" value="54.269300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],ParameterGroup=Parameters,Parameter=kmPYR_PFL" value="5.7766200000000003" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=Vmax_AE" value="2.1184400000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kiATP_AE" value="6.2811899999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmAcetCoA_AE" value="7.3802099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmCoA_AE" value="0.091813000000000006" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmEthanol_AE" value="2.2810600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmNADH_AE" value="0.43126999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],ParameterGroup=Parameters,Parameter=kmNAD_AE" value="1.3144199999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=Vmax_ACK" value="3.8391799999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmADP_ACK" value="1.17242" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmATP_ACK" value="14.1556" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmAcetCoA_ACK" value="0.55823999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmAcetate_ACK" value="0.55222099999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],ParameterGroup=Parameters,Parameter=kmCoA_ACK" value="0.17338799999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=Keq_ALS" value="900000" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=Vmax_ALS" value="0.35458099999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=kmAcetoin_ALS" value="0.049541799999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],ParameterGroup=Parameters,Parameter=kmPYR_ALS" value="0.26281900000000002" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=Keq_BDH" value="1400" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=Vmax_BDH" value="2.2857799999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmAcetoin_BDH" value="5.6237300000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmButanediol_BDH" value="1.80684" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmNADH_BDH" value="3.5485799999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],ParameterGroup=Parameters,Parameter=kmNAD_BDH" value="1.2956700000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=Keq_MPD" value="200" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=Vmax_MPD" value="1.3269500000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kiF6P_MPD" value="22.028400000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmF6P_MPD" value="0.32137199999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmMannitol1Phoshate_MPD" value="0.0891203" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmNADH_MPD" value="0.030344599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],ParameterGroup=Parameters,Parameter=kmNAD_MPD" value="0.37314900000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP],ParameterGroup=Parameters,Parameter=Vmax_MP" value="3.48563" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP],ParameterGroup=Parameters,Parameter=kmMannitol1Phosphate_MP" value="3.5157099999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP],ParameterGroup=Parameters,Parameter=kmMannitol_MP" value="0.23884900000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=Vmax_PTS_Man" value="4.4490299999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmMannitol1Phosphate_PTS_Man" value="0.36257099999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmMannitolExt_PTS_Man" value="0.0127321" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmPEP_PTS_Man" value="2.2081599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],ParameterGroup=Parameters,Parameter=kmPYR_PTS_Man" value="0.344134" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp],ParameterGroup=Parameters,Parameter=Vmax_Acetoin_transp" value="1.60066" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp],ParameterGroup=Parameters,Parameter=kmAcetoin_Acetoin_transp" value="1.89255" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp],ParameterGroup=Parameters,Parameter=kmAcetoin_Ext_Acetoin_transp" value="7.0524800000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp],ParameterGroup=Parameters,Parameter=Vmax_Mannitol_transp" value="1.62459" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp],ParameterGroup=Parameters,Parameter=kmMannitol_Ext_Mannitol_transp" value="0.940662" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp],ParameterGroup=Parameters,Parameter=kmMannitol_Mannitol_transp" value="0.022350200000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=Vmax_FBPase" value="0.097048599999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=kmF6P_FBPase" value="1.9079600000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=kmFBP_FBPase" value="0.41230699999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],ParameterGroup=Parameters,Parameter=kmPint_FBPase" value="0.0109675" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 0 1.3217996967029298e+20 1.082913413187454e+21 0 5.7699784926623983e+20 0 7.0166272416165593e+19 0 0 0 0 0 4.3305214902687007e+20 0 0 0 3.0110704285000002e+22 2.4088563428000002e+22 0 3.5761766654838239e+19 0 57552896461065.109 2.8304062027900002e+19 1.3830284840170765e+20 0 0 0.047 1 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_17" target="40.txt" append="0" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="72"/>
        <Parameter name="Duration" type="float" value="7200"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_13" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value=""/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_8" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_17" name="MATLAB" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Reference=Time"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[ADP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[ATP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[AcetCoA],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Acetate],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Acetoin],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Acetoin_Ext],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[BPG],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Butanediol],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[CoA],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Ethanol],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[F6P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[FBP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Formate],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[G3P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[G6P],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Glucose],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Lactate],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Mannitol1Phosphate],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Mannitol],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Mannitol_Ext],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NADH],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[NAD],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[PEP],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[PYR],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Extracellular],Vector=Metabolites[Pext],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Compartments[Intracellular],Vector=Metabolites[Pint],Reference=Concentration"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AB],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AC],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[AE],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ATPase],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Acetoin_transp],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[ENO],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBA],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[FBPase],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[GAPDH],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[LDH],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MP],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[MPD],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[Mannitol_transp],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PA],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PDH],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PFK],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PGI],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Glc],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PTS_Man],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[PYK],Reference=Flux"/>
        <Object cn="CN=Root,Model=Costa2014 - Computational Model of L. lactis Metabolism,Vector=Reactions[P_transp],Reference=Flux"/>
      </Table>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="BIOMD0000000572_url.xml">
    <SBMLMap SBMLid="ADP" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="ATP" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="AcetCoA" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="Acetate" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Acetoin" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="Acetoin_Ext" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="BPG" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Butanediol" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="CoA" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="Ethanol" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="F6P" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="FBP" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Formate" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="G3P" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="G6P" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="Glucose" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="Lactate" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="Mannitol" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="Mannitol1Phosphate" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="Mannitol_Ext" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="NAD" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="NADH" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="PEP" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="PYR" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="Pext" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="Pint" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="compartment_1" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="compartment_2" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="function_4_ACK" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="function_4_AE" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="function_4_ALS" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="function_4_ATPase" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="function_4_Acetoin_transp" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="function_4_BDH" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="function_4_ENO" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="function_4_FBA" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="function_4_FBPase" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="function_4_GAPDH" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="function_4_LDH" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="function_4_MP" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="function_4_MPD" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="function_4_Mannitol_transp" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="function_4_PFK" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="function_4_PFL" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="function_4_PGI" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="function_4_PTS_Glc" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="function_4_PTS_Man" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="function_4_PYK" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="function_4_P_transp" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="re12" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="re13" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="re14" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="re15" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="re16" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="re17" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="re18" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="re20" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="re21" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="re22" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="re23" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="re24" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="re25" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="re26" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="re27" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="re28" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="re29" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="re30" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="re31" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="re32" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="re33" COPASIkey="Reaction_20"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_6" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="liter" symbol="l">
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_20" name="mole" symbol="mol">
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>

## LG Energy Solution Poc on February ~ March of 2021.

---

### SAS ESP Test Cases
#### 1. Read HMEQ data and score data reading performance (_01_NAME_XXX.xml_)
#### 2. Score single Astore file for XX model (_02_NAME_XXX.xml_)
#### 3. Score DS2 file with single Astore for Ensemble model (_03_NAME_XXX.xml_)
#### 4. Score DS2 file with multiple Astore for Ensemble model (_04_NAME_XXX.xml_)
#### 5. Integration ESP with Model Manager and score registered models (_05_NAME_XXX.xml_)
#### 6. Uploade ZIP file to Model Manager and score registered models (_06_NAME_XXX.xml_)

---

### Related Documentation
- [google](https://www.google.com/)

---

### Environment in Azure
- SAS Viya: http://52.231.154.112/
- SAS ESP: http://52.231.154.112/SASEventStreamProcessingStudio/

---

### SAS ESP - Setup Setting
- For example, for Local declaration in ~/.bash_profile add the following
```bash
export DFESP_HOME=/opt/sas/viya/home/SASEventStreamProcessingEngine/6.2
export LD_LIBRARY_PATH=$DFESP_HOME/lib:/opt/sas/viya/home/SASFoundation/sasexe
export PATH=$PATH:$DFESP_HOME/bin
```
- Then apply declaration by executing
```bash
source ~/.bash_profile
```

---

### Load Data to CAS by SAS coding
- Load CSV file to CAS
```sas
cas mysess ;
caslib _all_ assign ;

%let indata=/home/viyademo20/LG_EnSol/hmeq.csv ;

proc cas ;
table.droptable / caslib="public" name="hmeq" quiet=true;
	upload path="&indata"               
	casOut={name="hmeq" caslib="public" promote=true}
	importOptions={fileType="csv"} ; 
run ;

proc contents data = public.hmeq ; run ;

cas mysess  terminate ;
```

- [Six Easy Ways to Import Local SAS Data Sets into CAS (SAS Viya 3.5)](https://communities.sas.com/t5/SAS-Communities-Library/Six-Easy-Ways-to-Import-Local-SAS-Data-Sets-into-CAS-SAS-Viya-3/ta-p/671255)

---

### HMEQ Variable Settings in VDMML Pipeline

Variable | Type | Role | Level
---------|------|------|------
BAD | Numeric | Target | Binary

---


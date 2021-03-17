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

<details><summary><b> Configuring Access to Analytic Store Model Files for MAS </b></summary>
<br/>

- Model’s analytic store (ASTORE) file must be accessible from the __/models/astores/viya__ directory path.
- The Compute service extracts the ASTORE file from the analytic store’s CAS table in the ModelStore caslib and copies it to __/opt/sas/viya/config/data/modelsvr/astore__.
- Therefore, Mapping Analytic Store Directories by executing

```bash
mkdir -p /models/astores/
ln -s /opt/sas/viya/config/data/modelsvr/astore /models/astores/viya
```

- [Model Manager 15.3 Administration - Configuring Access to Analytic Store Model Files](https://go.documentation.sas.com/?cdcId=mdlmgrcdc&cdcVersion=15.3&docsetId=mdlmgrag&docsetTarget=p0t47w2wbv1resn1nifnebiq2qyh.htm&locale=en)
- [Viya 3.5 Administration - Configuring Access to Analytic Store Model Files](https://go.documentation.sas.com/?cdcId=calcdc&cdcVersion=3.5&docsetId=calmodels&docsetTarget=n10916nn7yro46n119nev9sb912c.htm&locale=en)
</details>

---

<details><summary><b> My SAS Environment on Azure </b></summary>
<br/>
	
- SAS Viya: http://52.231.154.112/
- SAS ESP: http://52.231.154.112/SASEventStreamProcessingStudio/
</details>

---

<details><summary><b> Setup ESP Engine </b></summary>
<br/>
	
- For example, in case of Local declaration in ~/.bash_profile add the following
```bash
export DFESP_HOME=/opt/sas/viya/home/SASEventStreamProcessingEngine/6.2
export LD_LIBRARY_PATH=$DFESP_HOME/lib:/opt/sas/viya/home/SASFoundation/sasexe
export PATH=$PATH:$DFESP_HOME/bin
```
- Then apply declaration by executing
```bash
source ~/.bash_profile
```
</details>

---

<details><summary><b> Load Data to CAS by SAS code </b></summary>
<br/>

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
</details>

---

<details><summary><b> Define HMEQ Variables in VDMML Pipeline </b></summary>
<br/>

Num | Variable | Type | Role | Level
----|---------|------|------|------
1 | BAD | Numeric | Target | Binary
2 | CLAGE | Numeric | Input | Interval
3 | CLNO | Numeric | Input |Interval
4 | DEBTINC | Numeric | Input | Interval
5 | DELINQ | Numeric | Input | Interval
6 | DEROG | Numeric | Input | Interval
7 | JOB | Character | Input | Nominal
8 | LOAN | Numeric | Input | Interval
10 | MORTDUE | Numeric | Input | Interval
11 | NINQ | Numeric | Input | Interval
12 | REASON | Character | Input | Nominal
13 | VALUE | Numeric | Input | Interval
14 | YOJ | Numeric | Input | Interval
</details>

---


```

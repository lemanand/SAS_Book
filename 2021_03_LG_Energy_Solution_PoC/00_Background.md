## LG Energy Solution Poc on February ~ March of 2021.
<br/>

### SAS ESP Test Cases
#### 1. Read HMEQ data and score data reading performance (_01_NAME_XXX.xml_)
#### 2. Score single Astore file for XX model (_02_NAME_XXX.xml_)
#### 3. Score DS2 file with single Astore for Ensemble model (_03_NAME_XXX.xml_)
#### 4. Score DS2 file with multiple Astore for Ensemble model (_04_NAME_XXX.xml_)
#### 5. Integration ESP with Model Manager and score registered models (_05_NAME_XXX.xml_)
#### 6. Uploade ZIP file to Model Manager and score registered models (_06_NAME_XXX.xml_)
<br/>

### Related Documentation
- [google](https://www.google.com/)
<br/>

### Environment in Azure
- SAS Viya 3.5 SMP: http://52.231.154.112/
<br/>

### SAS ESP - Setup Setting
- For example, for Local declaration in ~/.bash_profile add the following
```bash
export DFESP_HOME=/opt/sas/viya/home/SASEventStreamProcessingEngine/6.2
export LD_LIBRARY_PATH=$DFESP_HOME/lib:/opt/sas/viya/home/SASFoundation/sasexe
export PATH=$PATH:$DFESP_HOME/bin
```
- Then save and apply by executing
```bash
source ~/.bash_profile
```

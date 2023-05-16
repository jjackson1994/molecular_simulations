Working folder
```Bash
cd /home/jake/msim/amber/tutorial/Amber_model_preparation
nautilus --browser /home/jake/msim/amber/tutorial/Amber_model_preparation
```
[Guide](https://documentcloud.adobe.com/gsuiteintegration/index.html?state=%7B%22ids%22%3A%5B%2217VAQcmTRHUCfrQ6GFdjLDHFqfjDoRJVV%22%5D%2C%22action%22%3A%22open%22%2C%22userId%22%3A%22113748869220801030575%22%2C%22resourceKeys%22%3A%7B%7D%7D) 
## 1: INITIAL SCREENS FOR INPUT
1A
```Bash
pdb4amber 1fko.pdb > ifko.pdb
pdb4amber hiv_rt.pdb > hivrt_amber.pdb
pdb4amber hivrt_cys.pdb > hivrt_cys_amber.pdb
```
## 2:  Processing SUBSTRATE
2A. Processing SUBSTRATE – adding Hydrogen's 
```Bash
reduce efz.pdb > efz_h.pdb 
cp efz_h.pdb efz_new.pdb
```
2B. compute charges (AM1), assign gaff
(takes 5 mins)
```Bash
 antechamber -i efz_new.pdb -fi pdb -o efz.mol2 -fo mol2 -c bcc -s 2 
 # check results, with text editor
 subl sqm.out efz.mol2
```
Are all Params Available?
2C Generate input for tleap 
```Bash
parmchk2 -i efz.mol2 -f mol2 -o efz.frcmod 
vi efz.frcmod
```
## 3: Load the generated parameters into tleap 
3A Start tleap and read 
* protein parameter library ff99SB
* gaff library 
```Bash
tleap
#now inside tleap
source oldff/leaprc.ff99SB
source leaprc.gaff 
```
3B. generate a new entry for the substrate EFZ 
```Bash
 EFZ = loadmol2 efz.mol2   
```
3C. check whether EFZ entry exists
```Bash
list  
```
3D. check whether there are missing parameters for EFZ  
```Bash
check EFZ   
```
3E. if there are missing parameters load the ones you have generated 
```Bash
loadamberparams efz.frcmod
```
3F. if the unit is OK (check EFZ) save this library entry 
```Bash
saveoff EFZ efz.lib 
saveamberparm EFZ efz.prmtop efz.rst7       
```
## 4: Prepare the whole complex protein + substrate 
```Bash
 cat hivrt_cys.pdb efz.pdb > hivrt_efz.pdb 
```
4A generate input for tleap
```Bash
source oldff/leaprc.ff99SB
source leaprc.gaff
loadamberparams efz.frcmod
loadoff efz.lib
hivcompl = loadpdb hivrt_efz.pdb
saveamberparm hivcompl hivrt_efz.prmtop hivrt_efz.rst7
savepdb hivcompl hivrt_efz_amber.pdb
quit 
```
## 4B run tleap for the complex
needed to download this file from moodle
```Bash
tleap -f tleap_protefz.in 
```

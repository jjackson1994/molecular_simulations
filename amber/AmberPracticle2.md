Make sure we have no gaps in FF, as this would cause artificial gradients

LEAP log files

4.=
Start with tleap
4A
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
We defined al the typical params we need principle we have the interpreter for our structure
`loadoff efz.lib`
Load into complex with no H 

Program adds Hydrogen's
PDB file has protein names has topology file 

We next change from PDB to save space and format restricted .

WARNING CHARGE NOT ZERO

TYPE INDEX internal library ie double bond ie particular atomic params 

%FLAG 
rst file has velocities 

Once done super imposes the two files in PyMol to check everything is okay

Error did not add the
Restarted PyMol 

* Show efz only
* depth cue 
* zoom center 15
* Very linge bon by the yey 4,4 Angstrom

ions places randomly but not comlet ie certain shell amd negative residue  

Realistically ions diffuse

water too mobile to freeze 
take water sim from someone else
Geometry of perodic boundary conditio

Next less 
temp change 10B
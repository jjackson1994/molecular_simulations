Material on  Moodle

want to produce FF 

AMBER_FF.docx 

Translate into pairwise potentials which have fixed format
(purely mechanical)

What section do you need to produce
Identify atoms and the masses 
Carbon has different names based on connectivity

Covert to precise atoms 

```Bash 
cd /home/jake/msim/amber/tutorial/Amber_model_preparation
```

[PDB entry ](https://www.rcsb.org/structure/1FKO)
* Crystal structure it will be  1 model 
* If Solution structure many models  
* See how many chains you have
* Chain A and B belong to same protein
* Notice one is 40 the other is very long 
* N^2 complexity do we need both or is one enough
* Has modified cystine residue 
* Put into PyMol and look at it are there any peculiarities
* Now input log files
* LEAP Not sure what the command was
leap input_log_files

```Bash 
pdb4amber 1fko.pdb > ifko.pdb
```
Don't leave gaps not correct bond plan 
force constants are long range

jump to end of pdb file delete chain A del drug and only use protein 
Need something regularized
```hiv_rt.pub```

Connected to something difficult
Trick rename to PDB to something that will be recognized and the Force field will be applied

In middle of file records called HEATM ie head atom 
make this into a normal atom put as sulfur atom 

just renumbering then no amber complaints 
NO atoms missing from the connectivity otherwise generate a gradient 

Missing drug Diamer 
Analyses in PyMol check there are no critical interaction with the substrate 

Checklist
* Protein
* Drug

Drug could add hydrogen's did not add hydrogen's to proteins, unless high res not seen we need drug molecule to add this 

Extract from initial structure same residue name EFZ 
Just add hydrogen's

In PyMol figure out which has hydrogen check that they are not perpendicular to ring or something 

Assume the substrate will have force field problems 
Currently not in force field not a standard residue 

Produce an electric potential around the substrate 
Charge fitting process
For sake of time AM1 used to calc potential and fit charges
antechamber (used before amber)

Need quantum calc to get potential

If not connected properly atomic orbitals miss assigned

Analysis of the bond length and topology of molecule program can identify 

Have to correctly recognize connections 

all atom types in col 6 need to be correct

To evaluate charges plug into a program which calcs salvation free energy

3000 atoms even one mistake 
PDB still has mistakes 

Cx it is possible that there os aparm for van der walls or maybe none when bounf to fl 
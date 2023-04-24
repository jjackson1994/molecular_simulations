# Force Feilds Molecular Mechanics 

[Lecture powerpoint](https://unipdit-my.sharepoint.com/:p:/r/personal/jake_jackson_studenti_unipd_it/_layouts/15/doc2.aspx?sourcedoc=%7B16F5812E-78C0-42E2-8ADF-055D689C991F%7D&file=Lecture_6_forcefields_MM.pptx&action=edit&mobileredirect=true&DefaultItemOpen=1&ct=1680597902276&wdOrigin=OFFICECOM-WEB.START.EDGEWORTH&cid=613b3328-5d32-4775-a0da-c757b85cca2f)

Molecular mechanics objects
```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 22}
```
Could do a taylor expansion 

## Most comonly used method
```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 24}
```
RESP : Restricted electrostatic potential
Use FF  program maybe gammes 
Even if quantum used

### Looking at molecules
```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 26}
```
We want transferable properties 
* Force defined as derivative of the averaging

Need to understand rough critcal view in order to use programs

### Bond stretching 

Hookes law i.e spring
cases where we elongate bond ie H bond in water
```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 29}
```

## Angle Bending
Relationship between atom 1 and 3 

## Bond Twisting 

Affected by many factors, so many atoms
torsion angles  

May take from IR but fails the complexity of environment 

Intrinsically disordered proteins, helices always came out original bias from crystallography
strongly environment dependent. Try to improve angle may make a big difference in our simulations

Prolinine lecture 2, has out of plane movement 

Add pdf link

```pdf
{"url" : "LectureNotes/l2.pdf",
"page": 33}
```

Important regulation of transcription, nature cares about this 
Effects that we don't realize intuitatively. 

Vand der Walls assumed weak not always ie high ionic strength the becomme more dominant 

## Working with FF: Asking correct questions

```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 53}
```

* what is the ensemble
* kinetic question what is timescale for moving between this minimialization can tell if the simulation is correct

Have to make these decisions at the start difficult

IE protein folding happen at ms timescale do i have access to this regime 

```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 55}
```

## MM technique that uses classical objects
Spings & forces 

Most useful goal nowdays remove steric clash 
Other goals better done with molecular dynamics 
Optimization problem minimal 2nd derivatives +

Optimization techniques chose based on dist from minimum
```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 60}
```

```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 61}
```
```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 62}
```
Switching between methods really important 

conjugate grad can shoot over minimum 
without may converge on first minimum 

```pdf
{"url" : "LectureNotes/Lecture_6_forcefields_MM.pdf",
"page": 63}
```
Not really exploring the phase space in MM




The procedures to generate the interpolated band structure of graphene using pwscf and wannier90 are:
- pw.x < graphene.scf > scf.out    
This step creates the charge density file for the next step.
Use the command 'grep nbnd gh.xml' to get the number of bands.
- pw.x < graphene.nscf > nscf.out    
This step creates the necessary files for a given kmesh.    
The kmesh can be obtained by calling the utility script: kmesh.pl 15 15 1 wan
- wannier90.x -pp graphene
This step creates graphene.nnkp file.
- pw2wannier90.x < graphene.pw2wan > pw2wan.out
This step creates graphene.amn, graphene.mmn, and graphene.eig.
- wannier90.x graphene
This step constructs the MLWFs and plots the interpolated band structure after wannierising.

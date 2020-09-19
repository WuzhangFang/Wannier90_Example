The procedures to generate the bands of graphene using pwscf and wannier90 are:
- pw.x < graphene.scf > scf.out
- pw.x < graphene.nscf > nscf.out
- wannier90.x -pp graphene
- pw2wannier90.x < graphene.pw2wan > pw2wan.out
- wannier90.x graphene

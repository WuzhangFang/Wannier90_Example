#!/bin/bash
#SBATCH --job-name=pwscf
#SBATCH --time=1:00:00
#SBATCH --partition=batch
#SBATCH --ntasks=4
#SBATCH --mem-per-cpu=4000
#SBATCH --error=job.%J.err
#SBATCH --output=job.%J.out

module load compiler/intel/16 intel-mkl/16 openmpi/1.10

name=graphene

#mpirun /home/belashchenko/wfang/q-e-qe-6.4.1/bin/pw.x -inp $name.scf  > scf.out
#mpirun /home/belashchenko/wfang/q-e-qe-6.4.1/bin/pw.x -inp $name.nscf  > nscf.out
#wannier90.x -pp $name
mpirun /home/belashchenko/wfang/q-e-qe-6.4.1/bin/pw2wannier90.x -inp $name.pw2wan > pw2wan.out
#wannier90.x $name

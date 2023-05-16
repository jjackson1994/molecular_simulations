[Amber Website](https://ambermd.org/GetAmber.php)
```Bash
  conda install -c conda-forge ambertools=22 compilers
```
This creates a flexible solve problem on my Ubuntu version (probably to recent)  
Maybe this can be solved if the "compilers" are installed individually then Conda can solve the environment more precisely? 
```Shell
conda install -c anaconda bzip2
conda install -c conda-forge fortran-compiler
conda install -c conda-forge ambertools
conda install -c conda-forge xorg-libx11
conda install -c conda-forge bc
conda install -c conda-forge bisoncon
conda install -c conda-forge flex
conda install -c conda-forge gcc
conda install -c anaconda cmake
conda install -c conda-forge openmp


sqlite
blas
nomkl
f90nml
python_abi
pandas
bottleneck
libgfortran-ng
```
Monika's Notes 
```
The resulting file, "Amber20.tar.bz2" must be uncompressed with bunzip2, and extracted with "tar".  On most systems, the command 'tar xvfj Amber20.tar.bz2' should work 

https://ambermd.org/Installation.php        system-based 

advanced fortran compiler is required 

on MacOS installation : xcode, cmake gfortran, cmake, xquartz 

Takes ca 1 hour at least to install
```

Amber's install script was a bit over zealous it installed Miniconda over the top of my active env 

```conda install -c conda-forge fortran-compiler```


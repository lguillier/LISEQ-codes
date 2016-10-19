LISEQ-codes
========

You can find the latest version of the tool at https://github.com/lguillier/

The 'LISEQ-codes' project corresponds to a repository of the differents codes used to produce the results presented in the EFSA external report “Closing gaps for performing a risk assessment on Listeria monocytogenes in ready-to-eat (RTE) foods: activity 3, the comparison of isolates from different compartments along the food chain, and from humans using whole genome sequencing (WGS) analysis”. 

The main objective of the study was to compare L. monocytogenes isolates collected in the EU from ready-to-eat (RTE) foods, compartments along the food chain and from human cases by the use of whole genome sequencing (WGS). In order to trace and share the methodology used to produce results, source codes are provided.

The global methodology is shared below, the input data files and source codes can be found in 'chapter x/' directories (the names of these directories corresponding to chapter number of external EFSA report). 



Chapter 3
========

Chapter 4
========

Chapter 5
========

Chapter 6
========
There were five attribution models that were used in the study. These are listed below together with links to the appropriate programs.

The Dutch model
------------
An example of the Dutch model for 30 locus rMLST, 864 isolates and 10,000 runs, is given in
“DutchModelrMLST_v5_SampleSizeCorrection_Attribution_Human.7z”
which is available at https://github.com/......
This needs to be extracted  using ZIP software. This will produce a .xlsm Excel file.
The program runs under VBA Excel. The input data have to be placed in spreadsheet “Program”, starting with column “X” in the format given in the example.
The attribution scores will be displayed in the columns J,K,L,… depending on the number of sources.
These scores have to copied to the spreadsheet “Results” where the attribution graphic is displayed.

The modified Hald model
------------
The modified Hald model runs under WinBugs which can be downloaded from
http://www.mrc-bsu.cam.ac.uk/software/bugs/the-bugs-project-winbugs/
The prevalence sub-model,
“Attribution_Listeria_Prevalence_Hald_EFSA.odc”
has to run first and the results have to be fed into the main model,
“Attribution_Listeria_RealModel_Hald_EFSA.odc”
Both files are available at https://github.com/......

STRUCTURE model
------------
The program can be downloaded from
http://pritchardlab.stanford.edu/structure.html 

The Asymmetric Island (AI) model (iSource)
------------
The program can be downloaded from
http://www.danielwilson.me.uk/iSource.html

The Aberdeen model
------------
The model was implemented in Mathematica and it can be run in any Linux system with Mathematica installed. An example of the model and associated files (“AbdnAttribution_Mathematica.tgz”) are available at https://github.com/......
In the following instructions on how to install the files and to run the model are given.

*** Installation:

- Uncompress the file in the directory you wish. On a Unix shell:
~~~
   $ tar -xzf AbdnAttribution_Mathematica.tgz
~~~

- Enter in the program directory:
~~~
	 $ cd AbdnAttribution_Mathematica
~~~

- The package contains the following:

	- AbdnAttribution.m : Mathematica script to run the Aberdeen attribution method. It does not need to be edited. Make sure that AbdnAttribution.m is executable. This can be achieved by executing the following command once in the unix shell:

	 $ chmod a+x AbdnAttribution.m

	- Input_AbdnAttribution.ini : Editable file containing the setting to run source attribution.

	- Directory MLST with the data used for Listeria source attribution based on MLST information. This will be used as a benchmark to illustrate the functioning of the program below.


*** Initialisation: 

Open Input_AbdnAttribution.ini. This can be done with any text editor.
The format of the file is: 
~~~
1 "**** Parameters for source attribution with AbdnAttribution.m ****"
2 "****"
3 "**** Please note: only lines 6, 8 and 10 should be edited! ****"
4 "****"
5 "---- Data directory/file ----" 
6       MLST/MLST_AbdnAttribution
7 "---- Reservoir to be attributed ----"
8       Poultry
9 "---- Number of iterations for sample size correction ----"
10      10000
~~~

Line 6: indicates [data directory]/[data file], i.e. the directory where the input and output data is stored (MLST in our example) and the name of the file containing the data (MLST_AbdnAttribution). 

Line 8: Reservoir whose samples will be attributed. In the Listeria dataset, these can be: Bovine, Fish, Human, Ovine, Poultry, Swine

Line 10: Number of iterations for sample size correction.


*** Input data format (see example in the directory MLST, file MLST_AbdnAttribution.csv)

The input data is stored in a comma-separated-values (csv) file. 

Each line of the file contains:

[Reservoir name], loci 1, loci 2, ....., loci n

The isolates for each reservoir type should be consecutive in the file. However, the particular order of reservoirs does not matter. For instance, in MLST_AbdnAttribution.csv they were grouped in the following order: Bovine, Fish, Human, Ovine, Poultry, Swine

*** Running the code:
~~~
	$ ./AbdnAttribution.m
~~~

*** Output results: 

Results are output to an *.xml file which contains the name of the attributed reservoir (can be directly open with Excel or Libreoffice calc).

The output file is stored in [data directory]/[data file]. In the MLST example, it is MLST_AbdnAttribution_Poultry.xls


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats1_10.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats1_10.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats11_15.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats11_15.sav'
  /COMPRESSED.

GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats16_25.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats16_25.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats26_40.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats26_40.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats41_45.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats41_45.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats46_50.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats46_50.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats51_55.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats51_55.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats56_60.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats56_60.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats61_65.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats61_65.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats66_70.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats66_70.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats71_75.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats71_75.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats76_80.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats76_80.sav'
  /COMPRESSED.




GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats81_85.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats81_85.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats86_94.txt"
  /DELCASE=LINE
  /DELIMITERS=",/;"
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=1
  /IMPORTCASE=ALL
  /VARIABLES=
  Mail A100
  V2 29X.
CACHE.
EXECUTE.


STRING  Verif (A10).
COMPUTE Verif=CHAR.SUBSTR(Mail,1,7).
EXECUTE.

FREQUENCIES VARIABLES=Verif
  /ORDER=ANALYSIS.


FILTER OFF.
USE ALL.
SELECT IF (Verif="mailto:").
EXECUTE.

STRING  Mail.Final (A80).
COMPUTE Mail.Final=CHAR.SUBSTR(Mail,8).
EXECUTE.

DELETE VARIABLES Mail Verif.


* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.

FILTER OFF.
USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats86_94.sav'
  /COMPRESSED.





GET
  FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats1_10.sav'.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats11_15.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats16_25.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats26_40.sav'.
EXECUTE.



ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats41_45.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats46_50.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats51_55.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats56_60.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats61_65.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats66_70.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats71_75.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats76_80.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats81_85.sav'.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats86_94.sav'.
EXECUTE.



* Identifier les observations dupliquées.
SORT CASES BY Mail.Final(A).
MATCH FILES
  /FILE=*
  /BY Mail.Final
  /FIRST=PrimaryFirst
  /LAST=PrimaryLast.
DO IF (PrimaryFirst).
COMPUTE  MatchSequence=1-PrimaryLast.
ELSE.
COMPUTE  MatchSequence=MatchSequence+1.
END IF.
LEAVE  MatchSequence.
FORMATS  MatchSequence (f7).
COMPUTE  InDupGrp=MatchSequence>0.
SORT CASES InDupGrp(D).
MATCH FILES
  /FILE=*
  /DROP=PrimaryFirst InDupGrp MatchSequence.
VARIABLE LABELS  PrimaryLast 'Indicateur de chaque dernière observation concordante comme '+
    'Principale'.
VALUE LABELS  PrimaryLast 0 'Observation en double' 1 'Observation principale'.
VARIABLE LEVEL  PrimaryLast (ORDINAL).
FREQUENCIES VARIABLES=PrimaryLast.
EXECUTE.


USE ALL.
SELECT IF (PrimaryLast=1).
EXECUTE.

SORT CASES Mail.Final(A).

DELETE VARIABLES PrimaryLast.



SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/ResultatsFinaux.sav'
  /COMPRESSED.




SAVE TRANSLATE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/ResultatsFinaux.csv'
  /TYPE=CSV
  /ENCODING='UTF8'
  /MAP
  /REPLACE
  /FIELDNAMES
  /CELLS=VALUES.



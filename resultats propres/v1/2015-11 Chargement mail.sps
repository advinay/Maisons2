
GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats1_8.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats1_8.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats9_15.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats9_15.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats16_20.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats16_20.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats21_30.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats21_30.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats31_35.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats31_35.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats36_40.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats36_40.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats41_50.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats41_50.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats51_66.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats51_66.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats67_80.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats67_80.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats81_90.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats81_90.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats91_100.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats91_100.sav'
  /COMPRESSED.


GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats101_109.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats101_109.sav'
  /COMPRESSED.




GET DATA  /TYPE=TXT
  /FILE="/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien "+
    "Leopold/Scraping/Maisons2/resultats propres/resultats110_111.txt"
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


SAVE OUTFILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien Leopold/Scraping/Maisons2/resultats propres/Resultats110_111.sav'
  /COMPRESSED.

GET
  FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats1_8.sav'.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats9_15.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats16_20.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats21_30.sav'.
EXECUTE.



ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats31_35.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats36_40.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats41_50.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats51_66.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats67_80.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats81_90.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats91_100.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats101_109.sav'.
EXECUTE.

ADD FILES /FILE=*
  /FILE='/Users/advinay/Documents/Adrien/Micro-entreprise Nov15/Sebastien '+
    'Leopold/Scraping/Maisons2/resultats propres/Resultats110_111.sav'.
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

CREATE TABLE history (
  id        BIGINT PRIMARY KEY UNIQUE NOT NULL,
  datetime  TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW(),
  type      TEXT NOT NULL,
  filename  TEXT NOT NULL,
  state     BOOL NOT NULL,
  error     TEXT NULL
);

CREATE TABLE enterprises (
  siret          TEXT UNIQUE NULL,
  siren          TEXT NULL,
  nic            TEXT NULL,
  l1_normalisee  TEXT NULL,
  l2_normalisee  TEXT NULL,
  l3_normalisee  TEXT NULL,
  l4_normalisee  TEXT NULL,
  l5_normalisee  TEXT NULL,
  l6_normalisee  TEXT NULL,
  l7_normalisee  TEXT NULL,
  l1_declaree    TEXT NULL,
  l2_declaree    TEXT NULL,
  l3_declaree    TEXT NULL,
  l4_declaree    TEXT NULL,
  l5_declaree    TEXT NULL,
  l6_declaree    TEXT NULL,
  l7_declaree    TEXT NULL,
  numvoie        TEXT NULL,
  indrep         TEXT NULL,
  typvoie        TEXT NULL,
  libvoie        TEXT NULL,
  codpos         TEXT NULL,
  cedex          TEXT NULL,
  rpet           TEXT NULL,
  libreg         TEXT NULL,
  depet          TEXT NULL,
  arronet        TEXT NULL,
  ctonet         TEXT NULL,
  comet          TEXT NULL,
  libcom         TEXT NULL,
  du             TEXT NULL,
  tu             TEXT NULL,
  uu             TEXT NULL,
  epci           TEXT NULL,
  tcd            TEXT NULL,
  zemet          TEXT NULL,
  siege          TEXT NULL,
  enseigne       TEXT NULL,
  ind_publipo    TEXT NULL,
  diffcom        TEXT NULL,
  amintret       TEXT NULL,
  natetab        TEXT NULL,
  libnatetab     TEXT NULL,
  apet700        TEXT NULL,
  libapet        TEXT NULL,
  dapet          TEXT NULL,
  tefet          TEXT NULL,
  libtefet       TEXT NULL,
  efetcent       TEXT NULL,
  defet          TEXT NULL,
  origine        TEXT NULL,
  dcret          TEXT NULL,
  ddebact        TEXT NULL,
  activnat       TEXT NULL,
  lieuact        TEXT NULL,
  actisurf       TEXT NULL,
  saisonat       TEXT NULL,
  modet          TEXT NULL,
  prodet         TEXT NULL,
  prodpart       TEXT NULL,
  auxilt         TEXT NULL,
  nomen_long     TEXT NULL,
  sigle          TEXT NULL,
  nom            TEXT NULL,
  prenom         TEXT NULL,
  civilite       TEXT NULL,
  rna            TEXT NULL,
  nicsiege       TEXT NULL,
  rpen           TEXT NULL,
  depcomen       TEXT NULL,
  adr_mail       TEXT NULL,
  nj             TEXT NULL,
  libnj          TEXT NULL,
  apen700        TEXT NULL,
  libapen        TEXT NULL,
  dapen          TEXT NULL,
  aprm           TEXT NULL,
  ess            TEXT NULL,
  dateess        TEXT NULL,
  tefen          TEXT NULL,
  libtefen       TEXT NULL,
  efencent       TEXT NULL,
  defen          TEXT NULL,
  categorie      TEXT NULL,
  dcren          TEXT NULL,
  amintren       TEXT NULL,
  monoact        TEXT NULL,
  moden          TEXT NULL,
  proden         TEXT NULL,
  esaann         TEXT NULL,
  tca            TEXT NULL,
  esaapen        TEXT NULL,
  esasec1n       TEXT NULL,
  esasec2n       TEXT NULL,
  esasec3n       TEXT NULL,
  esasec4n       TEXT NULL,
  vmaj           TEXT NULL,
  vmaj1          TEXT NULL,
  vmaj2          TEXT NULL,
  vmaj3          TEXT NULL,
  datemaj        TEXT NULL,
  CONSTRAINT siret_pk PRIMARY KEY (siret)
);

CREATE INDEX ON enterprises (siren, nic);
CREATE INDEX ON enterprises (siret);

CREATE TABLE temp_incremental (
  siret          TEXT NULL,
  siren          TEXT NULL,
  nic            TEXT NULL,
  l1_normalisee  TEXT NULL,
  l2_normalisee  TEXT NULL,
  l3_normalisee  TEXT NULL,
  l4_normalisee  TEXT NULL,
  l5_normalisee  TEXT NULL,
  l6_normalisee  TEXT NULL,
  l7_normalisee  TEXT NULL,
  l1_declaree    TEXT NULL,
  l2_declaree    TEXT NULL,
  l3_declaree    TEXT NULL,
  l4_declaree    TEXT NULL,
  l5_declaree    TEXT NULL,
  l6_declaree    TEXT NULL,
  l7_declaree    TEXT NULL,
  numvoie        TEXT NULL,
  indrep         TEXT NULL,
  typvoie        TEXT NULL,
  libvoie        TEXT NULL,
  codpos         TEXT NULL,
  cedex          TEXT NULL,
  rpet           TEXT NULL,
  libreg         TEXT NULL,
  depet          TEXT NULL,
  arronet        TEXT NULL,
  ctonet         TEXT NULL,
  comet          TEXT NULL,
  libcom         TEXT NULL,
  du             TEXT NULL,
  tu             TEXT NULL,
  uu             TEXT NULL,
  epci           TEXT NULL,
  tcd            TEXT NULL,
  zemet          TEXT NULL,
  siege          TEXT NULL,
  enseigne       TEXT NULL,
  ind_publipo    TEXT NULL,
  diffcom        TEXT NULL,
  amintret       TEXT NULL,
  natetab        TEXT NULL,
  libnatetab     TEXT NULL,
  apet700        TEXT NULL,
  libapet        TEXT NULL,
  dapet          TEXT NULL,
  tefet          TEXT NULL,
  libtefet       TEXT NULL,
  efetcent       TEXT NULL,
  defet          TEXT NULL,
  origine        TEXT NULL,
  dcret          TEXT NULL,
  ddebact        TEXT NULL,
  activnat       TEXT NULL,
  lieuact        TEXT NULL,
  actisurf       TEXT NULL,
  saisonat       TEXT NULL,
  modet          TEXT NULL,
  prodet         TEXT NULL,
  prodpart       TEXT NULL,
  auxilt         TEXT NULL,
  nomen_long     TEXT NULL,
  sigle          TEXT NULL,
  nom            TEXT NULL,
  prenom         TEXT NULL,
  civilite       TEXT NULL,
  rna            TEXT NULL,
  nicsiege       TEXT NULL,
  rpen           TEXT NULL,
  depcomen       TEXT NULL,
  adr_mail       TEXT NULL,
  nj             TEXT NULL,
  libnj          TEXT NULL,
  apen700        TEXT NULL,
  libapen        TEXT NULL,
  dapen          TEXT NULL,
  aprm           TEXT NULL,
  ess            TEXT NULL,
  dateess        TEXT NULL,
  tefen          TEXT NULL,
  libtefen       TEXT NULL,
  efencent       TEXT NULL,
  defen          TEXT NULL,
  categorie      TEXT NULL,
  dcren          TEXT NULL,
  amintren       TEXT NULL,
  monoact        TEXT NULL,
  moden          TEXT NULL,
  proden         TEXT NULL,
  esaann         TEXT NULL,
  tca            TEXT NULL,
  esaapen        TEXT NULL,
  esasec1n       TEXT NULL,
  esasec2n       TEXT NULL,
  esasec3n       TEXT NULL,
  esasec4n       TEXT NULL,
  vmaj           TEXT NULL,
  vmaj1          TEXT NULL,
  vmaj2          TEXT NULL,
  vmaj3          TEXT NULL,
  datemaj        TEXT NULL,
  eve            TEXT NULL,
  dateve         TEXT NULL,
  typcreh        TEXT NULL,
  dreactet       TEXT NULL,
  dreacten       TEXT NULL,
  madresse       TEXT NULL,
  menseigne      TEXT NULL,
  mapet          TEXT NULL,
  mprodet        TEXT NULL,
  mauxilt        TEXT NULL,
  mnomen         TEXT NULL,
  msigle         TEXT NULL,
  mnicsiege      TEXT NULL,
  mnj            TEXT NULL,
  mapen          TEXT NULL,
  mproden        TEXT NULL,
  siretps        TEXT NULL,
  tel            TEXT NULL
);

CREATE INDEX ON temp_incremental (siren, nic) WHERE vmaj IN ('E', 'O', 'I');
CREATE INDEX ON temp_incremental (siret) WHERE vmaj IN ('E', 'O', 'I');
CREATE INDEX ON temp_incremental (vmaj) WHERE vmaj IN ('C', 'D', 'F');

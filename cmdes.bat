Nom de domaine : Ynov.loc

#OU
# Creation
#Créer une OU racine "ingesup" :
dsadd ou "ou=ingesup,dc=Ynov,dc=loc"

#Créer une OU DIRI :
dsadd ou "ou=DIRI,ou=ingesup,dc=Ynov,dc=loc"


#Créer une OU ADMI :
dsadd ou "ou=ADMI,ou=ingesup,dc=Ynov,dc=loc"

#Créer une OU SCOLI :
dsadd ou "ou=SCOLI,ou=ingesup,dc=Ynov,dc=loc"

#Créer une OU INTI : 
dsadd ou "ou=INTI,ou=SCOLI,ou=ingesup,dc=Ynov,dc=loc"

#Créer une OU ALTI
dsadd ou "ou=ALTI,ou=SCOLI,ou=ingesup,dc=Ynov,dc=loc"

#Ajout des descriptions

dsmod ou "ou=ingesup,dc=Ynov,dc=loc" -desc "Unite dediée aux utilisateurs de l'ingesup"



# Creation des users



dsadd user "cn=user1,cn=users,dc=Ynov,dc=Int" -pwd * -desc "Administrateur local" -office salle14 
-tel "01 22 33 44 55" -email user1@Ynov.Int -hometel "01 55 66 77 88" -mobile "06 99 88 77 55" 
-fax "01 55 44 22 33" -webpg www.Ynov.Int -title "Utilisateur" -dept Informatique -company PGSM -disabled no
 

#usr-ingesup

dsadd user "cn=usr-ingesup,cn=users,dc=Ynov,dc=loc" -fn UtilisateurIngesup -Mi UE -ln usr-ingesup -display "usr-ingesup" -upn usr-ingesup@ynov.loc -samid usr-ingesup -desc "Utilisateur Ordinaire Ingesup" -office "Service Info" -Tel 0144558800 -email usr-ingesup@ynov.loc -mobile 0655887712 -fax 0144558896 -webpg www.ynov.fr -title "usr-ingesup" -dept Informatique -mustchpwd NO -canchpwd NO -pwdneverexpires yes -disabled  NO -Pwd P@ssword1234

# usr-diri

dsadd user "cn=usr-diri,cn=users,dc=Ynov,dc=loc" -fn UtilisateurDiri -Mi UE -ln usr-diri -display "usr-diri" -upn usr-diri@ynov.loc -samid usr-diri -desc "Utilisateur Ordinaire Diri" -office "Service Info" -Tel 0144558800 -email usr-diri@ynov.loc -mobile 0655887712 -fax 0144558896 -webpg www.ynov.fr -title "usr-diri" -dept Informatique -mustchpwd NO -canchpwd NO -pwdneverexpires yes -disabled  NO -Pwd P@ssword1234

# usr-admi

dsadd user "cn=usr-admi,cn=users,dc=Ynov,dc=loc" -fn UtilisateurAdmi -Mi UE -ln usr-admi -display "usr-admi" -upn usr-admi@ynov.loc -samid usr-admi -desc "Utilisateur Ordinaire Admi" -office "Service Info" -Tel 0144558800 -email usr-admi@ynov.loc -mobile 0655887712 -fax 0144558896 -webpg www.ynov.fr -title "usr-admi" -dept Informatique -mustchpwd NO -canchpwd NO -pwdneverexpires yes -disabled  NO -Pwd P@ssword1234

# usr-scoli

dsadd user "cn=usr-scoli,cn=users,dc=Ynov,dc=loc" -fn UtilisateurScoli -Mi UE -ln usr-scoli -display "usr-scoli" -upn usr-scoli@ynov.loc -samid usr-scoli -desc "Utilisateur Ordinaire Scoli" -office "Service Info" -Tel 0144558800 -email usr-scoli@ynov.loc -mobile 0655887712 -fax 0144558896 -webpg www.ynov.fr -title "usr-admi" -dept Informatique -mustchpwd NO -canchpwd NO -pwdneverexpires yes -disabled  NO -Pwd P@ssword1234

# usr-initi

dsadd user "cn=usr-initi,cn=users,dc=Ynov,dc=loc" -fn UtilisateurIniti -Mi UE -ln usr-initi -display "usr-initi" -upn usr-initi@ynov.loc -samid usr-initi -desc "Utilisateur Ordinaire Initi" -office "Service Info" -Tel 0144558800 -email usr-initi@ynov.loc -mobile 0655887712 -fax 0144558896 -webpg www.ynov.fr -title "usr-initi" -dept Informatique -mustchpwd NO -canchpwd NO -pwdneverexpires yes -disabled  NO -Pwd P@ssword1234

# usr-alti

dsadd user "cn=usr-alti,cn=users,dc=Ynov,dc=loc" -fn UtilisateurAlti -Mi UE -ln usr-alti -display "usr-alti" -upn usr-alti@ynov.loc -samid usr-alti -desc "Utilisateur Ordinaire Alti" -office "Service Info" -Tel 0144558800 -email usr-alti@ynov.loc -mobile 0655887712 -fax 0144558896 -webpg www.ynov.fr -title "usr-alti" -dept Informatique -mustchpwd NO -canchpwd NO -pwdneverexpires yes -disabled  NO -Pwd P@ssword1234


## deplacer utilisateur

dsmove "cn=usr-ingesup,cn=users,dc=Ynov,dc=loc" -newparent "ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=usr-diri,cn=users,dc=Ynov,dc=loc" -newparent "ou=diri,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=usr-admi,cn=users,dc=Ynov,dc=loc" -newparent "ou=admi,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=usr-scoli,cn=users,dc=Ynov,dc=loc" -newparent "ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=usr-initi,cn=users,dc=Ynov,dc=loc" -newparent "ou=initi,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=usr-alti,cn=users,dc=Ynov,dc=loc" -newparent "ou=alti,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

#dsmove "cn=user1,cn=Users,dc=Ynov,dc=Int" -newparent "ou=bach-02,ou=ingesup,dc=Ynov,dc=loc"


## Modif Attr


#Modifier les attributs

dsmod user "cn=usr-ingesup,ou=ingesup,dc=Ynov,dc=loc" -desc "Administrateur Ingesup"

dsmod user "cn=usr-diri,ou=diri,ou=ingesup,dc=Ynov,dc=loc" -desc "Administrateur Diri"

dsmod user "cn=usr-admi,ou=admi,ou=ingesup,dc=Ynov,dc=loc" -desc "Administrateur Admi"

dsmod user "cn=usr-scoli,ou=scoli,ou=ingesup,dc=Ynov,dc=loc" -desc "Administrateur Scoli"

dsmod user "cn=usr-initi,ou=initi,ou=scoli,ou=ingesup,dc=Ynov,dc=loc" -desc "Administrateur Initi"

dsmod user "cn=usr-alti,ou=alti,ou=scoli,ou=ingesup,dc=Ynov,dc=loc" -desc "Administrateur Alti"

#Creation de toto et suppression

#Groupes

#Groupes locaux

dsadd group "cn=glingesup,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope l -samid glingesup

dsadd group "cn=gldiri,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope l -samid gldiri

dsadd group "cn=gladmi,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope l -samid glamdi 

dsadd group "cn=glscoli,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope l -samid glscoli

dsadd group "cn=gliniti,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope l -samid gliniti

dsadd group "cn=glalti,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope l -samid glalti

#Groupes globaux

dsadd group "cn=ggingesup,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope g -samid ggingesup

dsadd group "cn=ggdiri,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope g -samid ggdiri

dsadd group "cn=ggadmi,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope g -samid ggamdi

dsadd group "cn=ggscoli,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope g -samid ggscoli

dsadd group "cn=gginiti,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope g -samid gginiti

dsadd group "cn=ggalti,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope g -samid ggalti

#Groupes universels

dsadd group "cn=guingesup,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid guingesup

dsadd group "cn=gudiri,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid gudiri

dsadd group "cn=guadmi,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid guamdi

dsadd group "cn=guscoli,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid guscoli

dsadd group "cn=guiniti,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid guiniti

dsadd group "cn=gualti,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid gualti




dsmod group "cn=ggingesup,cn=users,dc=Ynov,dc=loc" -addmbr "cn=usr-ingesup,ou=ingesup,dc=Ynov,dc=loc"

dsmod group "cn=ggdiri,cn=users,dc=Ynov,dc=loc" -addmbr "cn=usr-diri,ou=diri,ou=ingesup,dc=Ynov,dc=loc"

dsmod group "cn=ggadmi,cn=users,dc=Ynov,dc=loc" -addmbr "cn=usr-admi,ou=admi,ou=ingesup,dc=Ynov,dc=loc"

dsmod group "cn=ggscoli,cn=users,dc=Ynov,dc=loc" -addmbr "cn=usr-scoli,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmod group "cn=gginiti,cn=users,dc=Ynov,dc=loc" -addmbr "cn=usr-initi,ou=initi,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmod group "cn=ggalti,cn=users,dc=Ynov,dc=loc" -addmbr "cn=usr-alti,ou=alti,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"





#dsmod group "cn=gu1,cn=users,dc=Ynov,dc=Int" -addmbr "cn=gg1,cn=users,dc=Ynov,dc=Int"


dsmod group "cn=guingesup,cn=users,dc=Ynov,dc=loc" -addmbr "cn=ggingesup,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=gudiri,cn=users,dc=Ynov,dc=loc" -addmbr "cn=ggdiri,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=guadmi,cn=users,dc=Ynov,dc=loc" -addmbr "cn=ggadmi,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=guscoli,cn=users,dc=Ynov,dc=loc" -addmbr "cn=ggscoli,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=guiniti,cn=users,dc=Ynov,dc=loc" -addmbr "cn=gginiti,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=gualti,cn=users,dc=Ynov,dc=loc" -addmbr "cn=ggalti,cn=users,dc=Ynov,dc=loc"





dsmod group "cn=glingesup,cn=users,dc=Ynov,dc=loc" -addmbr "cn=guingesup,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=gldiri,cn=users,dc=Ynov,dc=loc" -addmbr "cn=gudiri,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=gladmi,cn=users,dc=Ynov,dc=loc" -addmbr "cn=guadmi,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=glscoli,cn=users,dc=Ynov,dc=loc" -addmbr "cn=guscoli,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=gliniti,cn=users,dc=Ynov,dc=loc" -addmbr  "cn=guiniti,cn=users,dc=Ynov,dc=loc"

dsmod group "cn=glalti,cn=users,dc=Ynov,dc=loc" -addmbr "cn=gualti,cn=users,dc=Ynov,dc=loc"


#deplacer dans ou 

dsmove "cn=ggingesup,cn=users,dc=Ynov,dc=loc" -newparent "ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=ggdiri,cn=users,dc=Ynov,dc=loc" -newparent "ou=diri,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=ggadmi,cn=users,dc=Ynov,dc=loc" -newparent "ou=admi,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=ggscoli,cn=users,dc=Ynov,dc=loc" -newparent "ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=gginiti,cn=users,dc=Ynov,dc=loc" -newparent "ou=initi,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=ggalti,cn=users,dc=Ynov,dc=loc" -newparent "ou=alti,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"


dsmove "cn=guingesup,cn=users,dc=Ynov,dc=loc" -newparent "ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=gudiri,cn=users,dc=Ynov,dc=loc" -newparent "ou=diri,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=guadmi,cn=users,dc=Ynov,dc=loc" -newparent "ou=admi,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=guscoli,cn=users,dc=Ynov,dc=loc" -newparent "ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=guiniti,cn=users,dc=Ynov,dc=loc" -newparent "ou=initi,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=gualti,cn=users,dc=Ynov,dc=loc" -newparent "ou=alti,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"


dsmove "cn=glingesup,cn=users,dc=Ynov,dc=loc" -newparent "ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=gldiri,cn=users,dc=Ynov,dc=loc" -newparent "ou=diri,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=gladmi,cn=users,dc=Ynov,dc=loc" -newparent "ou=admi,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=glscoli,cn=users,dc=Ynov,dc=loc" -newparent "ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=gliniti,cn=users,dc=Ynov,dc=loc" -newparent "ou=initi,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"

dsmove "cn=glalti,cn=users,dc=Ynov,dc=loc" -newparent "ou=alti,ou=scoli,ou=ingesup,dc=Ynov,dc=loc"


dsadd computer "cn=ordi_ingesup,cn=computers,dc=Ynov,dc=loc"



dsadd group "cn=gu1,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid gu1

dsadd group "cn=gu2,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid gu2

dsadd group "cn=gl1,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid gl2

dsadd group "cn=gl2,cn=users,dc=Ynov,dc=loc" -secgrp yes -scope u -samid gl2




dsmod group "cn=gl1,cn=users,dc=Ynov,dc=loc" -scope u 


#Requete permettant d'afficher toutes les OU existants à la racine :
dsquery ou domainroot -scope subtree -desc U*

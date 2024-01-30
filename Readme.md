## Creé simple app Node.js ##
1. create node js avec terminal vscode
2. 2. install express js avec commande : npm i express

## Docker build ##
3. cree DockerFile pour build votre image puis lancer la commande suivant dans votre vscode :
   - docker login
   - docker build -t nom_de_image
4. push votre image a docker hub :
  - docker push hamza6/code2cloud:latest

## Aws ##
- dans Ec2 lancer une instance ubuntu (aller a paire clé et click sur Gérer une paire de clés et ajouter nom de clé privé pour conecter)
- click lancer
- install docker a votre instnce puis pull votre image node depuis votre docker hub
- lancer votre containeur de ce image :
  - docker docker run --name nome_de_container -d -p 3001:3000 nome_de_l'image
  - docker ps
- retour a votre compte aws aller ec2->Groupe de Securité--->modifier les régles entrantes -> ajouter une regle -> tout le trafic - source ipv4 -> Enregistrer les regles
  . dans ce moment le serveur accepte n'import quelle requete
- tester votre adresse ipv4 public:3001

## push votre app a votre repository github ##
- ajouter .gitgnore pour stocker node_modules
- ouvrir teminal vscode de votre projet node js lancer les commande de git suivant:
  git init .
  git commit -am "commit"

## Github Action Parameter ##
  - click github action puis ajouter dans barre de recherche "simple Workflow"
  - nomer votre workflow deploy-ec2.yml par exemple puis click commit
  - retour a votre terminal vscode et lancer : git pull pour telecharger la modification
  - dans ce moment votre fichier deploy-ec2.yml et a votre projet local
  - regler votre file puis ajouter les objet secrets a action secrets(aller a votre repository -> settings -> secrets and variables -> Acrion -> click new repository secret)
  - ajouter DOCKER_USERNAME,DOCKER_PASSWORD,EC2_HOST ,EC2_USERNAME,EC2_PASSWORD,EC2_Private_Key.

 ## lancer votre automatisation ##
git commit -am "fixe "
git push
## pour verifier ##
aller a votre vm machine (instance aws ) : curl http://localhost:3001 

# Projet-scripting-2a3-sujet4
Projet realisé en langage shell dans le module de scripting


Aller au contenu
Utiliser Messagerie esprit avec un lecteur d'écran

1 sur 3 771
(aucun objet)

JULIAYVANNA AKOANGBWA <juliayvanna.akoangbwa@esprit.tn>
Pièces jointes
16:26 (il y a 46 minutes)
À moi


18 pièces jointes

#!/bin/sh
INPUTTEXT=`yad --title="Afficher les caractéristique hardware" --text="\t\t\t\t\Tapez votre commande:\n\n \t\t\t\t1-Via la commande -lblk\n\n \t\t\t\t 2-via le commande -ldf\n\n \t\t\t\t 3-via le commande -h " --entry --entry-label=Commande: --entry-text="Taper ici" --width="800" --height="200" `
yad --width="400" --height="200" --text="\t\t\t\t\n\n\nVous avez choisi: $INPUTTEXT"

INPUT='-lblk'
INPUT1='-ldf'
INPUT2='-h'
INPUT5='back'



if [ X"$INPUTTEXT" = X"$INPUT" ];then
	 ./choixlblk.sh
elif [ X"$INPUTTEXT" = X"$INPUT1" ];then
	$(df >ldf.txt)
	./choixdf.sh
elif [ X"$INPUTTEXT" = X"$INPUT2" ];then
	./h.sh
elif [ X"$INPUTTEXT" = X"$INPUT5" ];then
	./menu.sh
fi;
choix.sh
Affichage de gnuplotText3.txt en cours...

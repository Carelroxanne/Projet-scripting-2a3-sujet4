# Projet-scripting-2a3-sujet4
Projet realisé en langage shell dans le module de scripting


Aller au contenu
Utiliser Messagerie esprit avec un lecteur d'écran

1 sur 3 771
(aucun objet)

JULIAYVANNA AKOANGBWA <juliayvanna.akoangbwa@esprit.tn>
Pièces jointes
16:26 (il y a 50 minutes)
À moi


18 pièces jointes

#!/bin/sh
INPUTTEXT=`yad --title="Afficher les caractéristique hardware avec lblk" --text="\t\t\t\t\Tapez votre commande:\n\n \t\t\t\t1-Avec l'option -a \n\n \t\t\t\t 2-Avec l'option -b\n\n \t\t\t\t 3-Avec l'option -V\n\n \t\t\t\t 4-Avec l'option -h " --entry --entry-label=Commande: --entry-text="Taper ici" --width="800" --height="200" `
yad --width="400" --height="200" --text="\t\t\t\t\n\n\nVous avez choisi: $INPUTTEXT"

INPUT='-a'
INPUT1='-b'
INPUT2='-V'
INPUT3='-h'
INPUT5='back'



if [ X"$INPUTTEXT" = X"$INPUT" ];then
	$(lsblk -a >lslblk.txt )
	 ./lslblk.sh
elif [ X"$INPUTTEXT" = X"$INPUT1" ];then
	$(lsblk -b >lslblk.txt )
	./lslblk.sh
elif [ X"$INPUTTEXT" = X"$INPUT2" ];then
	$(lsblk -V >lslblk.txt )
	./lslblk.sh
elif [ X"$INPUTTEXT" = X"$INPUT3" ];then
	$(lsblk -h >lslblk.txt )
	./lslblk.sh
elif [ X"$INPUTTEXT" = X"$INPUT5" ];then
	./choix.sh
fi;
choixlblk.sh
Affichage de gnuplotText3.txt en cours...

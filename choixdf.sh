# Projet-scripting-2a3-sujet4
Projet realisé en langage shell dans le module de scripting


Aller au contenu
Utiliser Messagerie esprit avec un lecteur d'écran

1 sur 3 771
(aucun objet)

JULIAYVANNA AKOANGBWA <juliayvanna.akoangbwa@esprit.tn>
Pièces jointes
16:26 (il y a 48 minutes)
À moi


18 pièces jointes

#!/bin/sh
INPUTTEXT=`yad --title="Afficher les caractéristique hardware avec df" --text="\t\t\t\t\Tapez votre commande:\n\n \t\t\t\t1-Avec l'option -a \n\n \t\t\t\t 2-Avec l'option -t\n\n \t\t\t\t 3-Avec l'option -x\n\n \t\t\t\t 4-Avec l'option -v " --entry --entry-label=Commande: --entry-text="Taper ici" --width="800" --height="200" `
yad --width="400" --height="200" --text="\t\t\t\t\n\n\nVous avez choisi: $INPUTTEXT"

INPUT='-a'
INPUT1='-i'
INPUT2='-l'
INPUT3='-v'
INPUT5='back'



if [ X"$INPUTTEXT" = X"$INPUT" ];then
	$(df -a >lsdf.txt )
	 ./lsdf.sh
elif [ X"$INPUTTEXT" = X"$INPUT1" ];then
	$(df -i >lsdf.txt )
	./lsdf.sh
elif [ X"$INPUTTEXT" = X"$INPUT2" ];then
	$(df -l >lsdf.txt )
	./lsdf.sh
elif [ X"$INPUTTEXT" = X"$INPUT3" ];then
	$(df -h >lsdf.txt )
	./lsdf.sh
elif [ X"$INPUTTEXT" = X"$INPUT5" ];then
	./choix.sh
fi;
choixdf.sh
Affichage de gnuplotText3.txt en cours...

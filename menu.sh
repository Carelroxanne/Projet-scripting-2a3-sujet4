# Projet-scripting-2a3-sujet4
Projet realisé en langage shell dans le module de scripting
#!/bin/sh

if [ $# != 0 ]; then
	if [ $1 = "-lblk" ]; then
		$(lsblk >lblk.txt )
		./choixlblk.sh
	elif [ $1 = "-ldf" ]; then
		./choixdf.sh
	elif [ $1 = "-gnuplot" ];then
        	./courbe.sh
	elif [ $1 = "-plot" ];then
        	./courbe2.sh
	elif [ $1 = "-h" ];then
        	./h.sh
   
	fi
fi

yad --title="Projet Scripting" \
--form --width="100" --height="100" \
--text="\n\n\t\t\t\t\t\t\t\t\t Choissisez une option:\n\n\n\t\t\t\t\t" \
--buttons-layout=center \
--button="Afficher les caractéristique hardware":1 \
--button="Afficher les courbes":2 \
--button="Aide":3 \


case $? in
	1)
	 ./choix.sh
		;;
        2)
	./cmd.sh
		;;
	3)
	./h.sh
		;;
esac

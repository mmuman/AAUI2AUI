---
title:  'Guide utilisateur AAUI2AUI'
subtitle: "Installation et précautions d'usage"
author:
- François Revol
description: Manuel utilisateur de l'adaptateur AAUI2AUI pour ordinateur Macintosh
papersize: A4
documentclass: article
# try to fit a single page
margin-top: 0.5in
lang: fr-FR
---

# Description

Le câble adaptateur AAUI2AUI permet d'utiliser un *transceiver* AUI normal avec un ordianteur Apple™ Macintosh n'ayant qu'un port AAUI (Apple AUI). Un convertisseur élévateur intégré fournit le 12V au transceiver depuis le 5V disponible sur le port AAUI, ou optionnellement d'une alimentation externe 5V telle qu'un port USB.

Plus d'information sur le site web: [https://github.com/mmuman/AAUI2AUI](https://github.com/mmuman/AAUI2AUI)

# Installation

**Pressé ?** Branchez le câble adaptateur sur le port AAUI de votre Apple™ Macintosh, branchez-y un *transceiver* AUI, et branchez un câble Ethernet, c'est tout.

![Schéma de branchement de l'adaptateur AAUI2AUI](setup.pdf "Schéma d'installation")

Connectez le câble adaptateur au port AAUI, puis connectez le *transceiver* au port DA15 du câble adaptateur et verrouillez le mécanisme à glissière. Finallement, connectez un câble Ethernet à la prise RJ-45, ou n'importe-quel autre medium que votre transceiver utilise. Allumez l'ordinateur.

Si l'ordinateur devient instable ou si vous n'êtes pas sûr de la puissance disponible, utilisez un adaptateur externe sur la prise jack 1.3mm sur le côté du connecteur DA15, 5V positif au centre.

# Consommation électrique

Le convertisseur intégré requiert un courant plus grand du port AAUI que celui qu'il fournit au *transceiver*, environ 2,5 fois. Certains modèles de Macintosh ont une puissance disponible limitée (un LC-III dispose de 3,75A au total pour 5V), cette consommation doit être limitée.

Des documents mentionnent 1.9W pour le 5V disponible au port AAUI, laissant 380mA. Ceci limite le courant disponible pour le *transceiver* à 150mA.

Si la plupart des *transceivers* utilisent moins que la puissance indiquée, préférez un mentionnant 150mA ou moins, ou l'un des modèles validés de la [liste disponible sur le site web](https://github.com/mmuman/AAUI2AUI#tested-transceivers).

La limite est plus élevée sur alimentation externe, mais pour éviter une surchauffe du convertisseur interne n'utilisez pas plus de 500mA. Le convertisseur chauffe déjà avec 120mA, et est enfermé dans le connecteur, vérifiez donc qu'il n'est pas bouillant avant une utilisation prolongée.

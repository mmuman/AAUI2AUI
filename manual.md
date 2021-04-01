---
title:  'AAUI2AUI User Manual'
subtitle: "Cable setup and usage precautions"
author:
- François Revol # <revol@free.fr>
description: User manual of the AAUI2AUI adapter cable for Macintosh computers
papersize: A4
documentclass: article
# try to fit a single page
margin-top: 0.5in
#links-as-notes: true
---

# Description

The AAUI2AUI adapter cable allows using a regular AUI transceiver with an Apple™ Macintosh computer only providing an AAUI (Apple AUI) connector. A built-in step-up converter provides 12V to the transceiver from the 5V available on the AAUI port, or optionally from an external 5V power supply like a USB port.

Further information on the website: [https://github.com/mmuman/AAUI2AUI](https://github.com/mmuman/AAUI2AUI)

# Setup

TL;DR: Plug the adapter cable on the AAUI port on your Apple™ Macintosh, plug an AUI transceiver to it, plug an Ethernet cable, and voila.

![Setup guide for the AAUI2AUI cable](setup.pdf "Setup guide")

Connect the adapter cable to the AAUI port, then connect the transceiver to the DA15 connector of the adapter cable and secure the slide-lock. Finally, connect an RJ-45 Ethernet cable, or whatever medium your transceiver needs. You can now turn the computer on.

If the computer becomes unstable or its available power budget is uncertain, use an external power supply on the 1.3mm barrel jack plug on the side of the DA15 connector, 5V center-positive.

# Power requirements

The internal step-up converter requires a higher current from the AAUI port than what it provides to the transceiver, about 2.5 times. Some Macintosh models have a very low power budget (an LC-III has 3.75A total for 5V), so the current should be minimized.

Some documents mention 1.9W for the 5V supply on the AAUI port, which gives 380mA. This limits the available current for the transceiver to 150mA.

Although most transceivers use much less than the advertised rated current, prefer one rated for 150mA or less, or one of the validated models from the [list available on the website](https://github.com/mmuman/AAUI2AUI#tested-transceivers).

The limit is higher with an external supply, but to avoid overheating the internal step-up converter transceivers using more than 500mA should really be avoided. The step-up board is already warm at 120mA, and in a closed environment, so make sure it does not get hot before prolonged use.

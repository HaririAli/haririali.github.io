---
title: "Selective Forwarding Attack on IoT Home Security Kits"
collection: publications
permalink: /publication/heartbeats
date: 2019-09-26
venue: 'The 2nd International Workshop on Attacks and Defenses for Internet-of-Things (ADIoT 2019) @ ESORICS'
citation: 'Ali Hariri, Nicolas Giannelos and Budi Arief'
---

[Proceedings](https://www.cs.kent.ac.uk/people/staff/ba284/Papers/ADIoT2019.pdf)

## Abstract
Efforts have been made to improve the security of the Internet of Things (IoT) devices, but there remain some vulnerabilities and misimplementations. This paper describes a new threat to home security devices in which an attacker can disable all functionality of a device, but to the device’s owner, everything still appears to be operational. We targeted home security devices because their security is critical as people may rely on them to protect their homes. In particular, we exploited a feature called “heartbeat”, which is exchanged between the devices and the cloud in order to check that the devices are still connected. Even though network traffic was encrypted, we successfully identified the heartbeats due to their fixed size and periodic nature. Thereafter, we established a man-in-the-middle attack between the device and the cloud and selectively forwarded heartbeats while filtering out other traffic. As a result, the device appears to be still connected (because the heartbeat traffic is being allowed through), while in reality the device’s functionality is disabled (because non-heartbeat traffic is being filtered out). We applied this exploit on a set of six devices, and five were found to be vulnerable. Consequently, an intruder can use this exploit to disable a home security device and break into a house without the awareness of the owner. We carried out a responsible disclosure exercise with the manufacturers of the affected devices, but the response has been limited. This shows that IoT security is still not taken completely seriously and many threats are still undiscovered. Finally, we provide some recommendations on how to detect and prevent the threats posed by insecure IoT devices, which ironically include IoT home security kits.
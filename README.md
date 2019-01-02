# Aroeira Roleplay - SAMP

Desenvolvendo um sistema:
 * No desenvolvimento de um sistema dentro do ARP é seguido um padrao estrutural que -deve- ser respeitado.
 A arquitetura do seu sistema deverá seguir esse modelo (usarei o sistema de casas, por exemplo):
  - houses [voce devera sempre colocar o nome do sistema no plural e em inglês]
    - houses.vars.pwn [aqui ficarao todas variaveis do seu sistema]
    - houses.macro.pwn [aqui voce declarara suas macros de uso, por exemplo, a macro de um evento]
    - houses.functions.pwn [todas as funções do seu sistema ficarao neste arquivo]
    - houses.events.pwn [os eventos que serão disparados serao chamados aqui]
    
 Esta é a estrutura principal do seu sistema e você deverá desenvolver a partir dela. Abaixo explicarei como montar e estruturar seu sistema, começando pela definição de variáveis:

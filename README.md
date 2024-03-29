# Aroeira Roleplay - SAMP

Creative Commons Legal Code

  Attribution-NonCommercial-NoDerivs 3.0 Unported

  License

    THE WORK (AS DEFINED BELOW) IS PROVIDED UNDER THE TERMS OF THIS CREATIVE
    COMMONS PUBLIC LICENSE ("CCPL" OR "LICENSE"). THE WORK IS PROTECTED BY
    COPYRIGHT AND/OR OTHER APPLICABLE LAW. ANY USE OF THE WORK OTHER THAN AS
    AUTHORIZED UNDER THIS LICENSE OR COPYRIGHT LAW IS PROHIBITED.

    BY EXERCISING ANY RIGHTS TO THE WORK PROVIDED HERE, YOU ACCEPT AND AGREE
    TO BE BOUND BY THE TERMS OF THIS LICENSE. TO THE EXTENT THIS LICENSE MAY
    BE CONSIDERED TO BE A CONTRACT, THE LICENSOR GRANTS YOU THE RIGHTS
    CONTAINED HERE IN CONSIDERATION OF YOUR ACCEPTANCE OF SUCH TERMS AND
    CONDITIONS.

  	This work is licensed under the Creative Commons Attribution-NonCommercial-
    NoDerivatives 4.0 International License. To view a copy of this license, visit
    http://creativecommons.org/licenses/by-nc-nd/4.0/ or send a letter to Creative
    Commons, PO Box 1866, Mountain View, CA 94042, USA.
    
  This project uses Zeex Compiler (https://github.com/pawn-lang/compiler)

## Desenvolvendo um sistema

 O desenvolvimento de um sistema dentro do ARP é seguido por um padrao estrutural que _deve_ ser respeitado.
 
 A arquitetura do seu sistema deverá seguir esse modelo (usarei o sistema de casas, por exemplo):
  ```
   houses/ [você sempre deverá colocar o nome do sistema no plural e em inglês]
    - houses.vars.pwn [aqui ficarão todas variáveis do seu sistema]
    - houses.macro.pwn [aqui você declarará suas macros de uso, por exemplo, a macro de um evento]
    - houses.functions.pwn [todas as funções do seu sistema ficarão neste arquivo]
    - houses.events.pwn [os eventos que serão disparados serão chamados aqui]
  ```
    
 * Esta é a estrutura principal do seu sistema e você deverá desenvolver a partir dela. Abaixo explicarei como montar e estruturar seu sistema, começando pela definição de variáveis:
 
 - Implementação:
   1. Navegar no arquivo classes.pwn, e declarar em ordem alfabética e númerica o seu sistema.
   2. Após a criação dos arquivos necessários, você deverá importar todos os arquivos no core, seguindo a sequência: vars.pwn, macro.pwn, functions.pwn e events.pwn em suas devidas seções, importando conforme a ordem numérica foi definida no classes.pwn;
   3. Pronto! Seu sistema já está integrado ao projeto e tudo deverá funcionar normalmente, caso você precise executar algo ao iniciar ou desligar o servidor, sua integração deverá ser feita no seguinte arquivo: gamemode/gamemode.events.pwn;

**WIKI**
  https://github.com/joaoseidel/arp-samp/wiki/

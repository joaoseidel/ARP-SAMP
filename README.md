# Aroeira Roleplay - SAMP

Desenvolvendo um sistema:

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
   1. Após a criação dos arquivos necessários, você deverá importar todos os arquivos no core, seguindo a sequência: vars.pwn, macro.pwn, functions.pwn e events.pwn.
   2. Navegar no arquivo classes.pwn, e declarar em ordem alfabética e númerica o seu sistema.
   3. Pronto! Seu sistema já está integrado ao projeto e tudo deverá funcionar normalmente, caso você precise executar algo ao iniciar ou desligar o servidor, sua integração deverpa ser feita no seguinte arquivo: gamemode/gamemode.events.pwn;

## vars.pwn
> Dentro de um sistema, o arquivo _vars.pwn_ é encarregado pelo tratamento e definições de variáveis, assim como enumeradores e arrays.

O nosso SOA (System-oriented Approach) utiliza uma syntax diferente da oficial do pawn, justamente para temos a modularização sem se preocupar com a sequência e ordenação de um sistema e cada módulo (vars, functions, macro e events possuem suas individualidades).

* Declarações:
  - **en(%0)** [Forma de definição de um **enumerador**] e **nw%0{%1}** [Declara uma variável para o tratamento do enum]:
  ```
  en(Data) {
   i.Integer, // i. é usado para definir um inteiro.
   i.String[16], // i. também é usado para definir uma string, onde 16 é o length.
   b.Boolean, // b. é usado para definir uma booleana.
   f.Float // f. é usado para definir um valor flutuante .
  }
  nw[tamanho]{Data}; // usado para a definição estrutural do enum. Tamanho é o tamanho da sua array, por exemplo: MAX_HOUSES.
  ```
  - **new this.%0** [Declarações de variáveis]:
  ```
  new this.variavel, this.variavel2[16]; // dentro do seu sistema você pode utilizar this para invocar o objeto.
  ```

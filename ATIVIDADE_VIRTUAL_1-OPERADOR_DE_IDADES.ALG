Algoritmo "Atividade_Virtual_1-Operador_de_Idades"
// Disciplina  :  Algoritmo 2
// Professor   : Ernani Claudio Borges
// Descri��o   : Elabore um algoritmo que solicite ao operador a idade
//              de um grupo de pessoas (v�rias), processe e apresente:
//                 a) a idade m�dia das pessoas;
//                 b) a maior idade e quantas pessoas a tiveram;
//                 c) a menor idade e quantas pessoas a tiveram.
//              Aten��o:
//               1) quando a idade informada for igual a zero, finalizar as
//                  entradas e mostrar os resultados processados.
//               2) Validar corretivamente para que a idade n�o seja inferior
//                  a zero e nem superior a 120.
//               3) Verificar se houve entrada de dados, caso n�o, d� uma
//                  mensagem.
//               4) Lembre-se que a primeira idade informada ser� a maior e/ou
//                  menor em rela��o as demais idades que ser�o informadas.
//              Observa��o e distribui��o dos pontos:
//                1) Dentro do C�digo principal:
//                  a) (1,0) Cria��o de um vetor para armazenar a idade de 150
//                      posi��es e processar at� que a idade seja igual a zero;
//                  b) (2,0) deve ter um la�o principal e s� sair quando a
//                     idade for igual a 0;
//                  c) (1,0) verifica��o se houve entrada de dados;
//                  d) (1,0) Lembre-se que a primeira idade informada ser� a
//          maior e/ou menor em rela��o as demais idades que ser�o informadas.
//                  e) (1,0) Sa�da dos resultados processados corretamente.
//               2) Criar as seguintes fun��es:
//                  f) (4,0) Uma fun��o para validar corretivamente a idade
//                     para estar no intervalo de 0 a 120.
//                  g) (5,0) Uma fun��o para processar o c�lculo da m�dia,
//                    retornando o resultado para o c�digo principal onde
//                    ser� mostrado.
// Autor(a)    : S�lvio de Oliveira Santos J�nior
//             Polo Divin�polis  -  CPF: 045.953.076-32
// Data atual  : 14/03/2019
Var
// Se��o de Declara��es das vari�veis 
  idmedia : real
  id , qtpessoas, qtmaior, qtmenor , maiorid, menorid: inteiro
  vet_idade : vetor [ 1..150 ] de inteiro
  cont : inteiro

//FUNCAO media de pessoas reala�ao idade
   funcao idmedia ( qtpessoas : inteiro ): real
var
  cont : inteiro
  total : inteiro
inicio
   total<-0
      para cont<-1 ate qtpessoas faca
         total<-total+vet_id[cont]
      fimpara
        retorne total/qtpessoas
   fimfuncao

//funcao validar IDADE de 0 � 120 anos
Inicio
   funcao validar_id( id : inteiro ): inteiro
     se ( id > 0 ) e ( id <= 120) entao
       retorne verdadeiro
     senao
       escreval("IDADE INVALIDA. DIGITE NOVAMENTE...!!!!")
       retorne falso
     fimse
   fimfuncao


// Principal

Algoritmo
// Escrever dados que se refere a idades, e as condi�oes necessarias
  qtpessoas <- 0
  qtmaior <- 0
  qtmenor <- 0
  id <- 1
  cont <- 1
  
  escreval("============== Idades no Grupo =============")
  escreval("--------------------------------------------")
  Escreval("")
    enquanto ( qtpessoas <= 150 ) e ( id <> 0 ) faca
      Escreval("Escreva a idade da ", cont , " � pessoa : ")
      leia(id)

      //Vetor idade, validar
     se ( validar_id(id) = VERDADEIRO ) entao
       vet_idade[cont] <- id
       qtpessoas <- qtpessoas + 1
       //armazena a idade maior e menor para a primeira idade digitada
       se ( cont = 1 ) entao
         maiorid <- idade
         menorid <- idade
       fimse

         se (maiorid < id) entao
             maiorid <- id
         senao
           se (menorid > id ) entao
             menorid <- id
           fimse
         fimse
         
       cont <- cont + 1
     fimse
  fimenquanto
  

//Verifica�ao de vetor de cada idade digitada
    para cont <- 1 ate qtpessoas fa�a
      //SE O ELEMENTO cont DO VETOR FOR IGUAL MAIOR IDADE ent�o ele
      //CONTA MAIS 1 PRA qtmaior idade e faz o mesmo com qtmenor idade

      se vet_idade[cont] = maiorid entao
        qtmaior <- qtmaior + 1
      fimse

      se vet_idade[cont] = menorid entao
        qtmenor <- qtmenor + 1
      fimse

    fimpara

//Finalizando o programa
  limpatela
    Escreval("A Maior idade digitada � : " , maiorid )
    Escreval("O n�mero de pessoas que possui a maior idade � : ", qtmaior )
    Escreval
    Escreval("A Menor idade digitado � : " , menorid )
    Escreval("O n�mero de pessoas que possui a menor idade � : ", qtmenor)
    Escreval
    Escreval("A Media de idades dessas pessoas � : ", idmedia(qtpessoas) , 2:2 )
    
Fimalgoritmo
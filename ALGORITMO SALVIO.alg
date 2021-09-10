Algoritmo "Atividade_Virtual_1-Operador_de_Idades"
// Disciplina  :  Algoritmo 2
// Professor   : Ernani Claudio Borges
// Descrição   : Elabore um algoritmo que solicite ao operador a idade
//              de um grupo de pessoas (várias), processe e apresente:
//                 a) a idade média das pessoas;
//                 b) a maior idade e quantas pessoas a tiveram;
//                 c) a menor idade e quantas pessoas a tiveram.
//              Atenção:
//               1) quando a idade informada for igual a zero, finalizar as
//                  entradas e mostrar os resultados processados.
//               2) Validar corretivamente para que a idade não seja inferior
//                  a zero e nem superior a 120.
//               3) Verificar se houve entrada de dados, caso não, dê uma
//                  mensagem.
//               4) Lembre-se que a primeira idade informada será a maior e/ou
//                  menor em relação as demais idades que serão informadas.
//              Observação e distribuição dos pontos:
//                1) Dentro do Código principal:
//                  a) (1,0) Criação de um vetor para armazenar a idade de 150
//                      posições e processar até que a idade seja igual a zero;
//                  b) (2,0) deve ter um laço principal e só sair quando a
//                     idade for igual a 0;
//                  c) (1,0) verificação se houve entrada de dados;
//                  d) (1,0) Lembre-se que a primeira idade informada será a
//          maior e/ou menor em relação as demais idades que serão informadas.
//                  e) (1,0) Saída dos resultados processados corretamente.
//               2) Criar as seguintes funções:
//                  f) (4,0) Uma função para validar corretivamente a idade
//                     para estar no intervalo de 0 a 120.
//                  g) (5,0) Uma função para processar o cálculo da média,
//                    retornando o resultado para o código principal onde
//                    será mostrado.
// Autor(a)    : Sálvio de Oliveira Santos Júnior
//             Polo Divinópolis  -  CPF: 045.953.076-32
// Data atual  : 14/03/2019
Var
// Seção de Declarações das variáveis 
  idmedia : real
  id , qtpessoas, qtmaior, qtmenor , maiorid, menorid: inteiro
  vet_idade : vetor [ 1..150 ] de inteiro
  cont : inteiro

//FUNCAO media relaçao a idade das pessoas
   funcao idmedia ( qtpessoas : inteiro ): real
var
   cont, total : inteiro
inicio
   total <- 0
   para cont <- 1 ate qtpessoas faca
      total <- total + vet_idade[cont]
   fimpara
      retorne total/qtpessoas
  
   Fimfuncao

//FUNÇAO validar IDADE de 0 á 120 anos
  funcao validar_id( id : inteiro ): LOGICO
inicio
   se ( id > 0 ) e ( id <= 120) entao
     retorne verdadeiro
   senao
     escreval
     escreval("IDADE INVALIDA. DIGITE NOVAMENTE...!!!!")
     escreval
     retorne falso
   fimse
  fimfuncao


// Principal

inicio
  // Escrever dados que se refere a idades, e as condiçoes necessarias
  qtpessoas <- 0
  qtmaior <- 0
  qtmenor <- 0
  id <- 1
  cont <- 1
  
  escreval("--------------------------------------------")
  escreval("============== Idades no Grupo =============")
  escreval("--------------------------------------------")
  Escreval
   enquanto ( qtpessoas < 150 ) e ( id <> 0 ) faca
       Escreval("Escreva a idade da ", cont , " º pessoa : ")
       leia(id)

//VETOR idade, validar
     se ( validar_id(id) = VERDADEIRO ) entao
        vet_idade[cont] <- id
        qtpessoas <- qtpessoas + 1
        
//armazena a idade maior e menor para a primeira idade digitada
         se ( cont = 1 ) entao
           maiorid <- id
           menorid <- id
         fimse

//INDICAÇAO A MAOIR IDADE INDICADA
          se (maiorid < id) entao
            maiorid <- id
          senao
//INDICAÇÃO A MENOR IDADE INDICADA
             se (menorid > id ) entao
               menorid <- id
             fimse
          fimse
        cont <- cont + 1
     fimse
     
   fimenquanto
  

//Verificaçao de vetor de cada idade digitada
  para cont <- 1 ate qtpessoas faca

      se vet_idade[cont] = maiorid entao
        qtmaior <- qtmaior + 1
      fimse

      se vet_idade[cont] = menorid entao
        qtmenor <- qtmenor + 1
      fimse

  fimpara

//Finalizando o programa
  limpatela
  
//Se o cliente apertar o zero como a primeira idade, o programa ja vai ser finalizado
      se (maiorid = 0) e (qtmaior = 0) e (menorid = 0) e ( qtmenor =0) entao
        escreval("-----------------------------------------------------------")
        escreval("             Dados invalidos, sem resultado  ")
        escreval("-----------------------------------------------------------")
        escreval
        escreval("***************** fim do programa *************************")
        escreval
        escreval("            ******   Acabou    *********")

      senao

//resultado sendo com idades acima de zero
  Escreval("===============================================================")
  Escreval("------------------Finalização do Programa----------------------")
  Escreval("===============================================================")
  escreval
  Escreval("Maior idade e numero de pessoas")
  Escreval("  1 - A Maior idade digitada é : " , maiorid )
  Escreval("  2 - O número de pessoas que possui a maior idade é : ", qtmaior )
  Escreval
  Escreval("Menor idade e numeros de pessoas")
  Escreval("  3 - A Menor idade digitado é : " , menorid )
  Escreval("  4 - O número de pessoas que possui a menor idade é : ", qtmenor)
  Escreval
  Escreval("Media")
  Escreval("  5 - A Media de idades dessas pessoas é : ", idmedia(qtpessoas)  :2:2 )
  Escreval
  Escreval(" **************** FIM DO PROGRAMA **************************** ")
  Escreval
  Escreval("                 **** ACABOU ***** ")

      fimse
    
Fimalgoritmo
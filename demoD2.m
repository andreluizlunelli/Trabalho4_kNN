% Alunos: Andr�, Karin e Simon
#{
Q2.1
  R: 68% com k=1
Q2.2
  R: Normalizando os dados � poss�vel obter uma precis�o de 98% com k=1.
     Isso porque ao normalizar os dados, ajustamos os valores das caracter�scas
     � um mesmo intervalo, melhorando a precis�o.
#}

clear;clc;close all;

%Carrega grupo de dados 2
l = load('grupoDados2');
grupoTrain = l.grupoTrain;
trainRots = l.trainRots;
grupoTest = l.grupoTest;
testRots = l.testRots;

%Normaliza os dados de treinamento e teste
grupoTrain = normal(grupoTrain);
grupoTest = normal(grupoTest);


rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, 1);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

visualizaPontos(grupoTrain, trainRots, 2, 1);
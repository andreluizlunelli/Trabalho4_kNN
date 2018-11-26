% Alunos: André, Karin e Simon
#{
Q2.1
  R: 61% com k=3
Q2.2
  R: 
#}

clear;clc;close all;

l = load('grupoDados2');

grupoTrain = l.grupoTrain;
trainRots = l.trainRots;
grupoTest = l.grupoTest;
testRots = l.testRots;

%TODO: normalizar os dados e calcular Knn

rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, 3);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

visualizaPontos(grupoTrain, rotuloPrevisto, 2,1);
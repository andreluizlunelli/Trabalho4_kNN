% Alunos: André, Karin e Simon
#{
Q1.1
  R: 98% com k=3
Q1.2
  R: Sim
#}
clear;clc;close all;

l = load('grupoDados1');

grupoTrain = l.grupoTrain;
trainRots = l.trainRots;
grupoTest = l.grupoTest;
testRots = l.testRots;

%rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, 3);
rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, 10);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

visualizaPontos(grupoTrain, rotuloPrevisto, 1,2);
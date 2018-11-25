% Alunos: André, Karin e Simon
clear;clc;close all;

l = load('grupoDados1');

grupoTrain = l.grupoTrain;
trainRots = l.trainRots;
grupoTest = l.grupoTest;
testRots = l.testRots;

rotuloPrevisto = meuKnn(grupoTrain, trainRots, grupoTest, 10);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

visualizaPontos(grupoTrain, rotuloPrevisto, 2,1);
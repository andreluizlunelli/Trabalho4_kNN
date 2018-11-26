% Alunos: André, Karin e Simon
#{
Q3.1
  R: 
Q3.2
  R: 
#}

clear;clc;close all;

l = load('grupoDados3');

grupoTrain = l.grupoTrain;
trainRots = l.trainRots;
grupoTest = l.grupoTest;
testRots = l.testRots;

%TODO: normalizar os dados e calcular Knn
grupoTrainNormal = normal(grupoTrain);
grupoTestNormal = normal(grupoTest);

rotuloPrevisto = meuKnn(grupoTrainNormal, trainRots, grupoTestNormal, 25);

estaCorreto = rotuloPrevisto == testRots;
numCorreto = sum(estaCorreto);
totalNum = length(testRots);
precisao = numCorreto / totalNum;

disp(precisao);

visualizaPontos(grupoTrain, trainRots, 2,1);
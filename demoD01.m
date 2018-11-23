clear;clc;close all;

l = load('grupoDados1');
rotuloPrevisto = meuKnn(l.grupoTrain, l.trainRots, l.grupoTest, 1);

estaCorreto = rotuloPrevisto == l.testRots;
numCorreto = sum(estaCorreto);
totalNum = length(l.testRots);
precisao = numCorreto / totalNum;

disp('precisao'); 
disp(precisao); 
disp(size(precisao)); 

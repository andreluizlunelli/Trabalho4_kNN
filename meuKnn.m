% Alunos: Andr�, Karin e Simon
function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
  %Para cada exemplo de teste
% Calcule a dist�ncia entre o exemplo de teste e os dados de treinamento
% Ordene as dist�ncias. A ordem iX de cada elemento ordenado �
% importante:
% [distOrdenada ind] = sort(...);
% O r�tulo previsto corresponde ao r�tulo do exemplo mais pr�ximo (iX(1))

for j=1:size(dadosTeste)(1)
  for i=1:size(dadosTrain)(1)
    _dist(j,i) = dist(dadosTeste(j,:), dadosTrain(i, :));
  endfor
  [distOrdenada, ind] = sort(_dist(j,:));
  rotuloPrevisto(j,1) = rotuloTrain(ind(k));
endfor
endfunction

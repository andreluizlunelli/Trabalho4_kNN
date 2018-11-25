% Alunos: André, Karin e Simon
function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
  %Para cada exemplo de teste
% Calcule a distância entre o exemplo de teste e os dados de treinamento
% Ordene as distâncias. A ordem iX de cada elemento ordenado é
% importante:
% [distOrdenada ind] = sort(...);
% O rótulo previsto corresponde ao rótulo do exemplo mais próximo (iX(1))

for j=1:size(dadosTeste)(1)
  for i=1:size(dadosTrain)(1)
    _dist(j,i) = dist(dadosTeste(j,:), dadosTrain(i, :));
  endfor
  [distOrdenada, ind] = sort(_dist(j,:));
  rotuloPrevisto(j,1) = rotuloTrain(ind(k));
endfor
endfunction

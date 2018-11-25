% Alunos: André, Karin e Simon
function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
  for j=1:size(dadosTeste)(1) %Para cada exemplo de teste
    for i=1:size(dadosTrain)(1)
      _dist(j,i) = dist(dadosTeste(j,:), dadosTrain(i, :)); % Calcule a distância entre o exemplo de teste e os dados de treinamento
    endfor
    [distOrdenada, ind] = sort(_dist(j,:)); % Ordene as distâncias. A ordem iX de cada elemento ordenado é
         
    rotuloPrevisto(j,1) = mode(rotuloTrain(ind(k))); % O rótulo previsto corresponde ao rótulo do exemplo mais próximo (iX(1))       
  endfor      
endfunction

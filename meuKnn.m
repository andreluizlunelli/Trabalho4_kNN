% Alunos: Andr�, Karin e Simon
function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
  for j=1:size(dadosTeste)(1) %Para cada exemplo de teste
    for i=1:size(dadosTrain)(1)
      _dist(j,i) = dist(dadosTeste(j,:), dadosTrain(i, :)); % Calcule a dist�ncia entre o exemplo de teste e os dados de treinamento
    endfor
    [distOrdenada, ind] = sort(_dist(j,:)); % Ordene as dist�ncias. A ordem iX de cada elemento ordenado �
         
    rotuloPrevisto(j,1) = mode(rotuloTrain(ind(k))); % O r�tulo previsto corresponde ao r�tulo do exemplo mais pr�ximo (iX(1))       
  endfor      
endfunction

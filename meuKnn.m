% Alunos: Andr�, Karin e Simon
function rotuloPrevisto = meuKnn(dadosTrain, rotuloTrain, dadosTeste, k)
  
  testeSize = size(dadosTeste,1);
  trainSize = size(dadosTrain,1);
  
  dist = zeros(testeSize,trainSize);
  
  rotuloPrevisto = zeros(testeSize,1); % reinicializa o vetor para os rotulos previstos
  
  for j=1:testeSize
    for i=1:trainSize
      dist(j,i) = myDist(dadosTeste(j,:), dadosTrain(i,:)); % Calcule a dist�ncia entre o dados de teste e os dados de treinamento
    endfor
    [distOrdenada, ind] = sort(dist(j,:)); % Ordene as dist�ncias
         
    rotuloPrevisto(j,1) = mode(rotuloTrain(ind(k))); % O r�tulo previsto corresponde ao r�tulo do exemplo mais pr�ximo k
  endfor   
endfunction

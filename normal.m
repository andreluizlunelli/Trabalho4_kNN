% Alunos: André, Karin e Simon
% Normaliza os dados passados

function grupoNormal = normal(grupo)
  %Fazer normalização de um atributo (coluna)
  %x_normalizado = x - min(x) / max(x) - min(x) 
  [nr, nc] = size(grupo)
   for i = 1:nc   %para cada coluna
       for j = 1:nr    %para cada linha
         valorNormalizado = (grupo(j,i) - min(grupo(:,i))) / (max(grupo(:,i)) - min(grupo(:,i)));
         grupoNormal(j,i) = valorNormalizado;
       endfor
   endfor
endfunction
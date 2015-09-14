%{
GRAFICO_QUAD.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplo #6 do capítulo 5, "Gravando e reaproveitando código".

* Autor: Alexandre 'Jaguar' Fioravante de Siqueira
* Editora: Casa do Código
* Contato: http://www.programandociencia.com/sobre/
           http://www.casadocodigo.com.br/
* Fórum de discussão: http://groups.google.com/d/forum/compcieoctave
* Material de apoio: http://www.github.com/alexandrejaguar/compcieoctave

* Para citar esse material, por favor utilize a referência abaixo:
SIQUEIRA, A.F. Computação científica com GNU Octave. São Paulo: 
Casa do Código, 2015. xxx p.

Este programa é um software livre; você pode redistribuí-lo e/ou 
modificá-lo dentro dos termos da Licença Pública Geral GNU como 
publicada pela Fundação do Software Livre (FSF); na versão 3 da 
Licença, ou qualquer versão posterior.

Este programa é distribuído na esperança de que possa ser útil, 
mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO
a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR. Veja a
Licença Pública Geral GNU para maiores detalhes.

Você deve ter recebido uma cópia da Licença Pública Geral GNU junto
com este programa. Se não, veja <http://www.gnu.org/licenses/>.
%}

function grafico_quad()
    %{
    grafico_quad()
    
    GRAFICO_QUAD plota o gráfico da função do segundo grau 
    Y = A*X^2+B*X+C, com A (coef_a), B (coef_b) e C (coef_c) 
    fornecidos pelo usuário, além das raízes X1 (x0_1) e X2 
    (x0_2), obtidas com o auxílio das funções DISCR e RAIZES.
    %}

    disp('*** Gráfico de Y = A*X^2+B*X+C, com X = [-50, 50]. ***');
    coef_a = input('Digite o valor do coeficiente A: ');
    coef_b = input('Digite o valor do coeficiente B: ');
    coef_c = input('Digite o valor do coeficiente C: ');

    % Chamando a função discr() com os argumentos obtidos.
    val_delta = discr(coef_a, coef_b, coef_c);
    
    % Obtendo X1 e X2 por meio da função raizes().
    [raiz_1, raiz_2] = raizes(val_delta, coef_a, coef_b);
    
    % Calculando os pontos usando a função quadratica().
    [eixo_x, eixo_y] = quadratica(coef_a, coef_b, coef_c);

    % Plotando os gráficos com a função parabola().
    parabola(eixo_x, eixo_y, raiz_1, raiz_2);
end


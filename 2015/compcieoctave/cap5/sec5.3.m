%{
SEC5.3.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 5.3, capítulo 5, "Gravando e reaproveitando código".

* Autor: Alexandre 'Jaguar' Fioravante de Siqueira
* Editora: Casa do Código
* Contato: http://www.programandociencia.com/sobre/
           http://www.casadocodigo.com.br/
* Fórum de discussão: http://groups.google.com/d/forum/compcieoctave
* Material de apoio: http://goo.gl/VnnAnF

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

% #1
function nao_faco_nada
end

% #2
nao_faco_nada

% #3
function texto_simples
    disp('Só imprimo este texto.')
end

% #4
texto_simples

% #5
function [raiz_1, raiz_2] = quad(val_a, val_b, val_c)
    %{
    [raiz_1, raiz_2] = quad(val_a, val_b, val_c)

    QUAD encontra as raízes (ou zeros) X1 (raiz_1) e X2 (raiz_2) 
    da equação quadrática A*X^2 + B*X + C = 0 pela fórmula de 
    Bhaskara.
    %}

    delta = val_b^2 - 4*val_a*val_c;
    raiz_1 = (-val_b + sqrt(delta))./(2*val_a);
    raiz_2 = (-val_b - sqrt(delta))./(2*val_a);
end

% #6
[x1, x2] = quad(2,-4,0)


%% Chamando uma função no código de outra função
% #1
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

% #2
function delta = discr(vala, valb, valc)
    %{
    delta = discr(vala, valb, valc)

    DISCR calcula o discriminante (delta) da equação 
    quadrática A*X^2 + B*X + C = 0, a partir dos valores 
    de A (vala), B (valb) e C (valc).
    %}

    delta = valb^2 - 4*vala*valc;
end

% #3
function [raiz1, raiz2] = raizes(delta, vala, valb)
    %{
    [raiz1, raiz2] = raizes(delta, vala, valb)

    RAIZES encontra as raízes X1 (raiz1) e X2 (raiz2) da 
    equação quadrática A*X^2 + B*X + C = 0 pela fórmula de 
    Bhaskara utilizando o discriminante (delta) e os 
    coeficientes A (vala) e B (valb).
    %}

    raiz1 = (-valb + sqrt(delta))/(2*vala);
    raiz2 = (-valb - sqrt(delta))/(2*vala);
end

% #4
function [eixox, eixoy] = quadratica(vala, valb, valc)
    %{
    [eixox, eixoy] = quadratica(vala, valb, valc)

    QUADRATICA calcula os valores da função quadrática 
    Y = A*X^2 + B*X + C para todos os valores de X (eixox), 
    definido entre -50 e 50.
    %}

    % O valor da equação quadrática depende dos valores de x.
    eixox = -50:0.01:50;
    % Como eixox é um vetor, usamos .* e .^ para multiplicação 
    % e exponencial por todos os elementos
    eixoy = vala.*eixox.^2 + valb.*eixox + valc;
end

% #5
function parabola(eixox, eixoy, raiz1, raiz2)
    %{
    parabola(eixox, eixoy, raiz1, raiz2)

    PARABOLA é responsável por plotar o gráfico da função 
    quadrática e também as raízes X1 (raiz1) e X2 (raiz2), 
    obtidas por meio da função RAIZES.    
    %}

    disp('As raízes são: ');
    disp(raiz1);
    disp(raiz2);

    % Gráfico da função e das raízes.
    plot(eixox, eixoy, 'linewidth', 2)
    hold on;
    plot(raiz1, 0, 'r*', 'linewidth', 4)
    plot(raiz2, 0, 'r*', 'linewidth', 4)
    hold off;
end


%% Variáveis locais de uma função
% #1
val_delta = discr(coef_a, coef_b, coef_c);

% #2
delta = discr(vala, valb, valc)

% #3
function cubica(coefa, coefb, coefc, coefd)
    %{
    cubica(coefa, coefb, coefc, coefd)

    CUBICA calcula os pontos da função cúbica 
    Y = A*X^3 + B*X^2 + C*X + D e gera seu gráfico.
    %}

    % Definindo valx e calculando valy
    valx = -3:0.01:3;
    valy = coefa.*valx.^3 + coefb.*valx.^2 + ...
        coefc.*valx + coefd;

    % Gráfico de valy em função de valx
    plot(valx,valy,'linewidth',2);
    axis([-3,3,-10,10]);
end

% #4
valx = 10;
valy = valx^2 + 3;
cubica(3,-3,2,2);


%% Dividindo funções em diferentes arquivos
% #1
addpath('~/Documentos/Octave/quadratica_octave')

% #2
savepath('~/Documentos/Octave/quadratica_octave')

% #3
rmpath('~/Documentos/Octave/quadratica_octave')


%% Unindo scripts e funções em um mesmo arquivo M
% #1
function [area_base, area_lateral, volume] = cilindro(raio, altura)
    %{
    [area_base, area_lateral, volume] = cilindro(raio, altura)

    CILINDRO calcula os valores das áreas da base (area_base), 
    lateral (area_lateral) e do volume (volume) por meio do 
    raio (raio) e da altura (altura) fornecidos como argumento.
    %}

    % Cálculo de area_base, area_lateral e volume.
    area_base = pi*raio^2;
    area_lateral = 2*pi*raio*altura;
    volume = area_base*altura;

    % O programa exibe uma mensagem de retorno das variáveis, 
    % dividida em duas strings para melhor visualização.
    disp('Os valores da área da base, da área lateral e');
    disp('do volume desse cilindro são, respectivamente: ');

    % Exibição dos valores obtidos.
    disp(area_base);
    disp(area_lateral);
    disp(volume);
end

% #2
%{
Script: cilindro_variaveis.m

Contém a função CILINDRO, para cálculo das áreas da base, 
lateral e do volume de um cilindro. Começa com o valor das 
variáveis de teste.
%}

raio = 5;
altura = 12;

[base, lat, vol] = cilindro(raio, altura);

function [area_base, area_lateral, volume] = cilindro(raio, altura)
    % Aqui vai a declaração da função CILINDRO.
end

% #3
cilindro_variaveis

% #4
%{
Script: cilindro_declsemef.m

Contém a função CILINDRO, para cálculo das áreas da base, 
lateral e do volume de um cilindro. Começa com uma declaração 
sem efeito.
%}

% O zero abaixo não está perdido; ele previne que o Octave 
% identifique o arquivo como uma função.

0;

function [area_base, area_lateral, volume] = cilindro(raio, altura)
    % Aqui vai a declaração da função CILINDRO.
end

% #5
%{
Script: cilindro_apres.m

Contém a função CILINDRO, para cálculo das áreas da base, 
lateral e do volume de um cilindro. Começa com uma apresentação.
%}

disp('Aqui começa o script CILINDRO.');

function [area_base, area_lateral, volume] = cilindro(raio, altura)
    % Aqui vai a declaração da função CILINDRO.
end

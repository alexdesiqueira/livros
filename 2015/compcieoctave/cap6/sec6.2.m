%{
SEC6.2.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 6.2, capítulo 6, "Operadores e estruturas para 
controle de fluxo".

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


%% A estrutura se
% #1
maior_idade = 18;
idade_usuario = input('Digite sua idade: ');
if idade_usuario >= maior_idade
    disp('Usuário entra no grupo!')
end

% #2
maior_idade = 18;
idade_usuario = input('Digite sua idade: ');
if idade_usuario >= maior_idade
    disp('Usuário entra no grupo!')
else
    disp('Usuário fora do grupo. Desculpe!')
end

% #3
limite_baixo = 18;
limite_alto = 60;
idade_usuario = input('Digite sua idade: ');
if idade_usuario < limite_baixo
    disp('Usuário fora do grupo (limite menor). Desculpe!');
elseif idade_usuario > limite_alto
    disp('Usuário fora do grupo (limite maior). Desculpe!');
else
    disp('Usuário entra no grupo!')
end

% #4
function [raiz_1, raiz_2] = quad(val_a, val_b, val_c)
    delta = val_b^2 - 4*val_a*val_c;
    raiz_1 = (-val_b + sqrt(delta))./(2*val_a);
    raiz_2 = (-val_b - sqrt(delta))./(2*val_a);
end

% #5
[x1, x2] = quad(2,-4)

% #6
function [raiz_1, raiz_2] = quadnargin(val_a, val_b, val_c)
    %{
    [raiz_1, raiz_2] = quadnargin(val_a, val_b, val_c)

    QUADNARGIN encontra as raízes (ou zeros) X1 (raiz_1) e X2
    (raiz_2) da equação quadrática A*X^2 + B*X + C = 0, pela
    fórmula de Bhaskara. Confere a entrada do usuário por meio
    de nargin.
    %}

    if (nargin != 3)
        usage('quadnargin (val_a, val_b, val_c)');
    end

    delta = val_b^2 - 4*val_a*val_c;
    raiz_1 = (-val_b + sqrt(delta))./2*val_a;
    raiz_2 = (-val_b - sqrt(delta))./2*val_a;
end

% #7
[x1, x2] = quadnargin(2,-4)


%% A estrutura switch
% #1
function bases(letra_base)
    %{
    bases(letra_base)

    BASES recebe uma letra do usuário e retorna o nome da base 
    correspondente.

    Modificado de:
    http://octave.di.uminho.pt/index.php/as_condições_switch
    %}

    letra_base = input('Indique a letra da base [ACGT]: ', 's');
    switch letra
        case {'a' 'A'}
            disp('Adenina');
        case {'c' 'C'}
            disp('Citosina');
        case {'g' 'G'}
            disp('Guanina');
        case {'t' 'T'}
            disp('Timina');
        otherwise
            disp('Não existe nenhuma base correspondente!');
        end
end

% #2
idade_usuario = input('Digite sua idade: ');
switch (idade_usuario)
    case num2cell([18:21])
        disp('Usuário no Grupo 1');
    case num2cell([22:30])
        disp('Usuário no Grupo 2');
    case num2cell([31:40])
        disp('Usuário no Grupo 3');
    case num2cell([41:50])
        disp('Usuário no Grupo 4');
    case num2cell([51:60])
        disp('Usuário no Grupo 5');
    otherwise
        disp('Usuário nao cumpre requerimentos. Desculpe!');
end


%% A estrutura para
% #1
for iter = 1:10
    disp(sin(iter))
end

% #2
function seq = fibonacci(num_termos)
    %{
    seq = fibonacci(num_termos)

    FIBONACCI gera a sequência de Fibonacci para o número de 
    termos num_termos.
    %}

    if (nargin != 1)
        usage('fibonacci (num_termos)');
    end
    seq = ones(1, num_termos);
    for termo = 3:num_termos
        seq(termo) = seq(termo-1) + seq(termo-2);
    end
end

% #3
fibonacci(10)

% #4
tam_grupo = 8;
idade_grupo = zeros(1, tam_grupo);
for elem = 1:tam_grupo
    idade_grupo(elem) = input('Digite sua idade: ');
end

% #5
function classgruposid()
    %{
    classgruposid()

    CLASSGRUPOSID() recebe as idades de um grupo de pessoas com
    tamanho predefinido (tam_grupo) e as classifica em cinco
    grupos distintos utilizando a estrutura switch.
    %}

    tam_grupo = 8;
    idade_grupo = zeros(1, tam_grupo);
    for elem = 1:tam_grupo
        idade_grupo(elem) = input('Digite sua idade: ');
        switch (idade_grupo(elem))
            case num2cell([18:21])
                disp('Usuário no Grupo 1');
            case num2cell([22:30])
                disp('Usuário no Grupo 2');
            case num2cell([31:40])
                disp('Usuário no Grupo 3');
            case num2cell([41:50])
                disp('Usuário no Grupo 4');
            case num2cell([51:60])
                disp('Usuário no Grupo 5');
            otherwise
                disp('Usuário nao cumpre requerimentos. Desculpe!');
        end
    end
end

% #6
classgruposid()


%% A estrutura enquanto
% #1
function soma = seriegeomwhile(termos)
    %{
    soma = seriegeomwhile(termos)

    SERIEGEOMWHILE calcula a soma da série geométrica
    1/2 + 1/4 + 1/8 + 1/16 + ... utilizando do
    e recebe como argumento a quantidade de termos
    a serem somados, retornando o valor da soma.
    %}

    soma = 0;
    cont = 1;
    while (cont != termos)
        soma = soma + (1/2)^cont;
        cont++;
    end
end

% #2
function idade_grupo = classgruposid2()
    %{
    idade_grupo = classgruposid2()

    CLASSGRUPOSID2() retorna as idades de um grupo
    de pessoas (idade_grupo) até que receba zero e
    as classifica em cinco grupos distintos,
    utilizando a estrutura switch.
    %}

    idade_grupo = -1;    
    while (idade_grupo(end) != 0)
        idade_grupo(end+1) = input('Digite sua idade: ');
        switch (idade_grupo(end))
            case num2cell([18:21])
                disp('Usuário no Grupo 1');
            case num2cell([22:30])
                disp('Usuário no Grupo 2');
            case num2cell([31:40])
                disp('Usuário no Grupo 3');
            case num2cell([41:50])
                disp('Usuário no Grupo 4');
            case num2cell([51:60])
                disp('Usuário no Grupo 5');
            otherwise
                disp('Usuário nao cumpre requerimentos. Desculpe!');
        end
    end
    disp('Fim do processamento!')
end

% #3
idades = classgruposid2();

% #4
idades


%% A estrutura faça até que
% #1
function soma = seriegeomdo(termos)
    %{
    soma = seriegeomdo(termos)

    SERIEGEOMDO calcula a soma da série geométrica
    1/2 + 1/4 + 1/8 + 1/16 + ... utilizando do
    e recebe como argumento a quantidade de termos
    a serem somados, retornando o valor da soma.
    %}

    soma = 0;
    cont = 1;
    do
        soma = soma + (1/2)^cont;
        cont++;
    until (cont == termos)
end

% #2
soma = 0;
cont = 1;
termos = 20;
do
    soma = soma + (1/2)^cont;
    cont++;
until (cont != termos)  % condição trocada por descuido!
disp('Soma: '); disp(soma);

% #3
function [idade_grupo, grupos] = classgruposidfinal()
    %{
    [idade_grupo, grupos] = classgruposidfinal()

    CLASSGRUPOSIDFINAL() retorna as idades de um grupo
    de pessoas (idade_grupo) até que receba zero e
    as classifica em cinco grupos distintos,
    utilizando a estrutura switch.
    %}

    idade_grupo = [];
    for i = 1:5
        grupos(i).idade = [];
    end

    do
        idade_grupo(end+1) = input('Digite sua idade: ');
        switch (idade_grupo(end))
            case num2cell([18:21])
                disp('Usuário no Grupo 1');
                grupos(1).idade(end+1) = idade_grupo(end);
            case num2cell([22:30])
                disp('Usuário no Grupo 2');
                grupos(2).idade(end+1) = idade_grupo(end);
            case num2cell([31:40])
                disp('Usuário no Grupo 3');
                grupos(3).idade(end+1) = idade_grupo(end);
            case num2cell([41:50])
                disp('Usuário no Grupo 4');
                grupos(4).idade(end+1) = idade_grupo(end);
            case num2cell([51:60])
                disp('Usuário no Grupo 5');
                grupos(5).idade(end+1) = idade_grupo(end);
            otherwise
                disp('Usuário nao cumpre requerimentos. Desculpe!');
        end
    until (idade_grupo(end) == 0)

    % Mostrando o número total de entradas.
    disp('Número total de usuários: '); disp(numel(idade_grupo));

    % Desconsiderando idades menores que 18 e maiores que 60.
    for iter = numel(idade_grupo):-1:1
      if (idade_grupo(iter) < 18 || idade_grupo(iter) > 60)
        idade_grupo(iter) = [];
      end
    end
    disp('Fim do processamento!')
end

% #4
for iter = 5:-1:1
    disp(iter)
end

% #5
[idade, grupo] = classgruposidfinal();

% #6
idade
grupo.idade

% #7
numel(grupo(1).idade)
numel(grupo(4).idade)


%% As estruturas quebre e continue
% #1
function div = menordivisor(num)
    %{
    div = menordivisor(num)
    
    MENORDIVISOR() retorna o menor divisor (div) de
    um número, se ele não for primo.
    %}

    div = 2;
    while (power(div,2) <= num)
        if (rem(num, div) == 0)
            break;
        end
        div++;
    end
    if (rem (num, div) == 0)
        disp('Menor divisor: '); disp(div)
    else
        disp('O número é primo!');
        div = 1;
    end
end

% #2
function vetor = multitres()
    %{
    vetor = multitres()

    MULTITRES() gera um vetor de 30 números aleatórios
    e exibe quais deles são múltiplos de 3.
    %}

    vetor_rand = round(rand (1, 30) * 100);
    disp('Multiplos de 3: ');

    for mult = vetor_rand
        if (rem (mult, 3) != 0)
            continue;
        end
    disp(mult);
    end
end

%{
CLASSGRUPOSIDFINAL.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplo #8 do capítulo 6, "Operadores e estruturas para
controle de fluxo".

* Autor: Alexandre 'Jaguar' Fioravante de Siqueira
* Editora: Casa do Código
* Contato: http://www.programandociencia.com/sobre/
           http://www.casadocodigo.com.br/
* Fórum de discussão: http://groups.google.com/d/forum/compcieoctave
* Material de apoio: http://www.github.com/alexandrejaguar/compcieoctave

* Para citar esse material, por favor utilize a referência abaixo:
DE SIQUEIRA, A.F. Octave: Seus primeiros passos na programação
científica. São Paulo: Casa do Código, 2015.

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

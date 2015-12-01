%{
CLASSGRUPOSID.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplo #4 do capítulo 6, "Operadores e estruturas para
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

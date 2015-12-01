%{
CUBICA.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplo #11 do capítulo 5, "Gravando e reaproveitando
código".

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



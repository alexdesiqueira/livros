%{
QUAD.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplo #5 do capítulo 5, "Gravando e reaproveitando
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

function [raiz_1, raiz_2] = quad(val_a, val_b, val_c)
    %{
    [raiz_1, raiz_2] = quad(val_a, val_b, val_c)

    QUAD encontra as raízes (ou zeros) X1 (raiz_1) e X2 (raiz_2) 
    da equação quadrática A*X^2 + B*X + C = 0, pela fórmula de 
    Bhaskara.
    %}

    delta = val_b^2 - 4*val_a*val_c;
    raiz_1 = (-val_b + sqrt(delta))./2*val_a;
    raiz_2 = (-val_b - sqrt(delta))./2*val_a;
end


%{
QUADRATICA.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplo #9 do capítulo 5, "Gravando e reaproveitando código".

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


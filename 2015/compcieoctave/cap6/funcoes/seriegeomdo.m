%{
SERIEGEOMDO.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplo #7 do capítulo 6, "Operadores e estruturas para controle de fluxo".

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

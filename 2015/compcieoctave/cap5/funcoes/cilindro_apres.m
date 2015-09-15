%{
CILINDRO_APRES.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplo #15 do capítulo 5, "Gravando e reaproveitando código".

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

%{
Script: cilindro_apres.m

Contém a função CILINDRO, para cálculo das áreas da base, 
lateral e do volume de um cilindro. Começa com uma apresentação.
%}

disp('Aqui começa o script CILINDRO.');

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

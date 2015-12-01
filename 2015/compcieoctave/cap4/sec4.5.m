%{
SEC4.5.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplos da seção 4.5, capítulo 4, "Produzindo gráficos no
Octave".

* Autor: Alexandre 'Jaguar' Fioravante de Siqueira
* Editora: Casa do Código
* Contato: http://www.programandociencia.com/sobre/
           http://www.casadocodigo.com.br/
* Fórum de discussão: http://groups.google.com/d/forum/compcieoctave
* Material de apoio: http://goo.gl/VnnAnF

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


%% A função mesh()
% #1
comp = 1:5
area = meshgrid(comp)

% #2
vetor = [1 2 3 4 5];
[area_x,area_y] = meshgrid(vetor)

% #3
vet1 = [1 2 3 4 5];
vet2 = [-1 -2 -3 -4 -5];
[area_x,area_y] = meshgrid(vet1,vet2)

% #4
grade = linspace(-8,8,41);
[xx,yy] = meshgrid(grade);
zz = sin(sqrt(xx.^2 + yy.^2)) ./ sqrt(xx.^2 + yy.^2);
mesh(xx,yy,zz,'linewidth',2)

% Nota 1
[xx,yy,zz] = sombrero(41);
mesh(xx,yy,zz,'linewidth',2)

% #5
grade = linspace(-3,3,49);
[xx,yy] = meshgrid(grade);
zz = 3*(1-xx).^2.*exp(-xx.^2 - (yy+1).^2) ...
    - 10*(xx./5 - xx.^3 - yy.^5).*exp(-xx.^2-yy.^2) ...
    - 1/3.*exp(-(xx+1).^2 - yy.^2);
meshc(xx,yy,zz,'linewidth',2)

% Nota 2
[xx,yy,zz] = peaks(49);
meshc(xx,yy,zz,'linewidth',2)


%% A função surf()
% #1
grade = linspace(-5,5,41);
[xx,yy] = meshgrid(grade);
zz = sin(sqrt(xx.^2 + yy.^2)) .* sqrt(xx.^2 + yy.^2);
surf(xx,yy,zz)
colormap('hsv')

% #2
grade = linspace(-2,2,40);
[xx,yy] = meshgrid(grade);
zz = exp(cos(xx.^2 + yy.^2)); % .* sqrt(xx.^2 + yy.^2);
surfc(xx,yy,zz)
shading interp


%% A função contour()
% #1
subplot(211)
[xx,yy,zz] = sombrero(41);
contour(xx,yy,zz,'linewidth',2)
axis off
subplot(212)
[xx,yy,zz] = peaks(49);
contour(xx,yy,zz,'linewidth',2)

% #2
grade = linspace(-10,10,60);
[xx,yy] = meshgrid(grade);
zz = cos(sqrt(xx.^2 + yy.^2)) .* sqrt(xx.^2 + yy.^2);
contourf(xx,yy,zz)

% #3
subplot(211)
[xx,yy,zz] = sombrero(41);
meshc(xx,yy,zz,'linewidth',2)
subplot(212)
contour(xx,yy,zz,'linewidth',2)
figure;
[xx,yy,zz] = peaks(49);
subplot(211)
surfc(xx,yy,zz,'linewidth',2)
subplot(212)
contourf(xx,yy,zz,'linewidth',2)


%{
SEC4.4.M

Material de apoio do livro "Octave: Seus primeiros passos na programação
científica". Exemplos da seção 4.4, capítulo 4, "Produzindo gráficos no
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


%% A função hist()
% #1
vet_ale = 100*rand(1,100);
hist(vet_ale,25)
title('Histograma')
xlabel('rand(1,100)')
ylabel('Frequência')

% #2
rand('seed',0);
vet_ale = 100*rand(1,100);

% #3
hist(vet_ale,25,'facecolor','g','edgecolor','r')


%% A função bar()
% #1
vetor = [2 1; 3 4; 3 1; 5 1; 4 2];
bar(vetor)

% #2
bar(x,'facecolor','y','edgecolor','m')

% #3
rand('seed',0)
dados_ale = rand(3,10)
bar(dados_ale,'stacked')

% #4
rand('seed',0)
dados_ale = rand(3,10)
bar(dados_ale,'stacked')
colormap('copper')


%% A função scatter()
% #1
vetor1 = rand(1,100);
vetor2 = rand(1,100);
scatter(vetor1,vetor2)

% #2
x = linspace(0,4*pi,200);
y = cos(exp((1/4)*x));
escala_tam = linspace(1,10,length(x));
scatter(x,y,escala_tam,'filled')

% #3
x = linspace(0,4*pi,200);
y = cos(exp((1/4)*x));
escala_cor = linspace(1,10,length(x));
scatter(x,y,[],escala_cor,'filled')

% #4
t = linspace(0,1,250);
x = exp(t).*sin(100*t);
y = exp(t).*cos(100*t);
escala_tam = linspace(1,10,length(t));
escala_cor = linspace(1,10,length(t));
scatter(x,y,escala_tam,escala_cor,'^','filled')

%% Nota 1
% #1
rand('seed',0)
vet_x = rand(1,100);
vet_y = rand(1,100);
vet_z = rand(1,100);
escala_tam = linspace(1,10,length(vet_x));
escala_cor = linspace(1,10,length(vet_x));
scatter3(vet_x,vet_y,vet_z,escala_tam,escala_cor,'filled')

% #2
escala_tam = escala_cor = linspace(0,pi,length(vet_x));


%% A função pie()
% #1
vet_entr = [1 1 3 2 4];
pie(vet_entr)
title('Gráfico de torta')

% #2
vet_entr = [1 1 3 2 4];
rotulos = {'Casa','Carro','Celular','Computador','Outros'};
expl = [0 0 0 0 1];
pie(vet_entr,rotulos,expl)
title('Gráfico de torta')


%% A função stairs()
% #1
x = 0:1:10;
stairs(x,sin(x),'r','linewidth',4)
xlabel('x')
ylabel('sin(x)')
title('Gráfico de escadas (seno)')


%% A função stem()
% #1
x = 0:1:10;
stem(x,sin(x),'m','filled','linewidth',3)
xlabel('x')
ylabel('sin(x)')
title('Gráfico discreto, dado por stem (seno)')

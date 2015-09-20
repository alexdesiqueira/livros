%{
SEC4.2.M

Material de apoio do livro "Computação científica com GNU Octave".
Exemplos da seção 4.2, capítulo 4, "Produzindo gráficos no Octave".

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


%% Informando vários gráficos como argumento na mesma função
% #1
k = -2*pi:0.1:2*pi;
plot(k,sin(k),'linewidth',8,k,cos(k),'linewidth',4)
legend('sin(k)','cos(k)')
legend('boxoff')

% #2
k = -2*pi:0.1:2*pi;
plot3(k,sin(k),cos(k),'linewidth',6, ...
    k,cos(k),sin(k),'dr','linewidth',4)


%% Mantendo os gráficos na mesma janela gráfica
% #1
k = -2*pi:0.1:2*pi;
plot(k,sin(k),'linewidth',8)
hold all
plot(k,cos(k),'linewidth',4)
legend('sin(k)','cos(k)')
legend('boxoff')
hold off

% #2
x = 0:0.1:4*pi;
plot(x,sin(x),'linewidth',3)
hold all
plot(x,cos(x),'--','linewidth',3)
plot(x,tan(x),'-.','linewidth',3)
plot(x,exp(x),':','linewidth',3)
plot(x,log(x),'*','linewidth',3)
axis([0,10,-2,4])
legend('Seno','Cosseno','Tangente','Exponencial','Logaritmo')
legend('boxoff')
hold off

% #3
x = 0:0.1:10*pi;
y = z = x;
plot3(x,y,z,'*','linewidth',3)
hold all
plot3(x,sin(y),z,'linewidth',3)
plot3(cos(x),y,z,'--','linewidth',3)
plot3(cos(x),y,sin(z),'-.','linewidth',3)
plot3(x,sin(y),cos(z),':','linewidth',3)
hold off

% #4
x = y = z = 0:0.1:10*pi;

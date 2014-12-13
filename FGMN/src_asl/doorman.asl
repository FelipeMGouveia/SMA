// Agent basis
/* agent perceives an area that is a square with the size N with
   the agent in the center. Each agent is able to see N * N cells. */
   
/* 
	Um explorador eh um agente que tem por funcao passear pelo mapa com o objetivo de conhecer o mesmo.
 */

/* Initial beliefs and rules */
/* BELIEFS */


/* RULES */



/* initial DESIRES */
/*!search. //Tem como unico desejo buscar pelo mapa


+!search : not pos(_,_,_) //Se nao recebeu nenhuma posicao aguarda a chegada de uma posicao
<- .wait("+pos(_,_,_)");
   !search.
   
+!search : pos(_,_,_) //Se conhece a própria posicao entao se mova
<- !move;
   -pos(_,_,_);
   !search.
   
+!search : pos(X,Y,_) & cow(Cid,Cx,Cy) //Se achou uma vaca diga aos colegas!
<- br.poli.ecomp.sma.fgmn.massim.action.PopulateGlobalMap(X, Y, Cx, Cy, Cid, "cow");
   !move.
   
+!move : pos(X,Y,ID) 
<- br.poli.ecomp.sma.fgmn.massim.action.UnknownPos(X,Y,NewX,NewY,ID);
   br.poli.ecomp.sma.fgmn.massim.action.FindDirection(X,Y,NewX,NewY,Direction);
   moveTo(Direction);
   !search.
*/
+!fence(Type, Cx, Cy) : true
<- .print("ACHEI UM BOTÃO").
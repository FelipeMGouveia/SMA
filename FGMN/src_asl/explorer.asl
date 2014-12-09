// Agent basis
/* agent perceives an area that is a square with the size N with
   the agent in the center. Each agent is able to see N * N cells. */
   
/* 
	Um explorador � um agente que tem por fun��o passear pelo mapa com o objetivo de conhecer o mesmo.
 */

/* Initial beliefs and rules */
/* BELIEFS */


/* RULES */



/* initial DESIRES */
!search. //Tem como �nico desejo buscar pelo mapa

+!search : not pos(_,_,_) //Se n�o recebeu nenhuma posi��o aguarda a chegada de uma posi��o
<- .wait("+pos(_,_,_)");
   !search.
   
+!search : pos(_,_,_) //Se conhece a pr�pria posi��o ent�o se mova
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
   
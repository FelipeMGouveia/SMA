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
!gotoCow. // Desejo de alcançar uma vaca

+!returnCow : pos(X,Y,_) & cow(Cid,Cx,Cy) & corral(CoX, CoY)
<- br.poli.ecomp.sma.fgmn.massim.action.ReturnCow(X, Y, Cx, Cy, Cid, CoX, CoY, Direction);
	moveTo(Direction);
	!returnCow.
  
+!goToCow : pos(X,Y,_) & cow(Cid,Cx,Cy) & corral(CoX, CoY) //Se um explorador achou uma vaca, vamos até ela
<-  br.poli.ecomp.sma.fgmn.massim.action.FindDirection(X,Y,NewX,NewY,Direction); 
	br.poli.ecomp.sma.fgmn.massim.action.PopulateGlobalMap(X, Y, Cx, Cy, Cid, "cow");
	moveTo(Direction);
	!returnCow.
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
!waitSwitch.

+!waitSwitch : not pos(_,_,_)
	.wait("+pos(_,_,_)");
	.wait("+switch(_,_,_)");
	.!waitSwitch.
	
+!waitSwitch : pos(X,Y,_) & switch(corral,Cx,Cy)//No switch o ID diz se e corral ou other
<- br.poli.ecomp.sma.fgmn.massim.action.FindDirectionDoorman(X,Y,Cx,Cy,Direction);
   moveTo(Direction);
   !waitSwitch.
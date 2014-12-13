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
!waitFence.

+!waitFence : fence(_, _, _)
<- .print("ACHEI UMA CERCA");
	!waitFence.
	
+!waitFence : not fence(_, _, _)
<- .wait("+fence(_,_,_)");
	!waitFence.
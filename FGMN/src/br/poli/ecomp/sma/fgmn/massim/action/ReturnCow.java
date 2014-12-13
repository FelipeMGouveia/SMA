package br.poli.ecomp.sma.fgmn.massim.action;

import jason.asSemantics.DefaultInternalAction;
import jason.asSemantics.TransitionSystem;
import jason.asSemantics.Unifier;
import jason.asSyntax.NumberTerm;
import jason.asSyntax.Term;

public class ReturnCow extends DefaultInternalAction
{
	
	@Override 
	public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception 
	{ 
		Term X = args[0]; //Minha posição X
		Term Y = args[1]; //Minha posição Y
		Term Ox = args[2]; //Posição do objeto X
		Term Oy = args[3]; //Posição do objeto Y
		Term Oid = args[4]; //Id do objeto
		Term CorralX = args[5]; // X do curral
		Term CorralY = args[6]; // Y do curral
		
		double myX = ((NumberTerm) X).solve();
		double myY = ((NumberTerm) Y).solve();
		
		double cowX = ((NumberTerm) Ox).solve();
		double cowY = ((NumberTerm) Oy).solve();
		
		double corralX = ((NumberTerm) CorralX).solve();
		double corralY = ((NumberTerm) CorralY).solve();
		
		String dir = "";
		
//		if ()

		// TODO
		return true;
	}
}

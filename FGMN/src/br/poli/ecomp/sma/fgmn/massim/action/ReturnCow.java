package br.poli.ecomp.sma.fgmn.massim.action;

import jason.asSemantics.DefaultInternalAction;
import jason.asSemantics.TransitionSystem;
import jason.asSemantics.Unifier;
import jason.asSyntax.Term;

public class ReturnCow extends DefaultInternalAction
{
	
	@Override 
	public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception 
	{ 
		Term X = args[0]; //Minha posi��o X
		Term Y = args[1]; //Minha posi��o Y
		Term Ox = args[2]; //Posi��o do objeto X
		Term Oy = args[3]; //Posi��o do objeto Y
		Term Oid = args[4]; //Id do objeto

		// TODO
		return true;
	}
}

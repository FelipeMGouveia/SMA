package br.poli.ecomp.sma.fgmn.massim.action;

import org.apache.commons.math3.ml.distance.EuclideanDistance;

import jason.asSemantics.DefaultInternalAction;
import jason.asSemantics.TransitionSystem;
import jason.asSemantics.Unifier;
import jason.asSyntax.Atom;
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
		Term direction = args[7];
		
		double myX = ((NumberTerm) X).solve();
		double myY = ((NumberTerm) Y).solve();
		
		double cowX = ((NumberTerm) Ox).solve();
		double cowY = ((NumberTerm) Oy).solve();
		
		double corralX = ((NumberTerm) CorralX).solve();
		double corralY = ((NumberTerm) CorralY).solve();
		
		String dir = "";
		
		EuclideanDistance euclideanDistance = new EuclideanDistance();
		double dmc = euclideanDistance.compute(new double[]{myX, myY}, new double[]{cowX, cowY});
		
		// me aproximar da vaca
		if (dmc > 4)
		{
			dir = getDirection(myX, myY, cowX, cowY);
		} 
		else
		{
			// se a vaca está entre mim e o curral, avançar na direção do curral
			if (isCowBetweenMeAndCorral(myX, myY, cowX, cowY, corralX, corralY))
			{
				dir = getDirection(myX, myY, corralX, corralY);
			}
			// senão, arrodear
			else
			{
				// TODO
			}
		}

		un.unifies(direction, new Atom(dir)); 
		return true;
	}
	
	private boolean isCowBetweenMeAndCorral(double myX, double myY,
			double cowX, double cowY, double corralX, double corralY) {
		return (Math.signum(myX - cowX) == Math.signum(cowX - corralX)) && (Math.signum(myY - cowY) == Math.signum(cowY - corralY));
	}

	private String getDirection(double vx, double vy, double vNewX, double vNewY) {
		String dir = "";
		
		if(vy < vNewY)
		{
			dir = "north";
		}
		else if(vy > vNewY)
		{
			dir = "south";
		}
		
		if(vx < vNewX)
		{
			dir += "west";
		}
		else if(vx > vNewX)
		{
			dir += "east";
		}
		return dir;
	}
}

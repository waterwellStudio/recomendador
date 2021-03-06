package es.fdi.iw.model;

import java.io.BufferedReader;
import java.io.IOException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import weka.classifiers.trees.J48;
import weka.core.Instance;
import weka.core.Instances;

/**
 * clase utilizada para gestionar la entrada y salida de datos  
 * del arbol de decision
 * @author Jose Manuel Perez Zamorano
 *
 */
public class DecisionTree {
	
	private J48 tree;
	
	public DecisionTree(){
		tree = new J48();
		tree.setUnpruned(true); 
	}
	
	/**
	 * con este constructor generas un arbol 
	 * uilizando el training dataset que le
	 * pasas por parametro
	 * @param reader
	 */
	public DecisionTree(BufferedReader reader){
		tree = new J48();
		tree.setUnpruned(true); 
		Instances in=null;
		try {
			in = new Instances(reader);
			in.setClassIndex(in.numAttributes() - 1);
			tree.buildClassifier(in);
		} catch (IOException e1) {
			e1.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

	/**
	 * funcion que devuelve la distrtibucion de probabilidades
	 * de una instancia concreta
	 * @param in
	 * @return
	 */
	public double[] getDistribution(Instance in){
		try {
			return tree.distributionForInstance(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	/**
	 * 
	 * @param in
	 * @return
	 */
	public double clasifyInsance(Instance in){
		try {
			return tree.classifyInstance(in);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	
	/**
	 * regenera el arbol completo de clasificacion
	 * @param reader
	 */
	public void regenerate(BufferedReader reader){
		Instances in;
		try {
			in = new Instances(reader);
			tree.buildClassifier(in);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
	    }
	}
	
	
	
	/**
	 * esta función genera un arbol de decisón y
	 * devuelve el arbol de decisión en forma
	 * de una clase.
	 * @param reader
	 * @param name
	 * @return el codigo de la clase
	 */
	public String tocode(BufferedReader reader , String name){
		Instances in=null;
		try {
			in = new Instances(reader);
			in.setClassIndex(in.numAttributes() - 1);
			tree.buildClassifier(in);
		} catch (IOException e1) {
			e1.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		String code = null;
		try {
			code = tree.toSource(name);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return code;
	}
	
	/**
	 * funcion que devuelve el arbol de recomendación
	 * en forma de codigo
	 * @return
	 */
	public String tocode(){
		try {
			return tree.toSource("tree");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}




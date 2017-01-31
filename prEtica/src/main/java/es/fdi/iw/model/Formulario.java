package es.fdi.iw.model;

import java.io.BufferedReader;
import java.io.IOException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import weka.core.DenseInstance;
import weka.core.Instance;
import weka.core.Instances;

/**
 * 
 * @author Jose Manuel Perez Zamorano
 *
 */
public class Formulario {
	
	private double[] resultados;
	private int numAtributos;
	
	public Formulario(double respuestas[], int numRespuestas){
		resultados = respuestas;
		numAtributos = numRespuestas;
	}
	
	
	//esta clase la terminamos cuando tengamos claro el número de atributos y sus valores
	public Instance toInstance(BufferedReader b) {
		Instances dataset = null;
		try {
			dataset = new Instances(b);
			dataset.setClassIndex(dataset.numAttributes()-1);
		} catch (IOException e) {
			e.printStackTrace();
		}
		Instance ret = new DenseInstance(numAtributos+1);
		ret.setDataset(dataset);
		for(int i = 0; i < numAtributos;i++){
			ret.setValue(i, resultados[i]);
		}
		ret.setMissing(numAtributos);
		return ret;
	}
	
	public String toARPFline(){
		String ret = "";
		ret += resultados[0];
		for(int i = 1; i < numAtributos-1;i++){
			ret += "," + resultados[i] ;
		}
		ret +=  "," + ((int) resultados[numAtributos-1]);
		return ret;
	}
	
	
	
}

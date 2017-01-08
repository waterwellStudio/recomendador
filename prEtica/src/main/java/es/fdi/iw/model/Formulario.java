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

@Entity
public class Formulario {
	@Id
	@GeneratedValue
	private long id;
	@Column
	private double[] resultados;
	
	private int numAtributos;
	
	public Formulario(double respuestas[], int numRespuestas){
		resultados = respuestas;
		numAtributos = numRespuestas;
	}
	
	
	//esta clase la terminamos cuando tengamos claro el número de atributos y sus valores
	public Instance toInstance(BufferedReader b, int missing) throws IOException{
		Instances dataset = new Instances(b);
		Instance ret = new DenseInstance(numAtributos);
		ret.setDataset(dataset);
		if(missing>=0){
			ret.setMissing(missing);
		}
		//ejemplo de funcionamiento
		//ret.setValue(indexAtributo, valor);
		//ret.setValue(0,2.3);
		return ret;
	}
	
	public String toARPFline(){
		String ret = "";
		ret += resultados[0];
		for(int i = 1; i < numAtributos;i++){
			ret += "," + resultados[i] ;
		}
		return ret;
	}
}

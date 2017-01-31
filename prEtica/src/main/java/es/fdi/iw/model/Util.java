package es.fdi.iw.model;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import es.fdi.iw.controller.HomeController;

public class Util {
	

	
	
	
	public static final int numFormularios = 5;
	public static final int numMejores = 6;
	
	/**
	 * Esta función se utiliza para escribir en el archivo de datos
	 * @param f
	 */
	public static void escribirEnFichero(Formulario f[]){
		try {
			for(int i = 0; i < numFormularios;i++){
				File file;
				FileWriter w;
				file = new File("datos.txt");
				w = new FileWriter(file,true);
				System.out.println(f[i].toARPFline());
				w.write(f[i].toARPFline() + "\r\n");
				w.close();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * esta funcion es para leer el archivo de texto que contiene la información para el recomendador
	 * archivo: datos.txt
	 * @return
	 */
	public static BufferedReader leerArchivo(){
		BufferedReader entrada = null;
		try {
			entrada =new BufferedReader(new FileReader("datos.txt"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return entrada;
	}
	
	/**
	 * Función que devuelve la lista de asignaturas recomendadas 
	 * para el ususario
	 * @param lista
	 * @return
	 */
	public static List<String> listarAsigRecomendadas(double[] lista){
		int[] mejores = mejores(lista);
		List<String> ret = new ArrayList<String>();
		for(int i = 0;i < numMejores;i++){
			ret.add(nombreAsig(mejores[i]));
		}
		return ret;
	}
	
	/**
	 * función que devuelve las asignaturas con mayor
	 * porcentaje de ser recomendadas en orden de mayor
	 * a menor
	 * @param lista
	 * @return
	 */
	private static int[] mejores(double[] lista){
		int[] ret = new int[numMejores],posiciones = new int [lista.length];
		for(int i = 0;i < lista.length;i++){
			posiciones[i]=i;
		}
		quicksort(lista,posiciones,0,lista.length-1);
		for(int i = 0; i < numMejores;i++){
			ret[i] = posiciones[lista.length-i-1];
		}
		return ret;
	}
	
	private static String nombreAsig(int asig){
		String ret = "";
		switch(asig){
		case 0:
			ret = "Sistemas inteligentes";
			break;
		case 1:
			ret = "Percepción computacional";
			break;
		case 2:
			ret = "Arquitectura interna de linux y andoid";
			break;
		case 3:
			ret = "Programación para GPUs";
			break;
		case 4:
			ret = "Programación para dispositivos moviles";
			break;
		case 5:
			ret = "Desarrollo de aplicaciones para dispositivos moviles";
			break;
		case 6:
			ret = "Escenarios cientificos y tecnologicos emergentes y la defensa";
			break;
		case 7:
			ret = "Programación con restricciones";
			break;
		case 8:
			ret = "Ingenieria web";
			break;
		case 9:
			ret = "Programación evolutiva";
			break;
		case 10:
			ret = "Aprendizaje automatico y big data";
			break;
		case 11:
			ret = "Seguridad en redes";
			break;
		case 12:
			ret = "Criptografia";
			break;
		case 13:
			ret = "Mineria de datos y el paradigma big data";
			break;
		case 14:
			ret = "Gestión de la información en la web";
			break;
		case 15:
			ret = "Interfaces de usuario";
			break;
		case 16:
			ret = "Creación de empresas";
			break;
		case 17:
			ret = "Analisis de redes sociales";
			break;
		case 18:
			ret = "Inteligencia artificial aplicada al control";
			break;
		case 19:
			ret = "Robótica";
			break;
		case 20:
			ret = "Bases de datos noSQL";
			break;
		case 21:
			ret = "Herramientas informáticas para los juegos de azar";
			break;
		case 22:
			ret = "Calculabilidad y complejidad";
			break;
		}
		return ret;
	}
	
	public static void quicksort (double lista1[],int lista2[], int izq, int der){
		int i=izq;
		int j=der;
		double pivote=lista1[(i+j)/2];
		do {
			while (lista1[i]<pivote){
				i++;
			}
			while (lista1[j]>pivote){
				j--;
			}
			if (i<=j){
				double aux=lista1[i];
				int aux2=lista2[i];
				lista1[i]=lista1[j];
				lista1[j]=aux;
				lista2[i]=lista2[j];
				lista2[j]=aux2;
				i++;
				j--;
			}
		}while(i<=j);
		if (izq<j){
			quicksort(lista1,lista2, izq, j);
		}
		if (i<der){
			quicksort(lista1,lista2, i, der);
		}
	}
	
	
	
}

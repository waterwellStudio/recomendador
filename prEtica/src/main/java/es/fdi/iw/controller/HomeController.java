package es.fdi.iw.controller;


import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import es.fdi.iw.model.DecisionTree;
import es.fdi.iw.model.Formulario;
import es.fdi.iw.model.User;
import es.fdi.iw.model.Util;
import weka.classifiers.trees.J48;
import weka.core.Instance;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {


	@PersistenceContext
	private EntityManager entityManager;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	private static final int numRespuestas = 7;
	private static final int numPreguntas = 6;
	
	/**************************** LOGIN Y REGISTRO ******************************/

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}

	
	/**
	 * Returns an anti-csrf token for a session, and stores it in the session
	 * @param session
	 * @return
	 */
	static String getTokenForSession (HttpSession session) {
		String token=UUID.randomUUID().toString();
		session.setAttribute("csrf_token", token);
		return token;
	}


	/**
	 * Checks the anti-csrf token for a session against a value
	 * @param session
	 * @param token
	 * @return the token
	 */
	static boolean isTokenValid(HttpSession session, String token) {
		Object t=session.getAttribute("csrf_token");
		return (t != null) && t.equals(token);
	}
	
	
	
	
	
	/**************************** RECOMENDADOR ******************************/
	
	
	@RequestMapping(value = "/teRecomendamos", method = RequestMethod.POST)
	@Transactional
	public String recomendador(
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) throws IOException {
		return "recomendador";
	}
	
	
	/**
	 * (SIN ACABAR)
	 * esta funcion hay que rellenarla con las respuestas del formulario
	 * que el usuario rellena para darnos su opinion
	 * @param param1
	 * @param param2
	 * @param param3
	 * @param param4
	 * @param param5
	 * @param param6
	 * @param request
	 * @param response
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/recomendador", method = RequestMethod.POST)
	@Transactional
	public String recomendador(
			@RequestParam("grado") String param1,
			@RequestParam("itirenario") String param2,
			@RequestParam("asig1") String param3,
			@RequestParam("asig12") String param4,
			@RequestParam("asig2") String param5,
			@RequestParam("asig22") String param6,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) {
			
		DecisionTree t = new DecisionTree(Util.leerArchivo());
		double respuestas[] = new double[numPreguntas];
		String[] resp = {param1,param2,param3,param4,param5,param6};
		for(int i = 0; i < numPreguntas;i++){
			respuestas[i] = Double.parseDouble(resp[i]);
		}
		Formulario form = new Formulario (respuestas,numPreguntas);
		Instance in = form.toInstance(Util.leerArchivo());
		double resultado[]=t.getDistribution(in);
		List<String> resultados = Util.listarAsigRecomendadas(resultado);
		
		if(resultados != null)
			model.addAttribute("resultado", resultados);
		for(String s:resultados)
			System.out.println(s);
		return "resultados";
	}

	@RequestMapping(value = "/recomendador", method = RequestMethod.GET)
	public String recomendador(Model model) {
		return "recomendador";
	}

	@RequestMapping(value = "/resultados", method = RequestMethod.GET)
	public String resultados(Model model) {
		return "resultados";
	}
	
	
	/**************************** DANOS TU OPINION ******************************/
	
	
	
	
	
	@RequestMapping(value = "/opina", method = RequestMethod.POST)
	@Transactional
	public String danostuopinion(
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) throws IOException {
		return "danostuopinion";
	}
	
	
	
	
	
	
	/**
	 * (SIN ACABAR)
	 * esta funcion hay que rellenarla con las respuestas del formulario
	 * que el usuario rellena para darnos su opinion
	 * @param param1
	 * @param param2
	 * @param param3
	 * @param param4
	 * @param param5
	 * @param param6
	 * @param param7
	 * @param param8
	 * @param param9
	 * @param param10
	 * @param param11
	 * @param request
	 * @param response
	 * @param model
	 * @param session
	 * @return
	 * @throws IOException 
	 */
	@RequestMapping(value = "/danostuopinion", method = RequestMethod.POST)
	@Transactional
	public String danostuopinion(
			@RequestParam("grado") String param1,
			@RequestParam("itirenario") String param2,
			@RequestParam("asig1") String param3,
			@RequestParam("asig12") String param4,
			@RequestParam("asig2") String param5,
			@RequestParam("asig22") String param6,
			@RequestParam("op1") String param7,
			@RequestParam("op2") String param8,
			@RequestParam("op3") String param9,
			@RequestParam("op4") String param10,
			@RequestParam("op5") String param11,
			HttpServletRequest request, HttpServletResponse response, 
			Model model, HttpSession session) throws IOException {
	
		double respuestas1[] = new double[numRespuestas];
		double respuestas2[] = new double[numRespuestas];
		double respuestas3[] = new double[numRespuestas];
		double respuestas4[] = new double[numRespuestas];
		double respuestas5[] = new double[numRespuestas];
		
		String[] resp1 = {param1,param2,param3,param4,param5,param6,param7};
		String[] resp2 = {param1,param2,param3,param4,param5,param6,param8};
		String[] resp3 = {param1,param2,param3,param4,param5,param6,param9};
		String[] resp4 = {param1,param2,param3,param4,param5,param6,param10};
		String[] resp5 = {param1,param2,param3,param4,param5,param6,param11};
		
		for(int i = 0; i < numRespuestas;i++){
			respuestas1[i] = Double.parseDouble(resp1[i]);
			respuestas2[i] = Double.parseDouble(resp2[i]);
			respuestas3[i] = Double.parseDouble(resp3[i]);
			respuestas4[i] = Double.parseDouble(resp4[i]);
			respuestas5[i] = Double.parseDouble(resp5[i]);
		}
		
		Formulario form1 = new Formulario (respuestas1,numRespuestas);
		Formulario form2 = new Formulario (respuestas2,numRespuestas);
		Formulario form3 = new Formulario (respuestas3,numRespuestas);
		Formulario form4 = new Formulario (respuestas4,numRespuestas);
		Formulario form5 = new Formulario (respuestas5,numRespuestas);
		
		Formulario f[] = {form1,form2,form3,form4,form5};
		Util.escribirEnFichero(f);
		
		return "home";
	}
	
	
	
	
	@RequestMapping(value = "/danostuopinion", method = RequestMethod.GET)
	public String danostuopinion(Model model) {
		return "danostuopinion";
	}
	
}

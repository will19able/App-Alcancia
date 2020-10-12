package com.BackEndAppAlcancia.rest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.BackEndAppAlcancia.dao.SaldoDAO;
import com.BackEndAppAlcancia.dao.SaldoDTO;
//import com.BackEndAppAlcancia.dao.SaldoDTO;
import com.BackEndAppAlcancia.model.Saldo;



@RestController
@RequestMapping("saldo")
@CrossOrigin(origins = "*", methods= {RequestMethod.GET,RequestMethod.POST})
public class SaldoRest {
	
	@Autowired
	private SaldoDAO saldoDao;
	
	@PostMapping("/guardarsaldo")
	public String guardar( @RequestBody Saldo saldo ) {
		saldoDao.save(saldo);
		return "Transaccion exitosa";
	}
	
	@GetMapping("/listar")
	public List<Saldo> listar(){
		return saldoDao.findAll();
	}
	
	@GetMapping("/calcularCantidaPorDenominacion")
	public List<SaldoDTO> calcularCantidaPorDenominacion(){
		return saldoDao.findGroupByDenominacion();
	}
}

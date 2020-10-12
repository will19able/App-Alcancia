package com.BackEndAppAlcancia.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.BackEndAppAlcancia.model.Saldo;

public interface SaldoDAO extends JpaRepository<Saldo, Integer> {
	@Query(value = "SELECT e.denominacion, SUM(e.cantidad) AS cantidadDeMonedas FROM saldo e GROUP BY e.denominacion ORDER BY e.denominacion ASC", nativeQuery = true)
	List<SaldoDTO>  findGroupByDenominacion();
}



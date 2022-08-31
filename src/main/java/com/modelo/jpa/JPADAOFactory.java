 package com.modelo.jpa;

import com.modelo.dao.DAOFactory;
import com.modelo.dao.MascotaDAO;
import com.modelo.dao.PreferenciaDAO;
import com.modelo.dao.PropietarioDAO;


public class JPADAOFactory extends DAOFactory {

	@Override
	public PropietarioDAO getPropietarioDAO() {
	
		return new JPAPropietarioDAO();
	}

	@Override
	public MascotaDAO getMascotaDAO() {
		
		return new JPAMascotaDAO();
	}

	@Override
	public PreferenciaDAO getPreferenciaDAO() {
		return new JPAPreferenciaDAO();
	}


}
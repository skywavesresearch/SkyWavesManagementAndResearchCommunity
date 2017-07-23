package TrimaximumSoftware.trimaximum.service;

import org.springframework.dao.DataAccessException;

import TrimaximumSoftware.trimaximum.model.Programs;

public interface ProgramsService {
	
	public boolean save(Programs programForm) throws DataAccessException;

}

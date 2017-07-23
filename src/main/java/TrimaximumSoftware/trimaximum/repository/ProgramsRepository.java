package TrimaximumSoftware.trimaximum.repository;

import org.springframework.dao.DataAccessException;

import TrimaximumSoftware.trimaximum.model.Programs;

public interface ProgramsRepository {

	public boolean save(Programs programForm) throws DataAccessException;
}

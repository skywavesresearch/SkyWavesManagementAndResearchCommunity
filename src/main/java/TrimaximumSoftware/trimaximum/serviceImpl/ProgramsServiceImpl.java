package TrimaximumSoftware.trimaximum.serviceImpl;

import org.springframework.stereotype.Service;

import TrimaximumSoftware.trimaximum.model.Programs;
import TrimaximumSoftware.trimaximum.model.Words;
import TrimaximumSoftware.trimaximum.repository.ProgramsRepository;
import TrimaximumSoftware.trimaximum.service.ProgramsService;

@Service
public class ProgramsServiceImpl implements ProgramsService {
	
	private ProgramsRepository programsRepository;
	
	public ProgramsRepository getProgramsRepository() {
		return programsRepository;
	}

	public void setProgramsRepository(ProgramsRepository programsRepository) {
		this.programsRepository = programsRepository;
	}

	@Override
	public boolean save(Programs programsForm) {
		
		return programsRepository.save(programsForm);
		
	}

}

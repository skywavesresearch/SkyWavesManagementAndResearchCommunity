package TrimaximumSoftware.trimaximum.repositoryImpl;

import java.util.Date;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.transaction.annotation.Transactional;

import TrimaximumSoftware.trimaximum.model.Programs;
import TrimaximumSoftware.trimaximum.model.Questions;
import TrimaximumSoftware.trimaximum.repository.ProgramsRepository;
import TrimaximumSoftware.trimaximum.service.ProgramsService;

public class ProgramsRepositoryImpl implements ProgramsRepository {
protected EntityManager entityManager;
	
	private static final Logger logger = LoggerFactory.getLogger(QuestionsRepositoryImpl.class);
	
    public EntityManager getEntityManager() {
        return entityManager;
    }
    @PersistenceContext
    public void setEntityManager(EntityManager entityManager) {
        this.entityManager = entityManager;
    }
	
    @Transactional
	@Override
	public boolean save(Programs programForm) throws DataAccessException {
		boolean result = false;
		if(programForm != null) {
			try {
				getEntityManager().persist(programForm);
				logger.info("Question saved successfully, Question Details="+programForm.getProgram());
				result = true;
				return result;
			}catch(Exception e) {
				logger.info("Inside Catch ="+programForm.getProgram()+"  <><> "+new Date(System.currentTimeMillis()).toString());
				result = false;
			}finally {
				logger.info("Inside Finally  ="+programForm.getProgram()+"  <><> "+new Date(System.currentTimeMillis()).toString());
			}
		}
		return result;
	}
	

}

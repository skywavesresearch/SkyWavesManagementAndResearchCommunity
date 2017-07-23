package TrimaximumSoftware.trimaximum.serviceImpl;

import org.springframework.stereotype.Service;

import TrimaximumSoftware.trimaximum.model.Words;
import TrimaximumSoftware.trimaximum.repository.WordsRepository;
import TrimaximumSoftware.trimaximum.service.WordsService;

@Service
public class WordsServiceImpl implements WordsService {

	private WordsRepository wordsRepository;
	
	public WordsRepository getWordsRepository() {
		return wordsRepository;
	}

	public void setWordsRepository(WordsRepository wordsRepository) {
		this.wordsRepository = wordsRepository;
	}
	
	@Override
	public boolean save(Words wordsForm) {
		
		return wordsRepository.save(wordsForm);
		
	}
	
}

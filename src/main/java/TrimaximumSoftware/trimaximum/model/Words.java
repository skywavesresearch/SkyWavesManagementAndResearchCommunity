package TrimaximumSoftware.trimaximum.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "words")
public class Words {

	private Long id;
    private String word;
    private String meaning1;
    private String meaning2;
    private String meaning3;
    private String sentenceUsage1;
    private String sentenceUsage2;
    private String sentenceUsage3;
    private String antonym1;
    private String antonym2;
    private String antonym3;
    private String antonym4;
    private String synonym1;
    private String synonym2;
    private String synonym3;
    private String synonym4;
        
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getWord() {
		return word;
	}
	public void setWord(String word) {
		this.word = word;
	}
	public String getMeaning1() {
		return meaning1;
	}
	public void setMeaning1(String meaning1) {
		this.meaning1 = meaning1;
	}
	public String getMeaning2() {
		return meaning2;
	}
	public void setMeaning2(String meaning2) {
		this.meaning2 = meaning2;
	}
	public String getMeaning3() {
		return meaning3;
	}
	public void setMeaning3(String meaning3) {
		this.meaning3 = meaning3;
	}
	public String getSentenceUsage1() {
		return sentenceUsage1;
	}
	public void setSentenceUsage1(String sentenceUsage1) {
		this.sentenceUsage1 = sentenceUsage1;
	}
	public String getSentenceUsage2() {
		return sentenceUsage2;
	}
	public void setSentenceUsage2(String sentenceUsage2) {
		this.sentenceUsage2 = sentenceUsage2;
	}
	public String getSentenceUsage3() {
		return sentenceUsage3;
	}
	public void setSentenceUsage3(String sentenceUsage3) {
		this.sentenceUsage3 = sentenceUsage3;
	}
	public String getAntonym1() {
		return antonym1;
	}
	public void setAntonym1(String antonym1) {
		this.antonym1 = antonym1;
	}
	public String getAntonym2() {
		return antonym2;
	}
	public void setAntonym2(String antonym2) {
		this.antonym2 = antonym2;
	}
	public String getAntonym3() {
		return antonym3;
	}
	public void setAntonym3(String antonym3) {
		this.antonym3 = antonym3;
	}
	public String getAntonym4() {
		return antonym4;
	}
	public void setAntonym4(String antonym4) {
		this.antonym4 = antonym4;
	}
	public String getSynonym1() {
		return synonym1;
	}
	public void setSynonym1(String synonym1) {
		this.synonym1 = synonym1;
	}
	public String getSynonym2() {
		return synonym2;
	}
	public void setSynonym2(String synonym2) {
		this.synonym2 = synonym2;
	}
	public String getSynonym3() {
		return synonym3;
	}
	public void setSynonym3(String synonym3) {
		this.synonym3 = synonym3;
	}
	public String getSynonym4() {
		return synonym4;
	}
	public void setSynonym4(String synonym4) {
		this.synonym4 = synonym4;
	}
	
}

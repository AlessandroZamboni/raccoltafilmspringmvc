package it.prova.raccoltafilmspringmvc.repository.regista;

import java.util.List;
import java.util.Optional;

import it.prova.raccoltafilmspringmvc.model.Regista;

public interface CustomRegistaRepository {
	List<Regista> findByExample(Regista example);
	public Optional<Regista> findOneEager(Long id);
}

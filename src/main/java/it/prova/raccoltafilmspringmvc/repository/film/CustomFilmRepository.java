package it.prova.raccoltafilmspringmvc.repository.film;

import it.prova.raccoltafilmspringmvc.model.Film;

import java.util.List;

public interface CustomFilmRepository {

    public List<Film> findByExample(Film example);

}

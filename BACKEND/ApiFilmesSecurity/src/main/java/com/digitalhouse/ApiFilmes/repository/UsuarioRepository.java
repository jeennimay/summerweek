package com.digitalhouse.ApiFilmes.repository;

import com.digitalhouse.ApiFilmes.model.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, Integer> {

    Usuario findByUserName(String username);

    //SELECT * FROM USUARIO WHERE UserName = username;
}

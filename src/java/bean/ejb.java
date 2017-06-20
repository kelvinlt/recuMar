/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entities.*;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;

/**
 *
 * @author Kelvin
 */
@Stateless
public class ejb {

    @PersistenceUnit
    EntityManagerFactory emf;

    public boolean altaUsu(Usuario u) {
        if (!existeUsu(u)) {
            EntityManager em = emf.createEntityManager();
            em.persist(u);
            em.close();
            return true;
        }
        return false;
    }

    public boolean existeUsu(Usuario u) {
        EntityManager em = emf.createEntityManager();
        Usuario usuFind = em.find(Usuario.class, u.getUsername());
        em.close();
        return usuFind != null;
    }

    public boolean login(String username, String password) {
        List<Usuario> resultado = emf.createEntityManager().createNamedQuery("Usuario.login").setParameter("username", username).setParameter("pass", password).getResultList();
        return (resultado.size() == 1);
    }

    public Usuario findUsername(String username) {
        return (Usuario) emf.createEntityManager().createNamedQuery("Usuario.findByUsername").setParameter("username", username).getSingleResult();
    }

    public List<Task> findTareaByUser(Usuario u) {
        List<Task> resultado = emf.createEntityManager().createNamedQuery("Task.findByUser").setParameter("user", u).getResultList();
        return resultado;
    }
    
    public List<Usuario> listaUsuarioRanking() {
        return emf.createEntityManager().createNamedQuery("Usuario.findAllOrderRanking").getResultList();
    }
    
    public boolean existsUsu(Usuario p) {
        EntityManager em = emf.createEntityManager();
        Usuario pokeEncontrado = em.find(Usuario.class, p.getUsername());
        em.close();
        return pokeEncontrado != null;
    }
    public boolean deleteUsu(String name) {
        Usuario p = findUsername(name);
        EntityManager em = emf.createEntityManager();
        Usuario usuEncontrado = em.find(Usuario.class, p.getUsername());
        if (existsUsu(usuEncontrado)) {
            em.remove(usuEncontrado);
            em.close();
            return true;
        }
        return false;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}

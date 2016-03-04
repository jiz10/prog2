// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.edu.um.domain;

import ar.com.edu.um.domain.Negocio;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Negocio_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Negocio.entityManager;
    
    public static final List<String> Negocio.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nya", "tags", "domicilio", "email", "telefono");
    
    public static final EntityManager Negocio.entityManager() {
        EntityManager em = new Negocio().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Negocio.countNegocios() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Negocio o", Long.class).getSingleResult();
    }
    
    public static List<Negocio> Negocio.findAllNegocios() {
        return entityManager().createQuery("SELECT o FROM Negocio o", Negocio.class).getResultList();
    }
    
    public static List<Negocio> Negocio.findAllNegocios(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Negocio o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Negocio.class).getResultList();
    }
    
    public static Negocio Negocio.findNegocio(Long id) {
        if (id == null) return null;
        return entityManager().find(Negocio.class, id);
    }
    
    public static List<Negocio> Negocio.findNegocioEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Negocio o", Negocio.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Negocio> Negocio.findNegocioEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Negocio o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Negocio.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Negocio.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Negocio.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Negocio attached = Negocio.findNegocio(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Negocio.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Negocio.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Negocio Negocio.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Negocio merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ar.com.edu.um.domain;

import ar.com.edu.um.domain.Negocio;
import ar.com.edu.um.domain.Tag;
import java.util.Set;

privileged aspect Tag_Roo_JavaBean {
    
    public String Tag.getNombre_tag() {
        return this.nombre_tag;
    }
    
    public void Tag.setNombre_tag(String nombre_tag) {
        this.nombre_tag = nombre_tag;
    }
    
    public Set<Negocio> Tag.getNegocios() {
        return this.negocios;
    }
    
    public void Tag.setNegocios(Set<Negocio> negocios) {
        this.negocios = negocios;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.util.jqgrid;

/**
 *
 * @author omesagar
 */
public class campoTabla {
    private String campo;
    private String alias;
    private boolean mostar;
    private tablaForanea foraneo;

    public campoTabla(String campo, String alias, boolean mostar, boolean ClaveForanea) {
        this.campo = campo;
        this.alias = alias;
        this.mostar = mostar;
        foraneo = ClaveForanea?new tablaForanea():null;
    }

    public String getCampo() {
        return campo;
    }

    public void setCampo(String campo) {
        this.campo = campo;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public boolean isMostar() {
        return mostar;
    }

    public void setMostar(boolean mostar) {
        this.mostar = mostar;
    }

    public tablaForanea getForaneo() {
        return foraneo;
    }

    public void setForaneo(tablaForanea foraneo) {
        this.foraneo = foraneo;
    }
    
    
}

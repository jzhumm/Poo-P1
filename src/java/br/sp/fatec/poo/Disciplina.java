/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.sp.fatec.poo;

import java.util.ArrayList;

/**
 *
 * @author Jorge Tati
 */
public class Disciplina {
    
    String nome;
    String ementa;
    int ciclo;
    int nota;

    public Disciplina(String nome, String ementa, int ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }

    private static ArrayList<Disciplina> disciplinas;
    
        public static ArrayList<Disciplina> getList(){
        if(disciplinas==null) {
            disciplinas = new ArrayList<>();
            disciplinas.add(new Disciplina("Gestão em projetos", "ementa da disciplina", 5));
            disciplinas.add(new Disciplina("Gestão em projetos", "ementa da disciplina", 5));
            disciplinas.add(new Disciplina("Gestão em projetos", "ementa da disciplina", 5));
            disciplinas.add(new Disciplina("Gestão em projetos", "ementa da disciplina", 5));
        }
        return disciplinas; 
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public int getCiclo() {
        return ciclo;
    }

    public void setCiclo(int ciclo) {
        this.ciclo = ciclo;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }
    
    
    
}

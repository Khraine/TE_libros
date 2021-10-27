package com.emergentes.modelo;
public class Libro {
    private int id;
    private String isbn;
    private String titulo;
    private String categoria;

    public Libro() {
        this.id=0;
        this.isbn="";
        this.titulo="";
        this.categoria="";
    }
    

    public int getId() {
        return id;
    }

    public String getIsbn() {
        return isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }
    @Override
    public String toString(){
        return "Libro{"+"id="+id+",isbn="+isbn+",titulo="+titulo+",categoria="+categoria +'}';
    }
    
}

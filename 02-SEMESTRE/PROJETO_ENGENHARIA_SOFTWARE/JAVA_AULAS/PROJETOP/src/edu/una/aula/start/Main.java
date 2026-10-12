package edu.una.aula.start;

import edu.una.aula.modelo.Car;
import edu.una.aula.modelo.Moto;

public class Main {
    public static void main(String[] args){
        Car nossoCarro = new Car();
        nossoCarro.setCor("Preto");
        nossoCarro.setAno(2019);

        Car nossoCarro2 = new Car();
        nossoCarro2.setCor("Prata");
        nossoCarro2.setAno(2015);

        nossoCarro.mostrarinfos();
        nossoCarro2.mostrarinfos();

        nossoCarro.acelerar();
        nossoCarro.frear();

        nossoCarro2.acelerar();

        Moto moto1 = new Moto();
        moto1.setCor("Azul");
        moto1.setAno(2012);

        moto1.mostrarinfos();
        moto1.acelerar();
        moto1.frear();
    }
}
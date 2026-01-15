/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nafil
 */

import java.sql.Timestamp;

public class Transaksi {
    private int id;
    private String namaPembeli;
    private int total;
    private Timestamp tanggal;

    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getNamaPembeli() { return namaPembeli; }
    public void setNamaPembeli(String namaPembeli) { this.namaPembeli = namaPembeli; }
    public int getTotal() { return total; }
    public void setTotal(int total) { this.total = total; }
    public Timestamp getTanggal() { return tanggal; }
    public void setTanggal(Timestamp tanggal) { this.tanggal = tanggal; }
}


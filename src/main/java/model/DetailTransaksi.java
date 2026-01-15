/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author nafil
 */

public class DetailTransaksi {
    private int id;
    private int transaksiId;
    private int bukuId;
    private int jumlah;
    private int harga;

    // Getter & Setter
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public int getTransaksiId() { return transaksiId; }
    public void setTransaksiId(int transaksiId) { this.transaksiId = transaksiId; }

    public int getBukuId() { return bukuId; }
    public void setBukuId(int bukuId) { this.bukuId = bukuId; }

    public int getJumlah() { return jumlah; }
    public void setJumlah(int jumlah) { this.jumlah = jumlah; }

    public int getHarga() { return harga; }
    public void setHarga(int harga) { this.harga = harga; }
}

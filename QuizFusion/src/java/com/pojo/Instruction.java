/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.pojo;

/**
 *
 * @author pradeep
 */
public class Instruction {
    private String instruct;
    private int srno;
    
    public Instruction() {}
    
    public void setInstruct(String instruct) {
        this.instruct = instruct;
    }
    
    public String getInstruct() {
        return instruct;
    }
    public void setSrno(int srno) {
        this.srno = srno;
    }

    public int getSrno() {
        return srno;
    }
}

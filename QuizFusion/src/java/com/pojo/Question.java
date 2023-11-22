
package com.pojo;

public class Question {
    private int id;

    public void setId(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }
    private String question,opta,optb,optc,optd,correctans;

    public void setQuestion(String question) {
        this.question = question;
    }

    public void setOpta(String opta) {
        this.opta = opta;
    }

    public void setOptb(String optb) {
        this.optb = optb;
    }

    public void setOptc(String optc) {
        this.optc = optc;
    }

    public void setOptd(String optd) {
        this.optd = optd;
    }

    public void setCorrectans(String correctans) {
        this.correctans = correctans;
    }

    public String getQuestion() {
        return question;
    }

    public String getOpta() {
        return opta;
    }

    public String getOptb() {
        return optb;
    }

    public String getOptc() {
        return optc;
    }

    public String getOptd() {
        return optd;
    }

    public String getCorrectans() {
        return correctans;
    }
}

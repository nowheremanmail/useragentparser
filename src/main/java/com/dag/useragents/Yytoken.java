package com.dag.useragents;

import java_cup.runtime.Symbol;

import java.util.Objects;

/**
 * The tokens returned by the scanner.
 */
public class Yytoken {
    public int position;
    public String value;

    static public Yytoken join(Yytoken a, Yytoken b) {
        if (a == null) return b;
        if (b == null) return a;
        if (a.value.length() == 0) return new Yytoken(b.value, Math.min(a.position, b.position));
        if (b.value.length() == 0) return new Yytoken(a.value, Math.min(a.position, b.position));
        return new Yytoken(a.value + " " + b.value, Math.min(a.position, b.position));
    }

    public Yytoken change(String a) {
        return new Yytoken(a, this.position);
    }

    public Yytoken(String value, int position) {
        this.position = position;
        this.value = value;
    }

    public int getPosition() {
        return position;
    }

    public void setPosition(int position) {
        this.position = position;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public Yytoken sure () {
        position = Integer.MAX_VALUE;
        return this;
    }

    public Yytoken notsure () {
        position = Integer.MIN_VALUE;
        return this;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Yytoken yytoken = (Yytoken) o;
        if (value == null && yytoken.value == null) return true;
        if (value == null || yytoken.value == null) return false;
        return value.equalsIgnoreCase(yytoken.value);
    }

    @Override
    public String toString() {
        return value + " (" + position + ")";
    }

    @Override
    public int hashCode() {

        return Objects.hash(value);
    }
}


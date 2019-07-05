package com.dag.useragents;

import java.util.Objects;

public class DeviceSummary {
    private Yytoken type, vendor, model, os, versionHw, versionOs;

    public DeviceSummary() {

    }

    public DeviceSummary(String type, String vendor, String model, String os, String versionHw, String versionOs) {
        this.type = type == null ? null : new Yytoken(type, 0);
        this.vendor = vendor == null ? null : new Yytoken(vendor, 0);
        this.model = model == null ? null : new Yytoken(model, 0);
        this.os = os == null ? null : new Yytoken(os, 0);
        this.versionHw = versionHw == null ? null : new Yytoken(versionHw, 0);
        this.versionOs = versionOs == null ? null : new Yytoken(versionOs, 0);
    }

    public static DeviceSummary fromType(Yytoken a) {
        return new DeviceSummary().setType(a);
    }

    public static DeviceSummary fromVendor(Yytoken a) {
        return new DeviceSummary().setVendor(a);
    }

    public static DeviceSummary fromModel(Yytoken a) {
        return new DeviceSummary().setModel(a);
    }

    public static DeviceSummary fromVersionHw(Yytoken a) {
        return new DeviceSummary().setVersionHw(a);
    }

    public static DeviceSummary fromVersionOs(Yytoken a) {
        return new DeviceSummary().setVersionOs(a);
    }

    public static DeviceSummary fromOs(Yytoken a) {
        return new DeviceSummary().setOs(a);
    }


    public Yytoken getType() {
        return type;
    }

    public DeviceSummary setType(Yytoken values) {
        if (this.type == null || (values != null && values.position > this.type.position))
            this.type = values;
        return this;
    }

    public Yytoken getVendor() {
        return vendor;
    }

    public DeviceSummary setVendor(Yytoken values) {
        if (this.vendor == null || (values != null && values.position > this.type.position))
            this.vendor = values;
        return this;
    }

    public Yytoken getModel() {
        return model;
    }

    public DeviceSummary setModel(Yytoken values) {
        if (this.model == null || (values != null && values.position > this.type.position))
            this.model = values;
        return this;
    }

    public Yytoken getVersionHw() {
        return versionHw;
    }

    public DeviceSummary setVersionHw(Yytoken values) {
        if (this.versionHw == null || (values != null && values.position > this.type.position))
            this.versionHw = values;
        return this;
    }

    public Yytoken getVersionOs() {
        return versionOs;
    }

    public DeviceSummary setVersionOs(Yytoken values) {
        if (this.versionOs == null || (values != null && values.position > this.type.position))
            this.versionOs = values;
        return this;
    }

    public Yytoken getOs() {
        return os;
    }

    public DeviceSummary setOs(Yytoken values) {
        if (this.os == null || (values != null && values.position > this.type.position))
            this.os = values;
        return this;
    }

    public DeviceSummary apply(DeviceSummary values) {
        if (values == null) return this;

        if (this.type == null || (values.type != null && values.type.position > this.type.position))
            this.type = values.type;
        if (this.vendor == null || (values.vendor != null && values.vendor.position > this.vendor.position))
            this.vendor = values.vendor;
        if (this.model == null || (values.model != null && values.model.position > this.model.position))
            this.model = values.model;
        if (this.os == null || (values.os != null && values.os.position > this.os.position)) this.os = values.os;
        if (this.versionHw == null || (values.versionHw != null && values.versionHw.position > this.versionHw.position))
            this.versionHw = values.versionHw;
        if (this.versionOs == null || (values.versionOs != null && values.versionOs.position > this.versionOs.position))
            this.versionOs = values.versionOs;

        return this;
    }

    @Override
    public int hashCode() {
        return Objects.hash(type, vendor, model, os, versionHw, versionOs);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DeviceSummary that = (DeviceSummary) o;
        return Objects.equals(type, that.type) &&
                Objects.equals(vendor, that.vendor) &&
                Objects.equals(model, that.model) &&
                Objects.equals(os, that.os) &&
                Objects.equals(versionHw, that.versionHw) &&
                Objects.equals(versionOs, that.versionOs);
    }

    @Override
    public String toString() {
        return "DeviceSummary{" +
                "type='" + type + '\'' +
                ", vendor='" + vendor + '\'' +
                ", model='" + model + '\'' +
                ", versionHw='" + versionHw + '\'' +
                ", Os='" + os + '\'' +
                ", versionOs='" + versionOs + '\'' +
                '}';
    }
}

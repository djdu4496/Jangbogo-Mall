package com.jangbogo.mall.domain;

import org.springframework.stereotype.Repository;

import java.util.Date;

@Repository
public class CartDto {
    Integer prod_idx;
    Integer user_idx;
    String prod_name;
    Integer prod_price;
    Integer prod_cnt;
    String prod_rpath;
    Date reg_tm;
    Date crt_tm;
    Date upt_tm;

    public CartDto() {}

    public CartDto(Integer prod_idx, Integer user_idx, String prod_name, Integer prod_price, Integer prod_cnt, String prod_rpath) {
        this.prod_idx = prod_idx;
        this.user_idx = user_idx;
        this.prod_name = prod_name;
        this.prod_price = prod_price;
        this.prod_cnt = prod_cnt;
        this.prod_rpath = prod_rpath;
    }

    public Integer getProd_idx() {
        return prod_idx;
    }

    public void setProd_idx(Integer prod_idx) {
        this.prod_idx = prod_idx;
    }

    public Integer getUser_idx() {
        return user_idx;
    }

    public void setUser_idx(Integer user_idx) {
        this.user_idx = user_idx;
    }

    public String getProd_name() {
        return prod_name;
    }

    public void setProd_name(String prod_name) {
        this.prod_name = prod_name;
    }

    public Integer getProd_price() {
        return prod_price;
    }

    public void setProd_price(Integer prod_price) {
        this.prod_price = prod_price;
    }

    public Integer getProd_cnt() {
        return prod_cnt;
    }

    public void setProd_cnt(Integer prod_cnt) {
        this.prod_cnt = prod_cnt;
    }

    public String getProd_rpath() {
        return prod_rpath;
    }

    public void setProd_rpath(String prod_rpath) {
        this.prod_rpath = prod_rpath;
    }

    public Date getReg_tm() {
        return reg_tm;
    }

    public void setReg_tm(Date reg_tm) {
        this.reg_tm = reg_tm;
    }

    public Date getCrt_tm() {
        return crt_tm;
    }

    public void setCrt_tm(Date crt_tm) {
        this.crt_tm = crt_tm;
    }

    public Date getUpt_tm() {
        return upt_tm;
    }

    public void setUpt_tm(Date upt_tm) {
        this.upt_tm = upt_tm;
    }

    @Override
    public String toString() {
        return "CartDto{" +
                "prod_idx=" + prod_idx +
                ", user_idx=" + user_idx +
                ", prod_name='" + prod_name + '\'' +
                ", prod_price=" + prod_price +
                ", prod_cnt=" + prod_cnt +
                ", prod_rpath='" + prod_rpath + '\'' +
                ", reg_tm=" + reg_tm +
                ", crt_tm=" + crt_tm +
                ", upt_tm=" + upt_tm +
                '}';
    }
}

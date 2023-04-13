package com.jangbogo.mall.dao;

import com.jangbogo.mall.domain.ProductDto;
import com.jangbogo.mall.domain.WishlistDto;

import java.util.List;
import java.util.Map;

public interface WishlistDao {
    List<ProductDto> getlist(int idx) throws Exception;

    int delete(Integer prod_idx, Integer user_idx) throws Exception;

    int insertCart(Integer prod_idx, Integer user_idx, Integer prod_cnt) throws Exception;

    int updateCartCnt(Integer prod_idx, Integer user_idx, Integer cnt) throws Exception;

    int checkCart(Integer prod_idx, Integer user_idx) throws Exception;

    int getUser(String email) throws Exception;

    List<ProductDto> getProduct(Integer[] prodArr) throws Exception;
}

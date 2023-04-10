package com.jangbogo.mall;


import com.jangbogo.mall.domain.Address;
import com.jangbogo.mall.service.AddressService;
import lombok.extern.slf4j.Slf4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.assertTrue;

@Slf4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class AddressServiceTest {

    @Autowired
    AddressService service;

    @Test //OK
    public void insertAddr () throws Exception {

        Address addr = Address.builder()
                .user_idx(25) //실제 존재 번호
                .zpcd("3")
                .addr_base("3")
                .addr_dtl("detail 3")
                .rcpr_nm("3 22")
                .rcpr_mobl_no("3")
                .is_default_yn("Y")
                .build();

        int addrResult = service.insertAddr(addr);

        log.info("result=" + addrResult);
        assertTrue(addrResult != 0);
    }

    @Test
    public void selAddrList () throws Exception { //OK
        List<Address> list = service.selAddrList(25);
        log.info("list.... " + list);
        assertTrue(list != null);
    }

}

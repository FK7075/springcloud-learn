package com.learn.springcloud.controller;

import com.learn.springcloud.entities.CommonResult;
import com.learn.springcloud.entities.Payment;
import com.learn.springcloud.service.PaymentService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@Slf4j
public class PaymentController {

    @Resource
    private PaymentService paymentService;

    @GetMapping("payment/get/{id}")
    public CommonResult<Payment> getPaymentById(@PathVariable("id") Long id){
        Payment payment = paymentService.getPaymentById(id);
        if(payment!=null)
            return new CommonResult(200,"查询成功",payment);
        return new CommonResult(444,"没有对应的记录，查询ID:"+id);
    }

    @PostMapping("payment/create")
    public CommonResult create(@RequestBody Payment payment){
        int result=paymentService.create(payment);
        log.info("插入结果："+result);
        if(result>0)
            return new CommonResult(200,"数据插入成功",result);
        return new CommonResult(500,"数据插入失败");
    }
}

package com.JameShop.service;

import com.JameShop.entity.OrderDetail;
import com.JameShop.entity.Product;
import com.JameShop.repository.OrderDetailRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderDetailService {
    @Autowired
    private OrderDetailRepository orderDetailRepository;

    public List<OrderDetail> findAll(){
        return orderDetailRepository.findAll();
    }

    public OrderDetail save(OrderDetail orderDetail) {
        return orderDetailRepository.save(orderDetail);
    }

    public OrderDetail findById(int id) {
        Optional<OrderDetail> orderDetail = orderDetailRepository.findById(id);
        return orderDetail.orElse(null);
    }

    public void deleteById(int id) {
        orderDetailRepository.deleteById(id);
    }

    public List<OrderDetail> findByTex(String tex) {
        return orderDetailRepository.findByTex(tex);
    }

//    private int id;
//    private String tex;
//    private int productId;
//    private String productName;
//    private Double productPrice;
//    private int quantity;

    public void insrtList(List<Product> orderDetails , String tex) {
        for (Product product : orderDetails) {
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setTex(tex);
            orderDetail.setProductId(product.getId());
            orderDetail.setProductName(product.getName());
            orderDetail.setProductPrice(product.getPrice());
            orderDetail.setQuantity(product.getQuantity());
            orderDetailRepository.save(orderDetail);

        }
    }
}

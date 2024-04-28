package com.JameShop.controller;

import com.JameShop.entity.Order;
import com.JameShop.entity.Product;
import com.JameShop.service.CartService;
import com.JameShop.service.OrderDetailService;
import com.JameShop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;


@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderDetailService orderDetailService;

    private final CartService cartService;

    public OrderController(CartService cartService) {
        this.cartService = cartService;
    }

    @PostMapping("/checkout")
    public String checkout(
                            @RequestParam("name") String name,
                            @RequestParam("quantity") Integer quantity,
                            @RequestParam("price") Double price,
                            @RequestParam("total") Double total, Model model) {

        if ( name == null || quantity == null || price == null || total == null ) {
            return "redirect:/";
        }

        long micrometer = java.time.Instant.now().toEpochMilli();
        int numInvoice = (int) micrometer;

        // insert data to order_list table
        Order order = new Order();
        order.setTex(String.valueOf(numInvoice));
        order.setTotalPrice(price);
        order.setTotalPrice(total);
        orderService.save(order);


        // insert loop data to table order_detail
        List<Product> item = cartService.getProductList();
        orderDetailService.insrtList(item, String.valueOf(numInvoice));
        cartService.cearItem();

        Long count = cartService.countCart();
        model.addAttribute("count", count);

        return "redirect:/report";
    }
}

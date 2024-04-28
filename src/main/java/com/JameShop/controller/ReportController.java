package com.JameShop.controller;

import com.JameShop.entity.Order;
import com.JameShop.entity.OrderDetail;
import com.JameShop.service.CartService;
import com.JameShop.service.OrderDetailService;
import com.JameShop.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/report")
public class ReportController {

    @Autowired
    private OrderService orderService;

    @Autowired
    private OrderDetailService orderDetailService;

    @Autowired
    private CartService cartService;

   @GetMapping
    public String report(Model model) {
       model.addAttribute("titel", "JAME SHOPPING | REPORT");
       List<Order> orders = orderService.findAll();
       model.addAttribute("orders", orders);
       Long count = cartService.countCart();
       model.addAttribute("count", count);
       return "report";
   }

    @PostMapping("/bill")
    public String bill(@RequestParam("id") int id , @RequestParam("tex") String tex , Model model) {
        model.addAttribute("titel", "JAME SHOPPING | BILL");

        System.out.println("หมายเลข tex :" + tex);
        System.out.println(id);

        Order order = orderService.findById(id);
        model.addAttribute("order", order);

        List<OrderDetail> orderDetails = orderDetailService.findByTex(tex);
        model.addAttribute("orderDetails", orderDetails);

        System.out.println(order);


       return "/bill";
    }
}

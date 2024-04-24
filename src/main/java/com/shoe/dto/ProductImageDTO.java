package com.shoe.dto;

import com.shoe.entities.Product;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProductImageDTO {
    private int id;
    private Product product;
    private String imageUrl;
}

package dev.yhp.study.mb;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "dev.yhp.study.mb.mappers")
public class MbApplication {
    public static void main(String[] args) {
        SpringApplication.run(MbApplication.class, args);
    }
}
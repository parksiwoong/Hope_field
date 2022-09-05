package dev.yhp.study.mb.model;

import lombok.Data;
import org.apache.ibatis.type.Alias;

@Data
@Alias("UserVo")
public class UserVo {
    private String name;
    private int age;
    private String nameTest;

}

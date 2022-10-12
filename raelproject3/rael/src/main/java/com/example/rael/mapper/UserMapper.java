package com.example.rael.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.rael.dto.UserDTO;

@Mapper
public interface UserMapper {
	UserDTO getUserInfo(String userid);
}

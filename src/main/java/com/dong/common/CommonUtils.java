package com.dong.common;

import java.util.UUID;

/**
 * @author LD
 * 公共工具类
 */
public class CommonUtils {

	/**
	 * 获取32位无字母与数字组合的uuid
	 * @return
	 */
	public static String getUUID(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("-", "");
	}
}

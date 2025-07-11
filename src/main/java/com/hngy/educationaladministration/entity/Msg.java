package com.hngy.educationaladministration.entity;

import java.util.HashMap;
import java.util.Map;

/**
 * 通用的返回的类
 * 
 * @author
 * 
 */
public class Msg {
	//状态码   100-成功    200-失败    300-错误
	private int code;
	//提示信息
	private String msg;
	
	//用户要返回给浏览器的数据
	private Map<String, Object> extend = new HashMap<String, Object>();

	public static Msg success(){
		Msg result = new Msg();
		result.setCode(100);
		result.setMsg("处理成功！");
		return result;
	}
	
	public static Msg fail(){
		Msg result = new Msg();
		result.setCode(200);
		result.setMsg("处理失败！");
		return result;
	}

	public static Msg error(){
		Msg result = new Msg();
		result.setCode(300);
		result.setMsg("处理错误！");
		return result;
	}

	public static Msg error(String str){
		Msg result = new Msg();
		result.setCode(300);
		result.setMsg(str);
		return result;
	}
	
	public Msg add(String key,Object value){
		this.getExtend().put(key, value);
		return this;
	}

	public static Msg sqlChange(int i){
		if(i==0)
			return Msg.fail();
		if(i>0)
			return Msg.success();
		return Msg.error();
	}
	
	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Map<String, Object> getExtend() {
		return extend;
	}

	public void setExtend(Map<String, Object> extend) {
		this.extend = extend;
	}
	
	
}

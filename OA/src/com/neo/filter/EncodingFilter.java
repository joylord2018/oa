package com.neo.filter;

import java.io.IOException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class EncodingFilter implements Filter{
private String encoding="utf-8";
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	public void doFilter(ServletRequest arg0, ServletResponse arg1,
			FilterChain arg2) throws IOException, ServletException {
		// TODO Auto-generated method stub
	/*	HttpServletRequest request=(HttpServletRequest) arg0;
		String method=request.getMethod();
		System.out.println(method);
		if(method.equals("GET")){
			Map map=request.getParameterMap();
			System.out.println(map);
			if(map!=null&&map.size()>0){
				System.out.println(map.size());
			}
		}*/
		arg2.doFilter(arg0, arg1);
		
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
	}

}

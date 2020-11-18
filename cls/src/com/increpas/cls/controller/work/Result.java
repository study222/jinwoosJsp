package com.increpas.cls.controller.work;

import java.util.*;

import javax.servlet.http.*;

import com.increpas.cls.controller.*;
import com.increpas.cls.dao.*;
import com.increpas.cls.vo.*;

public class Result implements ClsMain {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "work/Result";
		String name = req.getParameter("name");
		
		MemberDAO mDao = new MemberDAO();
		int cnt = mDao.work(name);
		
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		list = mDao.getName(name);
		
		req.setAttribute("CNT", cnt);
		req.setAttribute("NAME", name);
		req.setAttribute("LIST", list);
		
		return view;
	}

}

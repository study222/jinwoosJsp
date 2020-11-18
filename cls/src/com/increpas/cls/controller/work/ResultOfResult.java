package com.increpas.cls.controller.work;

import javax.servlet.http.*;

import com.increpas.cls.controller.*;
import com.increpas.cls.dao.*;
import com.increpas.cls.vo.*;

public class ResultOfResult implements ClsMain {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "work/ResultOfResult";
		
		String no = req.getParameter("mno");
		int mno = Integer.parseInt(no);
		MemberDAO mDao = new MemberDAO();
		MemberVO mVO = mDao.lastWork(mno);
		
		req.setAttribute("DATA", mVO);
		req.setAttribute("MNO", mno);
		return view;
	}

}

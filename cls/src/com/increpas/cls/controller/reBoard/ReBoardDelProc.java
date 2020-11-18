package com.increpas.cls.controller.reBoard;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.increpas.cls.controller.ClsMain;
import com.increpas.cls.dao.ReBoardDao;

public class ReBoardDelProc implements ClsMain {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		
		String tno = req.getParameter("bno");
		String body = req.getParameter("body");
		String nowPage = req.getParameter("nowPage");
		int bno = Integer.parseInt(tno);
		
			ReBoardDao rDao = new ReBoardDao();
			int cnt = rDao.delReBoard(bno);
		/*
		String view = "/cls/reBoard/reBoardList.cls?nowPage=" + nowPage;
		req.setAttribute("isRedirect", true);
		*/
			
		String view = "reBoard/RedirectView";
		return view;
	}

}

package com.increpas.cls.controller.work;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.*;

import com.increpas.cls.controller.*;
import com.increpas.cls.dao.*;
import com.increpas.cls.vo.*;

public class Ajax implements ClsMain {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		req.setAttribute("isRedirect", null);
		String no = req.getParameter("no");
		int mno = Integer.parseInt(no);
		
		StringBuffer buff = new StringBuffer();
		MemberDAO mDao = new MemberDAO();
		MemberVO mVO = mDao.lastWork(mno);
		
		try {
			resp.setCharacterEncoding("UTF-8");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		buff.append("{ ");
		buff.append(" \"mno\": \"" + mVO.getMno() + "\", ");
		buff.append(" \"name\": \"" + mVO.getName() + "\", ");
		buff.append(" \"id\": \"" + mVO.getId() + "\", ");
		buff.append(" \"mail\": \"" + mVO.getMail() + "\", ");
		buff.append(" \"avatar\": \"" + mVO.getAvatar() + "\", ");
		buff.append(" \"gen\": \"" + mVO.getGen() + "\", ");
		buff.append(" \"sdate\": \"" + mVO.getSdate() + "\" ");
		buff.append("} ");
		return buff.toString();
	}

}

package com.increpas.cls.controller.board;

import java.util.*;

import javax.servlet.http.*;

import com.increpas.cls.controller.*;
import com.increpas.cls.dao.*;
import com.increpas.cls.vo.*;

public class BoardDetail implements ClsMain {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) {
		String view = "board/BoardDetail";
		BoardDao bDao = new BoardDao();
		String list = bDao.showBody();
		req.setAttribute("LIST", list);
		
		return view;
	}

}

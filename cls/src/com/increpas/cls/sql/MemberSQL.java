package com.increpas.cls.sql;

public class MemberSQL {
	public final int SEL_LOGIN_CNT = 1001;
	public final int SEL_ID_CNT = 1002;
	public final int SEL_AVT_ALL = 1003;
	public final int SEL_ID_INFO = 1004;
	public final int SEL_NAME_SRC = 1005;
	public final int SEL_NAME_LIST = 1006;
	public final int SEL_WORK_INFO = 1007;
	
	public final int EDIT_MEMB = 2001;
	public final int DEL_MEMB = 2002;
	
	public final int ADD_MEMB = 3001;
	
	public String getSQL(int code) {
		StringBuffer buff = new StringBuffer();
		
		switch(code) {
		case SEL_LOGIN_CNT:
			buff.append("SELECT ");
			buff.append("	count(*) cnt ");
			buff.append("FROM ");
			buff.append(" member ");
			buff.append("WHERE ");
			buff.append("	id = ? ");
			buff.append("	AND pw = ? ");
			buff.append("	AND isshow = 'Y' ");
			break;
		case SEL_ID_CNT:
			buff.append("SELECT ");
			buff.append("	count(*) cnt ");
			buff.append("FROM ");
			buff.append("	member ");
			buff.append("WHERE ");
			buff.append("	id = ? ");
			break;
		case SEL_ID_INFO:
			buff.append("SELECT ");
			buff.append("	mno, name, id, mail, m.gen, avt, joindate, afile sname ");
			buff.append("FROM ");
			buff.append("	member m, avatar a ");
			buff.append("WHERE ");
			buff.append("	avt = ano ");
			buff.append("	AND isshow = 'Y' ");
			buff.append("	AND id = ? ");
			break;
		case SEL_AVT_ALL:
			buff.append("SELECT ");
			buff.append("	ano, afile AS sname, gen ");
			buff.append("FROM ");
			buff.append("	avatar ");
			break;
		case SEL_NAME_SRC:
			buff.append("SELECT ");
			buff.append("    COUNT(*) cnt ");
			buff.append("FROM ");
			buff.append("    member ");
			buff.append("WHERE ");
			buff.append("    name LIKE SUBSTR(?, 1, 1) || '%' ");
			buff.append("    AND isshow = 'Y' ");
			break;
		case SEL_NAME_LIST:
			buff.append("SELECT ");
			buff.append("    name, mno ");
			buff.append("FROM ");
			buff.append("    member ");
			buff.append("WHERE ");
			buff.append("    name LIKE SUBSTR(?, 1, 1) || '%' ");
			buff.append("    AND isshow = 'Y' ");
			break;
		case SEL_WORK_INFO:
			buff.append("SELECT ");
			buff.append("    avt, name, id, mail, m.gen, joindate, afile ");
			buff.append("FROM ");
			buff.append("    member m, avatar a ");
			buff.append("WHERE ");
			buff.append("    mno = ? ");
			buff.append("    AND avt = ano ");
			buff.append("    AND isshow = 'Y' ");
			break;
		case EDIT_MEMB:
			buff.append("UPDATE ");
			buff.append("	member ");
			buff.append("SET ");
			buff.append("	mail = ?, ");
			buff.append("	avt = ? ");
			buff.append("WHERE ");
			buff.append("	id = ? ");
			break;
		case ADD_MEMB:
			buff.append("INSERT INTO ");
			buff.append("	member(mno, id, pw, name, mail, gen, avt) ");
			buff.append("VALUES( ");
			buff.append("	( ");
			buff.append("		SELECT NVL(MAX(mno) + 1, 1001) FROM member ");
			buff.append("	), ");
			buff.append("	?, ?, ?, ?, ?, ? ");
			buff.append(") ");
			break;
		case DEL_MEMB:
			buff.append("UPDATE ");
			buff.append("	member ");
			buff.append("SET ");
			buff.append("	isshow = 'N' ");
			buff.append("WHERE ");
			buff.append("	mno = ? ");
			buff.append("	AND PW = ? ");
			break;
		}
		
		return buff.toString();
	}
}

package com.pouchen.roy;

import java.util.Calendar;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

import org.mariadb.jdbc.internal.com.send.parameters.StringParameter;

public class MyTagHandler extends TagSupport {
	public int doStartTag() {
		JspWriter out = pageContext.getOut();
		try {
			out.print(Calendar.getInstance().getTime());
		}catch (Exception e) {
			System.out.println(e);
		}
		return SKIP_BODY;
		
	}
}



package com.chinahealth.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.chinahealth.bean.ServerParam;
import com.chinahealth.dao.ArticleItemDao;

/**
 * Servlet implementation class ArticleItemServlet
 */
@WebServlet("/articleitems")
public class ArticleItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final int ONCE_LOAD_NUM = 10;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ArticleItemServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String dataStatus = request.getParameter(ServerParam.DATA_STATUS);
		String onceLoadNumParm = request.getParameter(ServerParam.ONCE_LOAD_NUM);
		int onceLoadNum = ONCE_LOAD_NUM;
		if(onceLoadNumParm != null)
			onceLoadNum = Integer.valueOf(onceLoadNumParm);
		String requestJson = request.getParameter(ServerParam.REQUEST_JSON);
		
		String articleItemsJson = new ArticleItemDao().getAritileItems(requestJson, dataStatus, onceLoadNum);
		
		response.setContentType("application/json;charset=UTF-8");  
		response.getWriter().write(articleItemsJson);
		response.getWriter().flush();
		response.getWriter().close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

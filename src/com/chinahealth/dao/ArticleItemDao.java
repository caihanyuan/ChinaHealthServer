package com.chinahealth.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.chinahealth.bean.ArticleItemTable;
import com.chinahealth.bean.ServerParam;
import com.chinahealth.util.DatabaseManager;

import net.sf.json.JSONArray;
import net.sf.json.JSONException;
import net.sf.json.JSONObject;

public class ArticleItemDao {
	private int onceLoadCount = 8;

	/**
	 * get article items' data base on request json
	 * 
	 * @param requestJson
	 *            type: {"groudType":0, "articleId":"xxxxx",
	 *            "publishTime":321321421}
	 * @return
	 */
	public String getAritileItems(String requestJson, String dataStatus) {
		String resultJson = "";
		String selectSQL = createSelectSQL(requestJson, dataStatus);
		Connection con = DatabaseManager.getInstance().getConnection();
		Statement statement = null;
		ResultSet rs = null;
		JSONArray itemsJsonArr = new JSONArray();
		try {
			statement = con.createStatement();
			rs = statement.executeQuery(selectSQL);
			while (rs.next()) {
				String uid = rs.getString(1);
				int groudType = rs.getInt(2);
				int itemType = rs.getInt(3);
				String title = rs.getString(4);
				String source = rs.getString(5);
				int commentNums = rs.getInt(6);
				long publishTime = rs.getLong(7);
				String thumbnailUrls = rs.getString(8);

				JSONObject itemJsonObj = new JSONObject();
				itemJsonObj.put(ArticleItemTable.UID, uid);
				itemJsonObj.put(ArticleItemTable.GROUP_TYPE, groudType);
				itemJsonObj.put(ArticleItemTable.TYPE, itemType);
				itemJsonObj.put(ArticleItemTable.TITLE, title);
				itemJsonObj.put(ArticleItemTable.SOURCE, source);
				itemJsonObj.put(ArticleItemTable.COMMENT_NUMS, commentNums);
				itemJsonObj.put(ArticleItemTable.PUBLISH_TIME, publishTime);
				itemJsonObj.put(ArticleItemTable.THUMBNAIL_URIS, thumbnailUrls);
				itemsJsonArr.add(itemJsonObj);
			}
			resultJson = itemsJsonArr.toString();
			System.out.println(resultJson);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (statement != null)
					statement.close();

			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return resultJson;
	}

	private String createSelectSQL(String requestJson, String dataStatus) {
		int offset = 0;
		String selectSQL = "";
		String whereCondition = "";

		int groupType = 0;
		String articleUid = null;
		Long publishTime = null;
		try {
			JSONObject jsonObject = JSONObject.fromObject(requestJson);
			groupType = jsonObject.getInt(ArticleItemTable.GROUP_TYPE);
			if (jsonObject.has(ArticleItemTable.UID))
				articleUid = jsonObject.getString(ArticleItemTable.UID);
			if (jsonObject.has(ArticleItemTable.PUBLISH_TIME))
				publishTime = jsonObject.getLong(ArticleItemTable.PUBLISH_TIME);
		} catch (JSONException jsonException) {
			jsonException.printStackTrace();
		}

		if (articleUid != null) {
			if (dataStatus.equals(ServerParam.VALUES.DATA_STATUS_NEWER)) {
				whereCondition = ArticleItemTable.PUBLISH_TIME + ">=" + publishTime + " AND " + ArticleItemTable.UID
						+ "<>'" + articleUid + "' ";
			} else {
				whereCondition = ArticleItemTable.PUBLISH_TIME + "<=" + publishTime + " AND " + ArticleItemTable.UID
						+ "<>'" + articleUid + "' ";
			}
		}
		if (groupType == 0) {
			whereCondition = whereCondition == "" ? whereCondition : ("WHERE " + whereCondition);
			selectSQL = "SELECT * FROM " + ArticleItemTable.TABLE_NAME + " " + whereCondition + "ORDER BY "
					+ ArticleItemTable.PUBLISH_TIME + " DESC " + "LIMIT " + onceLoadCount + " OFFSET " + offset;
		} else {
			whereCondition = whereCondition == "" ? ("WHERE " + ArticleItemTable.GROUP_TYPE + "=" + groupType + " ")
					: ("WHERE " + ArticleItemTable.GROUP_TYPE + "=" + groupType + " AND " + whereCondition);
			selectSQL = "SELECT * FROM " + ArticleItemTable.TABLE_NAME + " " + whereCondition + "ORDER BY "
					+ ArticleItemTable.PUBLISH_TIME + " DESC " + "LIMIT " + onceLoadCount + " OFFSET " + offset;
		}
		return selectSQL;
	}
}

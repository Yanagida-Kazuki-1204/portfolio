package com.internousdev.music.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.music.util.DBConnector;

public class ReviewCompleteDAO {
	private DBConnector dbConnector = new DBConnector();

	private Connection connection = dbConnector.getConnection();

	private String sql = "INSERT INTO review_info(title, star, comments) VALUES(?,?,?)";

    public void review(String title, String star, String comments) throws SQLException{
		try{
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, title);
			preparedStatement.setString(2, star);
			preparedStatement.setString(3, comments);

			preparedStatement.execute();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			connection.close();
		}
	}

}

package com.internousdev.music.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import com.internousdev.music.dto.HomeDTO;
import com.internousdev.music.util.DBConnector;

public class HomeDAO {
	public List<HomeDTO> getHomeList(){
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		List<HomeDTO> homeDtoList = new ArrayList<HomeDTO>();
		String sql = "select * from review_info";
		try {
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			ResultSet resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				HomeDTO homeDTO = new HomeDTO();
				homeDTO.setTitle(resultSet.getString("title"));
				homeDTO.setStar(resultSet.getInt("star"));
				homeDTO.setComments(resultSet.getString("comments"));
				homeDtoList.add(homeDTO);
			}
			Iterator<HomeDTO> iterator = homeDtoList.iterator();
			if(!(iterator.hasNext())) {
				homeDtoList = null;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return homeDtoList;
	}
}
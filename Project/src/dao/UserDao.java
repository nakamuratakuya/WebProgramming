package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.User;

import model.User;
public class UserDao {
	  public User findByLoginInfo(String loginId, String password) {
		  Connection conn = null;
		  try {
			  // データベースへ接続
			  conn = DBManager.getConnection();

			  // SELECT文を準備
			  String sql = "SELECT * FROM user WHERE login_id = ? and password = ?";

			  // SELECTを実行し、結果表を取得
			  PreparedStatement pStmt = conn.prepareStatement(sql);
			  pStmt.setString(1, loginId);
			  pStmt.setString(2, password);
			  ResultSet rs = pStmt.executeQuery();

			  // 主キーに紐づくレコードは1件のみなので、rs.next()は1回だけ行う
	            if (!rs.next()) {
	                return null;
	            }
		  }
	  }
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
			String loginIdData = rs.getString("login_id");
			String nameData = rs.getString("name");
			return new User(loginIdData, nameData);
		}

		catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// データベース切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
	}

	/**
	* 全てのユーザ情報を取得する
	* @return
	*/
	public List<User> findAll() {
		Connection conn = null;
		List<User> userList = new ArrayList<User>();
		try {
			// データベースへ接続
			conn = DBManager.getConnection();
			System.out.println("aaaaaaa");
			// SELECT文を準備
			// TODO: 未実装：管理者以外を取得するようSQLを変更する
			String sql = "SELECT * FROM user";
			System.out.println("cccccccc");
			// SELECTを実行し、結果表を取得
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			System.out.println("dddddddd");
			// 結果表に格納されたレコードの内容を
			// Userインスタンスに設定し、ArrayListインスタンスに追加
			while(rs.next()) {
			int id = rs.getInt("id");
			String loginId = rs.getString("login_id");
			String name = rs.getString("name");
			Date birthDate = rs.getDate("birth_date");
			String password = rs.getString("password");
			String createDate = rs.getString("create_date");
			String updateDate = rs.getString("update_date");
			User user = new User(id,loginId,name,birthDate,password,createDate,updateDate);
			System.out.println("bbbbbbbb");
			userList.add(user);
			}
			System.out.println("ffffffff");
		}catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			// データベース切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
					return null;
				}
			}
		}
		return userList;
	}

	public void  createuser(String loginId, String password ,String name ,String birthdate) {
		Connection conn = null;
		try {
			// データベースへ接続
			conn = DBManager.getConnection();

			// SELECT文を準備
			String sql = "INSERT INTO user(login_id, name, birth_date, password, create_date, update_date)"
					 +"VALUES (? , ? ,? ,  ?, now(), now())";

			// SELECTを実行し、結果表を取得
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, loginId);
			pStmt.setString(2, name);
			pStmt.setString(3, birthdate);
			pStmt.setString(4, password);
			pStmt.executeUpdate();

		}

		catch (SQLException e) {
			e.printStackTrace();

		} finally {
			// データベース切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();

				}
			}
		}
	}
	public void  userdelete(String id) {
		Connection conn = null;
		try {
			// データベースへ接続
			conn = DBManager.getConnection();

			// SELECT文を準備
			String sql = "DELETE FROM user WHERE id =?";

			// SELECTを実行し、結果表を取得
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1,id);

			pStmt.executeUpdate();
		}
			// 主キーに紐づくレコードは1件のみなので、rs.next()は1回だけ行う

		catch (SQLException e) {
			e.printStackTrace();

		} finally {
			// データベース切断
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();

				}
			}
		}
	}
}

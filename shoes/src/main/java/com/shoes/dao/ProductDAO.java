package com.shoes.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shoes.dto.ProductVO;

import util.DBManager;

public class ProductDAO {
	private ProductDAO() {
	}

	private static ProductDAO instance = new ProductDAO();

	public static ProductDAO getInstance() {
		return instance;
	}

	/* 상품 정보 가져오기 */
	public ProductVO getProduct(String shoescode) {
		ProductVO product = null;
		String sql = "select * from product where shoescode=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, shoescode);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				product = new ProductVO();
				product.setShoescode(rs.getString("shoescode"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getInt("price"));
				product.setPcount(rs.getInt("pcount"));
				product.setColor(rs.getString("color"));
				product.setBrand(rs.getString("brand"));
				product.setMainimg(rs.getString("mainimg"));
				product.setInfoimg(rs.getString("infoimg"));
				product.setDetail1img(rs.getString("detail1img"));
				product.setDetail2img(rs.getString("detail2img"));
				product.setDetail3img(rs.getString("detail3img"));
				product.setIndate(rs.getTimestamp("indate"));
				product.setHeart(rs.getString("heart"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return product;
	}

	/* 브랜드별 상품 정보 가져오기 */
	public ArrayList<ProductVO> BrandProduct() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select shoescode,pname,brand,price,mainimg from product where mainimg like '%brand%'";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setShoescode(rs.getString("shoescode"));
				product.setBrand(rs.getString("brand"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getInt("price"));
				product.setMainimg(rs.getString("mainimg"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	/* 남성용 상품 정보 가져오기 */
	public ArrayList<ProductVO> MenProduct() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select shoescode,pname,brand,price,mainimg from product where mainimg like '%men%'";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setShoescode(rs.getString("shoescode"));
				product.setBrand(rs.getString("brand"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getInt("price"));
				product.setMainimg(rs.getString("mainimg"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	/* 여성용 상품 정보 가져오기 */
	public ArrayList<ProductVO> WomenProduct() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select shoescode,pname,brand,price,mainimg from product where mainimg like '%women%'";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setShoescode(rs.getString("shoescode"));
				product.setBrand(rs.getString("brand"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getInt("price"));
				product.setMainimg(rs.getString("mainimg"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	/* 유아용 상품 정보 가져오기 */
	public ArrayList<ProductVO> KidsProduct() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select shoescode,pname,brand,price,mainimg from product where mainimg like '%kids%'";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setShoescode(rs.getString("shoescode"));
				product.setBrand(rs.getString("brand"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getInt("price"));
				product.setMainimg(rs.getString("mainimg"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	/* 찜 목록 업데이트 */
	public int updateZzim(ProductVO pvo) {
		int result = 1;
		String sql = "update product set heart='2' where shoescode=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pvo.getShoescode());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	/* 찜 목록 삭제 할때 heart '1'로 되돌려놔!!!! */
	public int deleteHeart(ProductVO pvo) {
		int result = 1;
		String sql = "update product set heart='1' where shoescode=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pvo.getShoescode());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	/* 메인화면 이미지 불러오기 */
	public ArrayList<ProductVO> AllProduct() {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();
		String sql = "select shoescode,pname,brand,price,mainimg from product";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				ProductVO product = new ProductVO();
				product.setShoescode(rs.getString("shoescode"));
				product.setBrand(rs.getString("brand"));
				product.setPname(rs.getString("pname"));
				product.setPrice(rs.getInt("price"));
				product.setMainimg(rs.getString("mainimg"));
				productList.add(product);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	/* 관리자 모드에서 사용되는 메소드 */
	public int totalRecord(String product_name) {
		int total_pages = 0;
		String sql = "select count(*) from product where pname like '%'||?||'%'";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}
			rs = pstmt.executeQuery();

			if (rs.next()) {
				total_pages = rs.getInt(1); // 레코드의 개수
				rs.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return total_pages;
	}

	static int view_rows = 10; // 페이지의 개수
	static int counts = 10; // 한 페이지에 나타낼 상품의 개수

	// 페이지 이동을 위한 메소드
	public String pageNumber(int tpage, String name) {
		String str = "";

		int total_pages = totalRecord(name);
		int page_count = total_pages / counts + 1;

		if (total_pages % counts == 0) {
			page_count--;
		}
		if (tpage < 1) {
			tpage = 1;
		}

		int start_page = tpage - (tpage % view_rows) + 1;
		int end_page = start_page + (counts - 1);

		if (end_page > page_count) {
			end_page = page_count;
		}
		if (start_page > view_rows) {
			str += "<a href='ShoesServlet?command=admin_product_list&tpage=1&key=" + name
					+ "'>&lt;&lt;</a>&nbsp;&nbsp;";
			str += "<a href='ShoesServlet?command=admin_product_list&tpage=" + (start_page - 1);
			str += "&key=<%=product_name%>'>&lt;</a>&nbsp;&nbsp;";
		}

		for (int i = start_page; i <= end_page; i++) {
			if (i == tpage) {
				str += "<font color=red>[" + i + "]&nbsp;&nbsp;</font>";
			} else {
				str += "<a href='ShoesServlet?command=admin_product_list&tpage=" + i + "&key=" + name + "'>[" + i
						+ "]</a>&nbsp;&nbsp;";
			}
		}

		if (page_count > end_page) {
			str += "<a href='ShoesServlet?command=admin_product_list&tpage=" + (end_page + 1) + "&key=" + name
					+ "'>&gt;</a>&nbsp;&nbsp;";
			str += "<a href='ShoesServlet?command=admin_product_list&tpage=" + page_count + "&key=" + name
					+ "'>&gt;&gt;</a>&nbsp;&nbsp;";
		}
		return str;
	}

	/* 상품리스트 불러오기 */
	public ArrayList<ProductVO> listProduct(int tpage, String product_name) {
		ArrayList<ProductVO> productList = new ArrayList<ProductVO>();

		String str = "select shoescode, indate, pname, price, color, brand "
				+ " from product where pname like '%'||?||'%' order by shoescode desc";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int absolutepage = 1;

		try {
			conn = DBManager.getConnection();
			absolutepage = (tpage - 1) * counts + 1;
			pstmt = conn.prepareStatement(str, ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);

			if (product_name.equals("")) {
				pstmt.setString(1, "%");
			} else {
				pstmt.setString(1, product_name);
			}

			rs = pstmt.executeQuery();

			if (rs.next()) {
				rs.absolute(absolutepage);
				int count = 0;

				while (count < counts) {
					ProductVO product = new ProductVO();
					product.setShoescode(rs.getString(1));
					product.setIndate(rs.getTimestamp(2));
					product.setPname(rs.getString(3));
					product.setPrice(rs.getInt(4));
					product.setColor(rs.getString(5));
					product.setBrand(rs.getString(6));
					productList.add(product);
					if (rs.isLast()) {
						break;
					}
					rs.next();
					count++;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt, rs);
		}
		return productList;
	}

	/* 상품 추가 */
	public int insertProduct(ProductVO product) {
		int result = 0;

		String sql = "insert into product ("
				+ "shoescode, pname, price, color, brand, mainimg, infoimg, detail1img, detail2img, detail3img) "
				+ "values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getShoescode());
			pstmt.setString(2, product.getPname());
			pstmt.setInt(3, product.getPrice());
			pstmt.setString(4, product.getColor());
			pstmt.setString(5, product.getBrand());
			pstmt.setString(6, product.getMainimg());
			pstmt.setString(7, product.getInfoimg());
			pstmt.setString(8, product.getDetail1img());
			pstmt.setString(9, product.getDetail2img());
			pstmt.setString(10, product.getDetail3img());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			System.out.println("추가 실패");
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}

	/* 상품 업데이트 */
	public int updateProduct(ProductVO product) {
		int result = -1;
		String sql = "update product set pname=?, price=?, pcount=?"
				+ ", color=?, brand=?, mainimg=?, infoimg=?, detail1img=?, detail2img=?, detail3img=? "
				+ "where shoescode=?";

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, product.getPname());
			pstmt.setInt(2, product.getPrice());
			pstmt.setInt(3, product.getPcount());
			pstmt.setString(4, product.getColor());
			pstmt.setString(5, product.getBrand());
			pstmt.setString(6, product.getMainimg());
			pstmt.setString(7, product.getInfoimg());
			pstmt.setString(8, product.getDetail1img());
			pstmt.setString(9, product.getDetail2img());
			pstmt.setString(10, product.getDetail3img());
			pstmt.setString(11, product.getShoescode());
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return result;
	}
}

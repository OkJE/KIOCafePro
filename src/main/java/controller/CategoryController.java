package controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.el.lang.FunctionMapperImpl.Function;

import com.oreilly.servlet.MultipartRequest;

import kic.mskim.MskimRequestMapping;
import kic.mskim.RequestMapping;
import model.Category;
import service.ProductDao;


@Controller 
@RequestMapping("/category/")
public class CategoryController {
	 @Autowired 
	 BoardMybatisDao bd;
	
	HttpServletRequest request;
	   Model m;
	   HttpSession session;
	   @ModelAttribute
	   void init(HttpServletRequest request, Model m) {
	      this.request = request;
	      this.m = m;
	      this.session = request.getSession();
	   } 
	

	@RequestMapping("index")	//handler처럼 사용하기 위해서 가져온다.
	public String index() throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		return "bakeryMain";
	}
	
	@RequestMapping("productForm")	//handler처럼 사용하기 위해서 가져온다.
	public String productForm() throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		return "category/bakeryMain";
	}
	@RequestMapping("boardPro")
	public String boardPro() throws Exception {

		
		  String path = request.getServletContext().getRealPath("/") +
		 "view/board/img/"; String filename = null;
		

		String msg = "게시물을 등록 실패";
		String url = "boardForm";
		HttpSession session = request.getSession();

		String boardid = (String) session.getAttribute("boardid");
		if (boardid == null)
			boardid = "1";

		try {
			MultipartRequest multi = new MultipartRequest(request, path, 10 * 1024 * 1024, "UTF-8");
			Category category = new Category();

			category.setCnum(multi.getParameter("cnum"));
			category.setCname(multi.getParameter("cname"));
			
			category.setCpicture(multi.getParameter("cpicture"));
			category.setCtext(multi.getParameter("ctext"));
			
			category.setCprice(multi.getParameter("cprice"));
			category.setCqty(multi.getParameter("cqty"));
			category.setCmenu(multi.getParameter("cmenu"));
			
			
			category.setBoardid(boardid); // 우선 공지사항
			if (category.getCpicture() == null)
				category.getCpicture("");

			
			int num = bd.insertBoard(category);
			if (num > 0) {
				msg = "게시물을 등록 성공";
				url = "mainpage";
			}

			System.out.println(category);

		} catch (IOException e) {
			e.printStackTrace();

		}
		// request.setAttribute("filename", filename);
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}
	
	}
	
	/*@RequestMapping("loginForm")	//handler처럼 사용하기 위해서 가져온다.
	public String loginForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		return "member/loginForm";
	}
	
	@RequestMapping("loginPro")	//handler처럼 사용하기 위해서 가져온다.
	public String loginPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		HttpSession session = request.getSession();
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		MemberMybatisDao md = new MemberMybatisDao();

		Member mem = md.selectOne(id);

		String msg = "아이디를 확인하세요.";
		String url = "/member/loginForm";

		if(mem != null){
			if(pass.equals(mem.getPass())){
				//pass가 String이어서 equals를 사용하는게 좋다.
				session.setAttribute("id", id);
				msg=mem.getName() + "님이 로그인 하셨습니다.";
				url="/member/index";
			}else{
				msg="비밀번호를 확이하세요.";
				url="/member/loginForm";
			}
		}
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}
	
	@RequestMapping("logout")	//handler처럼 사용하기 위해서 가져온다.
	public String logout(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		HttpSession session = request.getSession();
		
		String login = (String)session.getAttribute("id");
		session.invalidate();
		
		String msg = login + "로그아웃 되었습니다.";
		String url = "/member/loginForm";
		
		request.setAttribute("msg", msg);
		request.setAttribute("url", url);
		return "alert";
	}
	
	@RequestMapping("memberInfo")	//handler처럼 사용하기 위해서 가져온다.
	public String memberInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();		
		
		String id = (String)session.getAttribute("id");
		if (id !=null && !id.equals("")){
			Member m = new MemberMybatisDao().selectOne(id);
			request.setAttribute("m", m);
		
		return "member/memberInfo";
		} else {
			String msg = "로그인이 필요합니다.";
			String url = "/member/loginForm";
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";
		}
	}
	
	@RequestMapping("memberUpdateForm")	//handler처럼 사용하기 위해서 가져온다.
	public String memberUpdateForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();	
		String id = (String)session.getAttribute("id");
		if (id !=null && !id.equals("")){
			Member m = new MemberMybatisDao().selectOne(id); 
			request.setAttribute("m", m);
			return "member/memberUpdateForm";
		} else {
			String msg = "로그인이 필요합니다.";
			String url = "/member/loginForm";
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";
		}
		}

	
	@RequestMapping("memberUpdatePro")	//handler처럼 사용하기 위해서 가져온다.
	public String memberUpdatePro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();	
		
		String id = (String) session.getAttribute("id"); 
		String msg = "로그인이 필요합니다.";
		String url =  "/member/loginForm";
		if(id !=null && !id.equals("")){

		request.setCharacterEncoding("utf-8");
		Member mem = new Member();
		mem.setId(id);
		// 위에 아이디가 다른 이유는 넘어온 정보를 가지고 있기 위해서 request 부문을 수정한 것이다.
		mem.setPass(request.getParameter("pass"));
		mem.setName(request.getParameter("name"));
		mem.setGender(Integer.parseInt(request.getParameter("gender")));
		mem.setTel(request.getParameter("tel"));
		mem.setEmail(request.getParameter("email"));
		mem.setPicture(request.getParameter("picture"));
		
		MemberMybatisDao md = new MemberMybatisDao();
		Member dbm = md.selectOne(id);
		//password 확인
		
		if(dbm !=null){
			if(dbm.getPass().equals(mem.getPass())){
				int num = md.updateMember(mem);	//정보수정
				
				if(num>0){
					msg=mem.getName()+"님의 정보 수정이 되었습니다.";
					url="/member/memberInfo";
				}else{
					msg="정보 수정이 실패 했습니다.";
					url="/member/memberUpdateForm";
				}
			} else{
				msg="비밀번호가 틀립니다.";
				url="/member/memberUpdateForm";
			}
		}
		}	
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";		
		}
	
	@RequestMapping("memberDelete")	//handler처럼 사용하기 위해서 가져온다.
	public String memberDelete(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();			
		String id = (String) session.getAttribute("id"); 
		if(id !=null && !id.equals("")){

			return "member/memberDelete";
		} else {
			String msg = "로그인이 필요합니다.";
			String url = "/member/loginForm";
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";
		}
		}
	
	@RequestMapping("memberDeletePro")	//handler처럼 사용하기 위해서 가져온다.
	public String memberDeletePro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id"); 
		String pass = request.getParameter("pass"); 
		String msg = "로그인이 필요합니다.";
		String url = "/member/loginForm";
		if(id !=null && !id.equals("")){
		
		MemberMybatisDao md = new MemberMybatisDao();
		Member dbm = md.selectOne(id);
		
		if(dbm !=null){
			if(dbm.getPass().equals(pass)){
				int num = md.deleteMember(id);	//정보수정
				
				if(num>0){
					msg=id+"님이 탈퇴 처리되었습니다.";
					session.invalidate();
					url="/member/loginForm";
				}else{
					msg="회원탈퇴가 실패 했습니다.";
					url="/member/memberDelete";
				}
			} else{
				msg="비밀번호가 틀립니다.";
				url="/member/memberDelete";
			}
		}		
		}				
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";		
		}

	@RequestMapping("memberPassUpdate")	
	public String memberPassUpdate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();					
		String id = (String) session.getAttribute("id"); 
		String msg = "로그인이 필요합니다.";
		String url = "/member/loginForm";
		if(id !=null && !id.equals("")){
			return "member/memberPassUpdate";
		}else{			
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";
		} 
	}
		
	
	@RequestMapping("memberPassPro")	//handler처럼 사용하기 위해서 가져온다.
	public String memberPassPro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id"); 
		String pass = request.getParameter("pass"); 
		String chgpass = request.getParameter("chgpass1");
		String msg = "로그인이 필요합니다.";
		String url = "/member/loginForm";
		if(id !=null && !id.equals("")){
		
		MemberMybatisDao md = new MemberMybatisDao();
		Member dbm = md.selectOne(id);
		//password 확인
		
		if(dbm!=null){
			if(dbm.getPass().equals(pass)){
				int num = md.chagePass(id, chgpass);	//정보수정s
				
				if(num>0){
					msg=id+"의 비밀번호가 변경되었습니다.";
					url="/member/index";
				}else{
					msg="비밀번호 변경 실패했습니다.";
					url="/member/memberPassUpdate";
				}
			} else{
				msg="비밀번호가 틀립니다.";
				url="/member/memberPassUpdate";
			}
		}		
		}				
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";		
		}
	
	
	
	@RequestMapping("memberList")	
	public String memberList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");
		
		HttpSession session = request.getSession();					
		String id = (String)session.getAttribute("id");
		
		String msg = "로그인이 필요합니다.";
		String url = "/member/loginForm";
		if (id !=null && id.equals("admin")){
		List<Member> li = new ArrayList<Member>();
		li = new MemberMybatisDao().memberList();
		request.setAttribute("li", li);
		return "member/memberList";
		}else{			
			request.setAttribute("msg", msg);
			request.setAttribute("url", url);
			return "alert";
		} 
	}
	
	@RequestMapping("pictureimgForm")	
	public String pictureimgForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
			return "member/pictureimgForm";		 
	}
	
	@RequestMapping("picturePro")	
	public String picturePro(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("index", "board 입니다.");	
		
		String path = request.getServletContext().getRealPath("/")+"view/member/picture/";	//파일 저장 위치
		String filename = null;
		try{
		MultipartRequest multi = new MultipartRequest(request,path,10*1024*1024,"UTF-8");	//파일 크기이다.
		filename = multi.getFilesystemName("picture"); 
		
		filename = multi.getFilesystemName("picture");
		
		} catch (IOException e){
			e.printStackTrace();
		}
		request.setAttribute("filename", filename);
		
			return "member/picturePro";		 
	}
}*/

	
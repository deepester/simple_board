package com.simple_board.adm.dao;

import javax.inject.Inject;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import com.simple_board.adm.vo.FaqVO;
import com.simple_board.adm.vo.MemberVO;
import com.simple_board.adm.vo.NoticeVO;
import com.simple_board.utils.PagingVO;

@Repository
public class AdmDAOImpl implements AdmDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(AdmDAOImpl.class);
	
	// 로그인 조회
	public MemberVO selectLogin(MemberVO vo) throws Exception {
		return sqlSession.selectOne("admMapper.selectLogin", vo);
	};
	// 로그인 성공시 업데이트
	public void updateLogin(MemberVO vo) throws Exception {
		sqlSession.update("admMapper.updateLogin", vo);
	};
	// 로그인 실패시 업데이트
	public void updateFailLogin(MemberVO vo) throws Exception {
		sqlSession.update("admMapper.updateFailLogin", vo);
	};
	// 로그인 계정 찾기
	public MemberVO selectEmailInfo(String email) throws Exception {
		return sqlSession.selectOne("admMapper.selectEmailInfo", email);
	};
	// 로그인 계정 찾기
	public void updatePassword(MemberVO vo) throws Exception {
		sqlSession.update("admMapper.updatePassword", vo);
	};
	
	// 관리자 수
	@Override
	public int countMemberList(PagingVO vo) {
		return sqlSession.selectOne("admMapper.countMemberList", vo);
	}
	// 관리자 리스트 조회
	@Override
	public List<MemberVO> selectMemberList(PagingVO vo) throws Exception {
		logger.info("admMapper.selectMemberList");
		return sqlSession.selectList("admMapper.selectMemberList", vo);
	}
	// 관리자 조회
	@Override
	public MemberVO selectMember(MemberVO vo) throws Exception {
		logger.info("admMapper.selectMember");
		return sqlSession.selectOne("admMapper.selectMember", vo);
	}
	// 관리자 등록
	@Override
	public void insertMemberList(MemberVO vo) throws Exception {
		sqlSession.insert("admMapper.insertMemberList", vo);
	}
	// 관리자 수정
	@Override
	public void updateMember(MemberVO vo) throws Exception {
		sqlSession.update("admMapper.updateMember", vo);
	}
	// 관리자 삭제
	@Override
	public void deleteMember(MemberVO vo) throws Exception {
		sqlSession.delete("admMapper.deleteMember", vo);
	}
	
	
	// Notice 수
	@Override
	public int countNoticeList(PagingVO vo) {
		return sqlSession.selectOne("admMapper.countNoticeList", vo);
	}
	// Notice 리스트 조회
	@Override
	public List<NoticeVO> selectNoticeList(PagingVO vo) throws Exception {
		logger.info("admMapper.selectNoticeList");
		return sqlSession.selectList("admMapper.selectNoticeList", vo);
	}
	// Notice 조회
	@Override
	public NoticeVO selectNotice(NoticeVO vo) throws Exception {
		logger.info("admMapper.selectNotice");
		return sqlSession.selectOne("admMapper.selectNotice", vo);
	}
	// Notice 등록
	@Override
	public void insertNoticeList(NoticeVO vo) throws Exception {
		sqlSession.insert("admMapper.insertNoticeList", vo);
	}
	// Notice 파일 등록
	@Override
	public void insertFile(Map<String, Object> map) throws Exception {
		sqlSession.insert("admMapper.insertFile", map);
	}
	// Notice 파일 조회
	@Override
	public List<Map<String, Object>> selectFileList(int notice_seq) throws Exception {
		return sqlSession.selectList("admMapper.selectFileList", notice_seq);
	}
	// Notice 파일 제거
	@Override
	public void deleteFile(int seq) throws Exception {
		sqlSession.update("admMapper.deleteFile", seq);
	}
	// 첨부파일 다운로드
	@Override
	public Map<String, Object> selectFileInfo(int seq) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("admMapper.selectFileInfo", seq);
	}
	// Notice 수정
	@Override
	public void updateNotice(NoticeVO vo) throws Exception {
		sqlSession.update("admMapper.updateNotice", vo);
	}
	// Notice 삭제
	@Override
	public void deleteNotice(NoticeVO vo) throws Exception {
		sqlSession.delete("admMapper.deleteNotice", vo);
	}
	
	
	// FAQ 수
	@Override
	public int countFaqList(PagingVO vo) {
		return sqlSession.selectOne("admMapper.countFaqList", vo);
	}
	// FAQ 리스트 조회
	@Override
	public List<FaqVO> selectFaqList(PagingVO vo) throws Exception {
		logger.info("admMapper.selectFaqList");
		return sqlSession.selectList("admMapper.selectFaqList", vo);
	}
	// FAQ 조회
	@Override
	public FaqVO selectFaq(FaqVO vo) throws Exception {
		logger.info("admMapper.selectFaq");
		return sqlSession.selectOne("admMapper.selectFaq", vo);
	}
	// FAQ 등록
	@Override
	public void insertFaqList(FaqVO vo) throws Exception {
		sqlSession.insert("admMapper.insertFaqList", vo);
	}
	// FAQ 수정
	@Override
	public void updateFaq(FaqVO vo) throws Exception {
		sqlSession.update("admMapper.updateFaq", vo);
	}
	// FAQ 삭제
	@Override
	public void deleteFaq(FaqVO vo) throws Exception {
		sqlSession.delete("admMapper.deleteFaq", vo);
	}
}

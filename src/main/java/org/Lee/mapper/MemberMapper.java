package org.Lee.mapper;

import org.Lee.domain.MemberDTO;

public interface MemberMapper {
    //회원가입
	public void member(MemberDTO mdto);
	//아이디 중복 검사
	public int idCheck(String id);
	//닉네임 중복 검사
	public int nicCheck(String nicname);
	//로그인
	public MemberDTO memberLogin(MemberDTO mdto);
	//회원 정보 조회 - 사용자 ID 해당하는 정보 가져오기
    public MemberDTO readMember(MemberDTO mdto);
    //회원 정보 수정
    public void updateMember(MemberDTO mdto);
    //회원 정보 탈퇴
    public void deleteMember(MemberDTO mdto);
	
}

/*
 0318
 [03] Service(Process) class를 이용한 빈즈 사용
 
  1. Service(Process) class
   - Call By Reference 기법을 이용한 객체의 전달
 */
package beans;
public class SungjukService {
  
 private SungjukVO sungjukVO = null ; // 객체 생성
  
  // default Constructor
  public SungjukService() {}

  // Call by Reference : 메모리 공유
  public SungjukService(SungjukVO sungjukVO) {
    this.sungjukVO = sungjukVO; // 멤버변수 = 지역변수
  }
 
  public void tot() {
    // tot변수에 get으로 받아온 과목 점수를 in
    int tot = sungjukVO.getJava() + sungjukVO.getJsp() + sungjukVO.getSpring();
    sungjukVO.setTot(tot);
  }
  
  public void avg() {
    int avg = sungjukVO.getTot()/3;  
    sungjukVO.setAvg(avg);
  }
}

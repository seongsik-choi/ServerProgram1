/*
0318
 2) Beans Test
  [실행 화면]
    성명: 왕눈이
    java: 90
    jsp: 90
    spring: 90
    tot: 270
    avg: 90
 */
package beans;
public class SungjukVoTest {
  public static void main(String[] args) {
    SungjukVO vo = new SungjukVO();
    //vo.name = "왕눈이";  // error. private 변수로 선언되어 다른 클래스에서 사용 불가능
    
    /* setter와 getter 호출 */
    vo.setName("최성식");
    vo.setJava(90);
    vo.setJsp(90);
    vo.setSpring(90);
    // vo.setTot(0);  // getTot에서 정의해둔 tot = (java+jsp+spring); 호출해 계산
    vo.setTot(vo.getJava() + vo.getJsp() + vo.getSpring());
    vo.setAvg((vo.getJava() + vo.getJsp() + vo.getSpring())/3);
    
    String name = vo.getName(); 
    int java = vo.getJava();
    int jsp = vo.getJsp();
    int spring = vo.getSpring();
    int tot = vo.getTot();
    int avg = vo.getAvg();
    
    System.out.println("이름 : "+ name + "\njava점수 : " + java + 
                              "\njsp점수 : " + jsp + 
                               "\nspring점수 : " + spring +
                              "\n총점 : " + tot + "\n평균 : " + avg);
  }
}

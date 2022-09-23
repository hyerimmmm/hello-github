<%@ page contentType="text/html; charset=utf-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <style>
        * { margin: 0; padding: 0; font-family: 'Noto Sans KR', sans-serif;}
        section { width: 600px; margin: 0; }
        table { border-collapse: collapse; border-top: 1px solid #999;}
        th, td { padding: 10px; border-bottom: 1px dashed #ccc; line-height: 200%;}
        input { padding: 5px; border: 1px solid #ccc; }

        ul {width: 798px; list-style: none; margin: 10px; border: 1px solid gray; margin: auto;}
        li {display: block; padding: 10px; border-bottom: 1px dashed gray;}
        label {display: inline-block; width: 170px; text-align: center;} 
        h1{text-align: center;}
    </style>
</head>
<body>
    <form name="member" action="member_insert.jsp" method="post">
        <h1>회원가입</h1>
        <input type="hidden" name="insert_type" value="회원가입">
        <ul>
            <li>
                <label>약관동의</label>

                <label for="agree">
                    <input type="radio" name="agree" value="동의" id="agree">동의합니다</label>

                <label for="disagree">
                    <input type="radio" name="agree" value="동의안함" id="disagree" checked="checked">동의하지 않습니다</label>
            </li>
            <li>
                <label>아이디</label>
                <input type="text" name="memberID" id="mID"/>
            </li>
            <li>
                <label>비밀번호</label>
                <input type="password" name="password"/>
            </li>
            <li>
                <label>비밀번호 확인</label>
                <input type="password" name="passconfirm"/>
            </li>
            <li>    
                <label>이름</label>
                <input type="text" name="name">
            </li>
            <li>    
                <label>이메일</label>
                <input type="email" name="email">
            </li>
            <li>    
                <label>전화번호</label>
                <input type="tel" name="tel" maxlength="3" size="5">
                <input type="tel" name="tel" maxlength="4" size="10">
                <input type="tel" name="tel" maxlength="4" size="10">
            </li>
            <li>    
                <label>생년월일</label>
                <select name="birth">
                    <option value="1980">1980</option>
                    <option value="1981">1981</option>
                    <option value="1982">1982</option>
                    <option value="1983">1983</option>
                    <option value="1984">1984</option>
                    <option value="1985">1985</option>
                    <option value="1086">1986</option>
                    <option value="1987">1987</option>
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000">2000</option>
                </select>
                <select name="birth">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
                <select name="birth">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="6">6</option>
                <option value="7">7</option>
                <option value="8">8</option>
                <option value="9">9</option>
                <option value="10">10</option>
                <option value="11">11</option>
                <option value="12">12</option>
                <option value="13">13</option>
                <option value="14">14</option>
                <option value="15">15</option>
                <option value="16">16</option>
                <option value="17">17</option>
                <option value="18">18</option>
                <option value="19">19</option>
                <option value="20">20</option>
                <option value="21">21</option>
                <option value="22">22</option>
                <option value="23">23</option>
                <option value="24">24</option>
                <option value="25">25</option>
                <option value="26">26</option>
                <option value="28">28</option>
                <option value="29">29</option>
                <option value="30">30</option>
                <option value="31">31</option>
                </select>
            </li>
            <li>
                <section>
                    <form method="post" name="frmOrder">
                    <table>
                        <tr>
                            <th>주소</th>
                            <td><input name="address" id="zcode" size="10" maxlength="7" readonly>
                                <span onclick="execDaumPostcode();" style="cursor:pointer;">우편번호 검색</span><br />
                                <input name="address" id="address01" size="60" maxlength="70" readonly> 
                                <input name="address" id="address02" size="60" maxlength="70">
                            </td></tr>
                    </table>
                    </form>
                </section>

                <script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>
            </li>
            <li>
                <label>이메일 수신 여부</label>
                <label for="reception2">    
                    <input type="radio" name="reception" value="수신" id="reception2">수신
                </label>
                
                <label for="unsubscribe2">
                    <input type="radio" name="reception" value="거부" id="unsubscribe2" checked="checked">거부
                </label>
            </li>
            <li>
                <label>휴대폰 정보 수신 여부</label>
                <label for="telreception2">
                    <input type="radio" name="telreception" value="수신" id="telreception2">수신
                </label>
                
                <label for="telunsubscribe2">
                <input type="radio" name="telreception" value="거부" id="telunsubscribe2" checked="checked">거부
                </label>
            </li>
            <li style="border: none;">
                <div>관심분야</div>
                <label for="sportsID">
                    <input name="Interests" type="checkbox" value="스포츠" id="sportsID">스포츠
                </label>

                <label for="artID">
                    <input name="Interests" type="checkbox" value="미술" id="artID">미술
                </label>

                <label for="musicID">
                    <input name="Interests" type="checkbox" value="음악" id="musicID">음악
                </label>

                <label for="readingID">
                    <input name="Interests" type="checkbox" value="독서" id="readingID">독서
                </label>

                <label for="healthID">
                    <input name="Interests" type="checkbox" value="운동" id="healthID">운동
                </label>

                <label for="codingID">
                    <input name="Interests" type="checkbox" value="코딩" id="codingID">코딩
                </label>

                <label for="beautyID">
                    <input name="Interests" type="checkbox" value="뷰티" id="beautyID">뷰티
                </label>

                <label for="photoID">
                    <input name="Interests" type="checkbox" value="사진" id="photoID">사진
                </label>

                <label for="travelID">
                    <input name="Interests" type="checkbox" value="여행" id="travelID">여행
                </label>

                <label for="loveID">
                    <input name="Interests" type="checkbox" value="연애" id="loveID">연애
                </label>
                <br>
                <input type="button" value="회원가입" id="login-button"/>
            </li>
        </ul>
    </form>
    <script src="member.js"></script>
</body>
</html>
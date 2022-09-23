document.addEventListener('DOMContentLoaded', function () {
            const loginButton = document.querySelector('#login-button'); 
            loginButton.addEventListener("click", () => { 
                const formLogin = document.forms.member;
                if (formLogin.memberID.value ===''){
                    alert('아이디를 입력해 주세요!');
                    return;
                }
                else if (formLogin.password.value ===''){
                    alert('비밀번호를 입력해 주세요!');
                    return;
                }
                else if (formLogin.passconfirm.value ===''){
                    alert('비밀번호 확인을 입력해 주세요!');
                    return;
                }
                else if (formLogin.name.value ===''){
                    alert('이름을 입력해 주세요!');
                    return;
                }
                else if (formLogin.password.value !== formLogin.passconfirm.value){
                    alert('비밀번호가 일치하지 않습니다!');
                    return;
                }
                formLogin.action = 'member_insert.jsp';
                formLogin.submit();
            });
        });

         function execDaumPostcode() {
                        new daum.Postcode({
                            oncomplete: function(data) {
                                var fullAddr = ''; 
                                var extraAddr = ''; 

                                if (data.userSelectedType === 'R') { 
                                    fullAddr = data.roadAddress;
                                }
                                else { 
                                    fullAddr = data.jibunAddress;
                                }

                                if(data.userSelectedType === 'R'){
                                    if(data.bname !== ''){
                                        extraAddr += data.bname;
                                    }
                                    if(data.buildingName !== ''){
                                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                    }
                                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                                }

                                document.getElementById('zcode').value = data.zonecode;
                                document.getElementById('address01').value = fullAddr;

                                document.getElementById('address02').focus();
                            }
                        }).open();
                    }
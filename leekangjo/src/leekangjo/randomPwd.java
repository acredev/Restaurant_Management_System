/*
 * 랜덤 패스워드를 생성하여 비밀번호 재설정을 도와주는 자바 클래스 파일입니다.
 * - 구현기능
 *    1. randomStr() : 랜덤 문자열 발생
 *        - size : 발생할 문자열의 길이를 지정합니다.
 *    2. sendSMS() : 문자 발송
 *        - 생성된 랜덤 문자열을 사용자의 휴대폰 번호로 전송합니다.
 */

package leekangjo;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class RandomPwd
{
	public String randomStr(int size)
	{
		if(size > 0)
		{
			char[] tmp = new char[size];
			for (int i=0; i<tmp.length; i++)
			{
				int div = (int) Math.floor(Math.random() * 2);
				if(div == 0)
				{
					tmp[i] = (char) (Math.random() * 10 + '0');
				}
				else
				{
					tmp[i] = (char) (Math.random() * 26 + 'A');
				}
			}
			return new String(tmp);
		}
		return "ERROR : Size is required.";
	}
	public String sendSMS (String tel)
	{
		// 랜덤 문자열 생성, 8자리
		RandomPwd randomPwd = new RandomPwd();
		String randomPwd_create = randomPwd.randomStr(8);
		
		// coolSMS 연결 API키
		String api_key = "";
		String api_secret = "";
		Message coolsms = new Message(api_key, api_secret);
		
		// 문자 보낼 내용 결정
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("to", tel);
		params.put("from", "01084295741");
		params.put("type", "SMS");
		params.put("text", "[LEEKANGJO] 임시 비밀번호가 발급되었습니다. 임시 비밀번호는 " + randomPwd_create + "입니다.");
		params.put("app_version", "test");
		
		try
		{
			JSONObject obj = (JSONObject)coolsms.send(params);
			System.out.println(obj.toString());
		}
		catch (CoolsmsException cEx)
		{
			System.out.println(cEx.getMessage());
			System.out.println(cEx.getCode());
		}
		finally
		{
			
		}
		// 랜덤 문자열값 반환
		return randomPwd_create;
	}
}

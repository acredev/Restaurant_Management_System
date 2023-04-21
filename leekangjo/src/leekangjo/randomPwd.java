package leekangjo;

import java.util.HashMap;

import org.json.simple.JSONObject;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class randomPwd
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
		randomPwd randomPwd = new randomPwd();
		String randomPwd_create = randomPwd.randomStr(8);
		
		String api_key = "api키";
		String api_secret = "api시크릿키";
		Message coolsms = new Message(api_key, api_secret);
		
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
		return randomPwd_create;
	}
}

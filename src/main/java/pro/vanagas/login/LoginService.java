package pro.vanagas.login;

public class LoginService {
	public boolean isUserValid(String user, String pass) {
		return (user.equals("Martynas") && pass.equals("123")) ? true : false;
	}
}
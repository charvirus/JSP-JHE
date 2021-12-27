package controller;

import controller.action.Action;
import controller.action.CheckIdAction;
import controller.action.JoinAction;
import controller.action.JoinFormAction;
import controller.action.LoginAction;
import controller.action.LoginFormAction;
import controller.action.LogoutAction;

// Factory Method(����)
public class ActionFactory {

	// Singletone (����)
	private ActionFactory() {
	}

	private static ActionFactory instance = new ActionFactory();

	public static ActionFactory getInstance() {
		return instance;
	}

	// command pattern (����)
	public Action getAction(String command) {
		Action action = null;

		if (command.equals("login")) {
			action = new LoginAction();
		} else if (command.equals("loginForm")) {
			action = new LoginFormAction();
		} else if (command.equals("checkId")) {
			action = new CheckIdAction();
		} else if (command.equals("joinForm")) {
			action = new JoinFormAction();
		} else if (command.equals("join")) {
			action = new JoinAction();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
		}
		return action;
	}

}

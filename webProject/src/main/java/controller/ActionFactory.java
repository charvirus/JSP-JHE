package controller;

import controller.action.AcademyAction;
import controller.action.Action;
import controller.action.BoxOfficeAction;
import controller.action.DeleteTalkAction;
import controller.action.LoginAction;
import controller.action.LoginProAction;
import controller.action.MyPageAction;
import controller.action.TalkListAction;
import controller.action.UpdateTalkFormAction;
import controller.action.UpdateTalkProAction;
import controller.action.WatchTalkAction;
import controller.action.WriteTalkAction;
import controller.action.WriteTalkProAction;

// 팩토리 메소드
public class ActionFactory {
	private ActionFactory() {
	}

	private static ActionFactory instance = new ActionFactory();

	public static ActionFactory getInstance() {
		return instance;
	}

	public Action getAction(String command, String no) {
		Action action = null;

		if (command.equals("login")) {
			action = new LoginAction();
		} else if (command.equals("loginPro")) {
			action = new LoginProAction();
		} else if (command.equals("talkList")) {
			action = new TalkListAction();
		} else if (command.equals("watchTalk")) {
			action = new WatchTalkAction(no);
		} else if (command.equals("academy")) {
			action = new AcademyAction();
		} else if (command.equals("boxOffice")) {
			action = new BoxOfficeAction();
		} else if (command.equals("myPage")) {
			action = new MyPageAction();
		} else if (command.equals("writeTalk")) {
			action = new WriteTalkAction();
		} else if (command.equals("writeTalkPro")) {
			action = new WriteTalkProAction();
		} else if (command.equals("updateTalkForm")) {
			action = new UpdateTalkFormAction(no);
		} else if (command.equals("updateTalkPro")) {
			action = new UpdateTalkProAction();
		} else if (command.equals("deleteTalk")) {
			action = new DeleteTalkAction(no);
		}
		return action;
	}
}

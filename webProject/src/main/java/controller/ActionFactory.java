package controller;

import controller.action.AcademyAction;
import controller.action.Action;
import controller.action.BoxOfficeAction;
import controller.action.CommentAction;
import controller.action.DeleteTalkAction;
import controller.action.LoginAction;
import controller.action.LoginProAction;
import controller.action.LogoutAction;
import controller.action.MainAction;
import controller.action.MyPageAction;
import controller.action.MyPageProAction;
import controller.action.SignupAction;
import controller.action.SignupProAction;
import controller.action.TalkListAction;
import controller.action.UpLikeAction;
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

		if (command.equals("main")) {
			action = new MainAction();
		} else if (command.equals("signUp")) {
			action = new SignupAction();
		} else if (command.equals("signUpPro")) {
			action = new SignupProAction();
		} else if (command.equals("login")) {
			action = new LoginAction();
		} else if (command.equals("loginPro")) {
			action = new LoginProAction();
		} else if (command.equals("logout")) {
			action = new LogoutAction();
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
		} else if (command.equals("myPagePro")) {
			action = new MyPageProAction();
		} else if (command.equals("writeTalk")) {
			action = new WriteTalkAction();
		} else if (command.equals("writeTalkPro")) {
			action = new WriteTalkProAction();
		} else if (command.equals("updateTalk")) {
			action = new UpdateTalkFormAction(no);
		} else if (command.equals("updateTalkPro")) {
			action = new UpdateTalkProAction();
		} else if (command.equals("deleteTalk")) {
			action = new DeleteTalkAction(no);
		}else if (command.equals("upLike")) {
			action = new UpLikeAction(no);
		}else if(command.equals("comment")) {
			action = new CommentAction();
		}
		return action;
	}
}

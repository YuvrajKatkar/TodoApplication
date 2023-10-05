package todo;

import java.util.ArrayList;

public class TaskHolder {
	public static ArrayList<Task> list;

	@Override
	public String toString() {
		return "TaskHolder [list=" + list + "]";
	}

	public ArrayList<Task> getList() {
		return list;
	}

	

	public TaskHolder() {
		super();
		if(list==null) {
			list = new ArrayList<>();
		}
		
	}
}

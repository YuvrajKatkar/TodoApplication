package todo;

public class Task {
	private String message;

	public Task(String message) {
		super();
		this.message = message;
	}

	public Task() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Task [message=" + message + "]";
	}
	
}


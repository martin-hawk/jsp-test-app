package pro.vanagas.todo;

public class Todo {
	private String item;
	private String category;

	public Todo(String item, String category) {
		super();
		this.item = item;
		this.category = category;
	}

	public String getItem() {
		return item;
	}

	public String getCategory() {
		return category;
	}

	public void setItem(String item) {
		this.item = item;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	@Override
	public String toString() {
		return String.format("Todo [item=%s, category=%s]", item, category);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((item == null) ? 0 : item.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Todo other = (Todo) obj;
		if (item == null) {
			if (other.item != null)
				return false;
		} else if (!item.equals(other.item))
			return false;
		return true;
	}
}

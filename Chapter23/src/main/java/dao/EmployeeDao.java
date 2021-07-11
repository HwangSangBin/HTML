package dao;

public class EmployeeDao {
	private static EmployeeDao single = null;
	SqlSessionFactory factory;
	
	private EmployeeDao() {
		factory = MyBatisConnector.getInstance().getSqlSessionFactory()
	}
	
	public static EmployeeDao getInstance() {
		if(single == null) {
			single = new EmployeeDao();
		}
		return single;
	}
}

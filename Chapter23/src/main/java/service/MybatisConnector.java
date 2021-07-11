package service;

import java.io.IOException;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisConnector {
	SqlSessionFactory factory = null;
	private static MybatisConnector connector;
	
	private MybatisConnector() {
		try {
			Reader reader = Resources.getResourceAsReader("config/mybatis/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
		} catch(IOException e) {
			e.printStackTrace();
		}
	}
	public static MybatisConnector getInstance() {
		if(connector == null) {
			connector = new MybatisConnector();
		}
		return connector;
	}
	public SqlSessionFactory getSqlSessionFactory() {
		return factory;
	}
}

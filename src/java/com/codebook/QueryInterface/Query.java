package com.codebook.QueryInterface;
import com.codebook.bean.bean;
import java.sql.*;
public interface Query {
    int Modify(String query,bean b);
    int Remove(String query);
    
}

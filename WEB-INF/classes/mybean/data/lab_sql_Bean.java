package mybean.data;
public class lab_sql_Bean{
   String []columnName ;           //�������
   String [][] tableRecord=null;   //��Ų�ѯ���ļ�¼
   public lab_sql_Bean() {
      tableRecord = new String[1][1];
      columnName = new String[1]; 
   }
   public void setTableRecord(String [][] s){
      tableRecord=s;
   }
   public String [][] getTableRecord(){
      return tableRecord;
   }
   public void setColumnName(String [] s) {
      columnName = s;
   }
   public String [] getColumnName() {
      return columnName;
   }
}


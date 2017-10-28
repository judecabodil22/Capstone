package financials.common;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

import financials.model.CodeNameModel;

public class constants {
//	public static String TBL_FS_FUND = "tbl_fs_fund";
//	public static String TBL_FS_TRANSACTYPE = "tbl_fs_transactype";
//	public static String TBL_FS_TEMPHEADER = "tbl_fs_tempheader";
//	public static String TBL_FS_RESPCENTER = "tbl_fs_respcenter";
	public static String TBL_FS_FUND = "tbl_fund";
	public static String TBL_FS_TRANSACTYPE = "tbl_transaction_type";
	public static String TBL_FS_TEMPHEADER = "tbl_template_header";
	public static String TBL_FS_RESPCENTER = "responsibility_center";
}

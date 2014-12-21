package com.bsg.report;

import static net.sf.dynamicreports.report.builder.DynamicReports.*;

import java.math.BigDecimal;

import com.bsg.report.Templates;
import net.sf.dynamicreports.jasper.builder.export.JasperXlsExporterBuilder;
import net.sf.dynamicreports.jasper.constant.JasperProperty;
import net.sf.dynamicreports.report.builder.column.TextColumnBuilder;
import net.sf.dynamicreports.report.datasource.DRDataSource;
import net.sf.dynamicreports.report.exception.DRException;
import net.sf.jasperreports.engine.JRDataSource;

public class DynamicReport {

	public DynamicReport() {
		build();
	}

	private void build() {
		try {
			JasperXlsExporterBuilder xlsExporter = export.xlsExporter("c:/report.xls")
			                                             .setDetectCellType(true)
			                                             .setIgnorePageMargins(true)
			                                             .setWhitePageBackground(false)
			                                             .setRemoveEmptySpaceBetweenColumns(true);

			TextColumnBuilder<String> itemColumn = col.column("Item", "item", type.stringType())
			                                          .setFixedWidth(30)
			                                          .setStretchWithOverflow(false)
			                                          .addProperty(JasperProperty.PRINT_KEEP_FULL_TEXT, "true");

			report()
			  .setColumnTitleStyle(Templates.columnTitleStyle)
			  .addProperty(JasperProperty.EXPORT_XLS_FREEZE_ROW, "2")
			  .ignorePageWidth()
			  .ignorePagination()
			  .columns(
			  	itemColumn,
			  	col.column("Quantity",   "quantity",  type.integerType()),
			  	col.column("Unit price", "unitprice", type.bigDecimalType()))
			  .setDataSource(createDataSource())
			  //.toXls(xlsExporter);
			  .show();
		} catch (DRException e) {
			e.printStackTrace();
		}
	}

	private JRDataSource createDataSource() {
		DRDataSource dataSource = new DRDataSource("item", "quantity", "unitprice");
		for (int i = 0; i < 5; i++) {
			dataSource.add("Very long book name", (int) (Math.random() * 10) + 1, new BigDecimal(Math.random() * 100 + 1));
		}
		return dataSource;
	}

	public static void main(String[] args) {
		new DynamicReport();
	}
}

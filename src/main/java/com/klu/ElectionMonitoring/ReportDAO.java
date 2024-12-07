package com.klu.ElectionMonitoring;

import java.util.List;
import com.klu.ElectionMonitoring.Entity.Report;

public interface ReportDAO {
    void newReport(Report r);

    List<Report> getAllReports();

    void deleteReportById(Long id);
}

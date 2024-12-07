package com.klu.ElectionMonitoring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.ElectionMonitoring.Entity.Report;

@Service
public class ReportDAOClass implements ReportDAO {

    @Autowired
    private ReportRepository reportRepository;

    @Override
    public void newReport(Report r) {
        // Save a new report to the database
        reportRepository.save(r);
    }

    @Override
    public List<Report> getAllReports() {
        // Fetch all reports from the database
        return reportRepository.findAll();
    }

    @Override
    public void deleteReportById(Long id) {
        if (!reportRepository.existsById(id)) {
            throw new IllegalArgumentException("Report with ID " + id + " does not exist.");
        }
        reportRepository.deleteById(id);
    }
}

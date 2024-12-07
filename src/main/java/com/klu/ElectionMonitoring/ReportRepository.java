package com.klu.ElectionMonitoring;

import com.klu.ElectionMonitoring.Entity.Report;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReportRepository extends JpaRepository<Report, Long> {
    // JpaRepository provides methods like existsById() and deleteById()
}

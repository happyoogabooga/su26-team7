//TODO: add a view by course ID
package com.example.ScheduleSidekick.repository;

import java.util.List;
import com.example.ScheduleSidekick.entity.Enrollment;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

public interface EnrollmentRepository extends JpaRepository<Enrollment, Long>{
    Enrollment findByEnrollmentId(long Id);
    List<Enrollment> findByStudentId(long studentId);
}

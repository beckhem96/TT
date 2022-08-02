package com.tt9ood.db.repository;

import com.tt9ood.db.entity.Share;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ShareRepository extends JpaRepository<Share, Long> {

}

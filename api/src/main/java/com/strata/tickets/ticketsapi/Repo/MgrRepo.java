package com.strata.tickets.ticketsapi.Repo;

import com.strata.tickets.ticketsapi.DAO.MgrDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MgrRepo extends JpaRepository<MgrDetails, Long> {

    public List<MgrDetails> findByAgentId(Long agentId);
}

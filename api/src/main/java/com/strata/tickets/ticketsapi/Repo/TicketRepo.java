package com.strata.tickets.ticketsapi.Repo;

import com.strata.tickets.ticketsapi.DAO.TicketDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TicketRepo extends JpaRepository<TicketDetails, Long> {

    public List<TicketDetails> findByAgentId(Long agentId);

    public List<TicketDetails> findByTicketNum(Long ticketNum);
}

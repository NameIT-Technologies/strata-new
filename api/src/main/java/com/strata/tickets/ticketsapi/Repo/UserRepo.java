package com.strata.tickets.ticketsapi.Repo;

import com.strata.tickets.ticketsapi.DAO.UserDetail;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepo extends JpaRepository<UserDetail,Long> {

    public UserDetail findByUserIdAndPassword(Long userId, String password);
}

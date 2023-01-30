package com.strata.tickets.ticketsapi.DAO;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

import java.sql.Timestamp;

@Entity
@Table(name="MGR_AGENT_XREF")
public class MgrDetails {

    @Id
    @Column(name="FIELD_AGENT_ID")
    private Long agentId;
    @Column(name="MANAGER_ID")
    private Long mgrId;
    @Column(name="CREATED_DT")
    private Timestamp createdDt;

    public Long getAgentId() {
        return agentId;
    }

    public void setAgentId(Long agentId) {
        this.agentId = agentId;
    }

    public Long getMgrId() {
        return mgrId;
    }

    public void setMgrId(Long mgrId) {
        this.mgrId = mgrId;
    }

    public Timestamp getCreatedDt() {
        return createdDt;
    }

    public void setCreatedDt(Timestamp createdDt) {
        this.createdDt = createdDt;
    }
}

package com.strata.tickets.ticketsapi.DAO;

import com.fasterxml.jackson.annotation.JsonFormat;
import jakarta.persistence.*;

import java.sql.Timestamp;

@Entity
@Table(name="TICKET_DTL")
public class TicketDetails {

    @Id
    @Column(name="TICKET_ID")
    private Long ticketNum;
    @Column(name="START_TIME")
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd'T'HH:mm:ss.SSS")
    private Timestamp startTime;
    @Column(name="END_TIME")
    @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd'T'HH:mm:ss.SSS")
    private Timestamp endTime;
    @Column(name="START_MI")
    private Long startMileage;
    @Column(name="END_MI")
    private Long endMileage;
    @Column(name="CUSTOMER")
    private String customerName;
    @Column(name="JOB_SITE")
    private String jboSite;
    @Column(name="TOTAL_MI")
    private Long totalMiles;
    @Column(name="TOTAL_HRS")
    private Long totalHrs;
    @Column(name="TICKET_STATUS")
    private String ticketStatus;
    @Column(name="FIELD_AGENT_ID")
    private Long agentId;
    @Column(name="MANAGER_ID")
    private Long mgrId;
   @Column(name="CREATED_DT")
   @JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy-MM-dd'T'HH:mm:ss.SSS")
   private Timestamp createDt;
   @Column(name="WORK_DESC")
   private String desc;

    public Timestamp getCreateDt() {
        return createDt;
    }

    public void setCreateDt(Timestamp createDt) {
        this.createDt = createDt;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public Long getTicketID() {
        return ticketNum;
    }

    public void setTicketID(Long ticketID) {
        this.ticketNum = ticketID;
    }

    public Timestamp getStartTime() {
        return startTime;
    }

    public void setStartTime(Timestamp startTime) {
        this.startTime = startTime;
    }

    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    public Long getStartMileage() {
        return startMileage;
    }

    public void setStartMileage(Long startMileage) {
        this.startMileage = startMileage;
    }

    public Long getEndMileage() {
        return endMileage;
    }

    public void setEndMileage(Long endMileage) {
        this.endMileage = endMileage;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getJboSite() {
        return jboSite;
    }

    public void setJboSite(String jboSite) {
        this.jboSite = jboSite;
    }

    public Long getTotalMiles() {
        return totalMiles;
    }

    public void setTotalMiles(Long totalMiles) {
        this.totalMiles = totalMiles;
    }

    public Long getTotalHrs() {
        return totalHrs;
    }

    public void setTotalHrs(Long totalHrs) {
        this.totalHrs = totalHrs;
    }

    public String getTicketStatus() {
        return ticketStatus;
    }

    public void setTicketStatus(String ticketStatus) {
        this.ticketStatus = ticketStatus;
    }

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

/*    public Timestamp getCreateDt() {
        return createDt;
    }

    public void setCreateDt(Timestamp createDt) {
        this.createDt = createDt;
    }*/
}

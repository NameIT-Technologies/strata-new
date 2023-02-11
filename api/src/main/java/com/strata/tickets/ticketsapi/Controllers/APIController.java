package com.strata.tickets.ticketsapi.Controllers;

import com.strata.tickets.ticketsapi.DAO.*;
import com.strata.tickets.ticketsapi.Repo.MgrRepo;
import com.strata.tickets.ticketsapi.Repo.TicketRepo;
import com.strata.tickets.ticketsapi.Repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.EntityModel;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@RestController
public class APIController {

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private TicketRepo tktRepo;

    @Autowired
    private MgrRepo mgrRepo;

    @Autowired
    private Message messageSvc;

    @GetMapping("/getusers")
    List<UserDetail> getUsers()
    {
        List<UserDetail> userInfo=userRepo.findAll();
        return userInfo;
    }

    @RequestMapping(value="/createticket",method=RequestMethod.POST,
            consumes=MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<TicketDetails> creteTicket(@RequestBody TicketDetails tkt)
    {
        Long mgrId;
        System.out.println("CreateTicket Called =>"+ tkt.getTicketID());

        List<MgrDetails> mgrList=mgrRepo.findByAgentId(tkt.getAgentId());
        if(mgrList.size()>0) {
            mgrId= mgrList.get(0).getMgrId();
            tkt.setMgrId(mgrId);
        }
        tktRepo.save(tkt);
        return ResponseEntity.ok(tkt);
        //return tkt;
    }

    @GetMapping("/gettickets")
    //public List<TicketDetails> getTickets()
    public ResponseEntity<Object> getTickets()
    {
        //return  tktRepo.findAll();
        try {
            List<TicketDetails> tkts = tktRepo.findAll();
            List<TicketDetails> manipulatedTkts=new ArrayList<>();
            for(TicketDetails tkt: tkts)
            {
                if(tkt.getTicketStatus().equalsIgnoreCase( "NEW")) {
                    tkt.setTicketStatus("warning");
                    manipulatedTkts.add(tkt);
                }else
                {
                    tkt.setTicketStatus("success");
                    manipulatedTkts.add(tkt);
                }
            }
            return ResponseHandler.generateResponse("Success", HttpStatus.OK, tkts);
        }catch(Exception e)
        {
            return ResponseHandler.generateResponse(e.getMessage(),HttpStatus.MULTI_STATUS, null);
        }


    }

    /*@GetMapping("/gettickets/{agentid}")
    public List<TicketDetails> getTickets(@PathVariable Long agentid)
    {
        System.out.println("Agent ID => "+ agentid);
        return  tktRepo.findByAgentId(agentid);
    }*/


    @GetMapping("/gettickets/{agentid}")
    public ResponseEntity<Object> getTickets(@PathVariable Long agentid)
    {
        System.out.println("Agent ID => "+ agentid);
        List<TicketDetails> tkts=  tktRepo.findByAgentId(agentid);
        List<TicketDetails> manipulatedTkts=new ArrayList<>();
        for(TicketDetails tkt: tkts)
        {
            if(tkt.getTicketStatus().equalsIgnoreCase( "NEW")) {
                tkt.setTicketStatus("warning");
                manipulatedTkts.add(tkt);
            }else
            {
                tkt.setTicketStatus("success");
                manipulatedTkts.add(tkt);
            }
        }
        try
        {
            return ResponseHandler.generateResponse("Success", HttpStatus.OK, manipulatedTkts);
        }catch (Exception e)
        {
            return ResponseHandler.generateResponse(e.getMessage(),HttpStatus.MULTI_STATUS, null);
        }
    }


    @GetMapping("/getticket/{ticketid}")
    public List<TicketDetails> getTicketDtl(@PathVariable Long ticketid)
    {
        System.out.println("Ticket ID => "+ ticketid);
        return  tktRepo.findByTicketNum(ticketid);
    }

    @GetMapping("/getmgrs")
    public List<MgrDetails> getManagers()
    {
        return  mgrRepo.findAll();

    }

    @GetMapping("/getmgr/{agentid}")
    public List<MgrDetails> getManagerForAgent(@PathVariable Long agentid)
    {
        return  mgrRepo.findByAgentId(agentid);

    }

    @DeleteMapping("/deleteticket/{ticketid}")
    public ResponseEntity<Object> deleteTicketDtl(@PathVariable Long ticketid)
    {
        TicketDetails tkts=tktRepo.findById(ticketid).get();
        Long agentId= tkts.getAgentId();
        System.out.println("Agent ID => "+agentId);
        tktRepo.deleteById(ticketid);
        return getTickets(agentId);
    }

    @RequestMapping(value="/authenticate",method=RequestMethod.POST,
            consumes=MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Message> authenticate(@RequestBody UserDetail user)
    {
        Long userId=user.getUserId();
        String password=user.getPassword();
        System.out.println("userId =>"+userId+"; Password =>"+password);
        UserDetail userDtl=userRepo.findByUserIdAndPassword(userId, password);
        if(userDtl !=null)
        {
            messageSvc.setMessage("Login Successful");

        }else {
            messageSvc.setMessage("Login Failed");

        }

        return ResponseEntity.ok(messageSvc);
    }

    @GetMapping(value="/getusername/{userid}", produces=MediaType.APPLICATION_JSON_VALUE)
    public UserDetail getUserName(@PathVariable Long userid)
    {
        return userRepo.findById(userid).get();
    }


}

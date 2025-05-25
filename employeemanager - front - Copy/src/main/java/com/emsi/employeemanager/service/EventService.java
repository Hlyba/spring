package com.emsi.employeemanager.service;

import com.emsi.employeemanager.exception.UserNotFoundException;
import com.emsi.employeemanager.model.Event;
import com.emsi.employeemanager.model.Employee;
import com.emsi.employeemanager.repo.EventRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EventService {
    private final EventRepo eventRepo;

    @Autowired
    public EventService(EventRepo eventRepo) {
        this.eventRepo = eventRepo;
    }

    public Event addEvent(Event event) {
        return eventRepo.save(event);
    }

    public List<Event> findAllEvents() {
        return eventRepo.findAll();
    }

    public Event updateEvent(Event event) {
        return eventRepo.save(event);
    }

    public Event findEventById(Long id) {
        return eventRepo.findEventById(id)
                .orElseThrow(() -> new UserNotFoundException("Event by id " + id + " was not found"));
    }

    @Transactional
    public void deleteEvent(Long id) {
        eventRepo.deleteEventById(id);
    }

    public void assignEmployeeToEvent(Event event, Employee employee) {
        event.addEmployee(employee);
        eventRepo.save(event);
    }

    public void removeEmployeeFromEvent(Event event, Employee employee) {
        event.removeEmployee(employee);
        eventRepo.save(event);
    }
} 
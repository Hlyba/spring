package com.emsi.employeemanager.controller;

import com.emsi.employeemanager.model.Event;
import com.emsi.employeemanager.model.Employee;
import com.emsi.employeemanager.service.EventService;
import com.emsi.employeemanager.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/events")
public class EventWebController {

    private final EventService eventService;
    private final EmployeeService employeeService;

    public EventWebController(EventService eventService, EmployeeService employeeService) {
        this.eventService = eventService;
        this.employeeService = employeeService;
    }

    @GetMapping("/calendar")
    public String viewCalendar(Model model) {
        model.addAttribute("events", eventService.findAllEvents());
        return "calendar";
    }

    @GetMapping("/new")
    public String showNewEventForm(Model model) {
        Event event = new Event();
        model.addAttribute("event", event);
        model.addAttribute("employees", employeeService.findAllEmployees());
        return "new_event";
    }

    @PostMapping("/save")
    public String saveEvent(@ModelAttribute("event") Event event) {
        eventService.addEvent(event);
        return "redirect:/events/calendar";
    }

    @GetMapping("/edit/{id}")
    public String showUpdateForm(@PathVariable("id") Long id, Model model) {
        Event event = eventService.findEventById(id);
        model.addAttribute("event", event);
        model.addAttribute("employees", employeeService.findAllEmployees());
        return "edit_event";
    }

    @GetMapping("/delete/{id}")
    public String deleteEvent(@PathVariable("id") Long id) {
        eventService.deleteEvent(id);
        return "redirect:/events/calendar";
    }

    @PostMapping("/{eventId}/assign/{employeeId}")
    public String assignEmployee(@PathVariable Long eventId, @PathVariable Long employeeId) {
        Event event = eventService.findEventById(eventId);
        Employee employee = employeeService.findEmployeeById(employeeId);
        eventService.assignEmployeeToEvent(event, employee);
        return "redirect:/events/edit/" + eventId;
    }

    @PostMapping("/{eventId}/remove/{employeeId}")
    public String removeEmployee(@PathVariable Long eventId, @PathVariable Long employeeId) {
        Event event = eventService.findEventById(eventId);
        Employee employee = employeeService.findEmployeeById(employeeId);
        eventService.removeEmployeeFromEvent(event, employee);
        return "redirect:/events/edit/" + eventId;
    }
} 
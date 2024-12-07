package com.klu.ElectionMonitoring;
import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.klu.ElectionMonitoring.Entity.Admin;
import com.klu.ElectionMonitoring.Entity.Report;
import com.klu.ElectionMonitoring.Entity.User;

import jakarta.servlet.http.HttpSession;

@Controller
public class ControllerProject {
	@Autowired
	private UserDAO ud;
	@Autowired
	private AdminDAO ad;
	
	@Autowired
	private ReportDAO rr;
	@GetMapping("/")
	public String welcome() {
		return "Welcome";
	}
	
	@GetMapping("/home")
	public String home() {
		return "Home";
	}
	
	@GetMapping("/SignUp")
	public String signup() {
		return "SignUp";
	}
	@PostMapping("/getLogin")
	public String getlogin(@ModelAttribute User u, Model model) {
		ud.newUser(u);
		return "Login";
	}
	
	@GetMapping("/login")
	public String login() {
		return "Login";
	}
	
	@PostMapping("/loginUser")
	public String login(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
	    User user = ud.findUser(username, password);
	    if (user != null) {
	        session.setAttribute("user", user); // Store user in session
	        return "Home";
	    } else {
	        model.addAttribute("error", "Invalid username or password");
	        return "Login"; 
	    }
	}

	
	
	@GetMapping("/AboutUs")
	public String aboutUs() {
		return "AboutUs";
	}
	
	@GetMapping("/ContactUs")
	public String contactUs() {
		return "ContactUs";
	}
	
	@GetMapping("/ReportElection")
	public String reportElection() {
		return "ReportElection";
	}
	
	 @PostMapping("/ThanksMessage")
	    public String thanksMessage(@ModelAttribute Report r, Model model) {
	   
	        rr.newReport(r); 
	        
	        model.addAttribute("message", "Thank you for your submission!");

	        return "ThanksMessage"; 
	 }
	@GetMapping("/AdminLoginPage")
	public String adminLogiPage() {
		return "AdminLoginPage";
	}
	
	
	
	@PostMapping("/AdminLogin")
    public String adminLogin(@RequestParam String username, @RequestParam String password, HttpSession session , Model model) {
        Admin admin = ad.findAdmin(username, password);
        if (admin != null) {
            session.setAttribute("admin", admin);
            return "AdminHome";
        } else {
            model.addAttribute("error", "Invalid username or password");
            return "AdminLoginPage";
        }
    }
	
	@GetMapping("AdminHome")
	public String adminHome() {
		return "AdminHome";
	}

	
	
	@PostMapping("/deleteUser")
	public String deleteUser(@RequestParam String username) {
	    // Delete the user from the database
	    ud.deleteUser(username);
	    return "redirect:/viewAllUsers"; // Redirect back to the list of users
	}
	
	@GetMapping("/addUser")
	public String addUser() {
		return "AddUser";
	}
	
	 @PostMapping("/addNewUser")
	    public String addNewUser(@ModelAttribute User user, Model model) {
	    
	        if (!user.getPassword().equals(user.getCpassword())) {
	            model.addAttribute("error", "Passwords do not match");
	            return "SignUp"; 
	        }
	        ud.newUser(user);

	        return "AdminHome";
	    }
	 
		
		@GetMapping("/viewAllUsers")
	    public String viewAllUsers(Model model) {
	        // Fetch all users from the database
	        List<User> allUsers = ud.getAllUsers();

	        model.addAttribute("users", allUsers);

	        return "AllUsers";
	    }
	 @GetMapping("/viewReports")
	 public String viewAllReports(Model model) {
	     List<Report> allReports = rr.getAllReports();
	     System.out.println("Reports in Model: " + allReports);  // Debug log
	     
	     model.addAttribute("reports", allReports);
	     return "ViewReports";
	 }
	 
	 @GetMapping("/TrackVote")
	 public String trackVoting() {
		 return "TrackVoting";
	 }
	 @GetMapping("/votings")
	 public String Voting() {
		 return "Voting";
	 }
	 @PostMapping("/voting")
	 public String Votings() {
		 return "Voting";
	 }

	 @PostMapping("/deleteReport")
	    public String deleteReport(@RequestParam("reportId") Long reportId, RedirectAttributes redirectAttributes) {
	        try {
	            // Attempt to delete the report
	            rr.deleteReportById(reportId);
	            redirectAttributes.addFlashAttribute("message", "Report deleted successfully.");
	        } catch (IllegalArgumentException e) {
	            // Handle errors, e.g., if the report does not exist
	            redirectAttributes.addFlashAttribute("error", "Failed to delete the report: " + e.getMessage());
	        }
	        // Redirect to the view page
	        return "redirect:/viewReports";
	    }
	 @GetMapping("/List")
	 public String List() {
		 return "List";
	 }
	
}

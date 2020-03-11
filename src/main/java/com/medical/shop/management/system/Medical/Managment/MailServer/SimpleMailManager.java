package com.medical.shop.management.system.Medical.Managment.MailServer;

import java.util.Properties;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.medical.shop.management.system.Medical.Managment.Model.Users;

@Service
public class SimpleMailManager  {
	
	public final boolean sendMessage(Users user) {
    JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
        mailSender.setHost("smtp.gmail.com");
        mailSender.setPort(465);

        mailSender.setUsername("ashvanijaiswal7897@gmail.com");
        mailSender.setPassword("@9307638130");
        Properties mailProp = mailSender.getJavaMailProperties();
        mailProp.put("mail.transport.protocol", "smtp");
        mailProp.put("mail.smtp.auth", "true");
        mailProp.put("mail.smtp.starttls.enable", "true");
        mailProp.put("mail.smtp.starttls.required", "true");
        mailProp.put("mail.debug", "true");
        mailProp.put("mail.smtp.ssl.enable", "true");

        MimeMessage mimeMessage = mailSender.createMimeMessage();
        try {
            MimeMessageHelper helper = new MimeMessageHelper(mimeMessage, true);
            helper.setTo(user.getEmailId());
            helper.setSubject("Medical_shop management team");
            helper.setText(
    	            "Dear " + user.getEmailId()+" your password is "
    		                + user.getPassword()
    		                + ", thank you for Login your account."
    		                );
            mailSender.send(mimeMessage); 
            return true;
        } catch (MessagingException e) {
            e.printStackTrace();
        }
        return false;
    }
	    }


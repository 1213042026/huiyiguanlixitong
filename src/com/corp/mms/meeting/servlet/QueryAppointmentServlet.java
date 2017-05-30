package com.corp.mms.meeting.servlet;

import com.corp.mms.meeting.service.MeetingService;
import com.corp.mms.page.vo.Page;
import com.corp.mms.user.vo.User;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QueryAppointmentServlet extends HttpServlet
{
  private static Page page = null;

  public void destroy()
  {
    super.destroy();
  }

  public void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    doPost(request, response);
  }

  public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    ArrayList meetingList = new ArrayList();
    MeetingService ms = new MeetingService();
    User user = (User)request.getSession().getAttribute("user");

    meetingList = ms.GetMeetingLs(user.getWorkersID());
    request.setAttribute("meetingList", meetingList);
    // request.setAttribute("page", page);
    request.getRequestDispatcher("../Main/MeetingManage/applicationquery.jsp")
      .forward(request, response);
  }

  public void init()
    throws ServletException
  {
  }
}
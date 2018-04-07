import sun.rmi.runtime.Log;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(urlPatterns = "/regist.do")
public class TestServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String mailname = req.getParameter("mailname");
        System.out.println("mailname = " + mailname);
        String result = "";
        if ("123@qq.com".equals(mailname)) {
            result = "YES";
        } else {
            result = "NO";
        }
        PrintWriter pw = resp.getWriter();
        pw.write(result);
//        pw.print(result);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

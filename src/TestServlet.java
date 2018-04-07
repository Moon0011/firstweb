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
        super.doGet(req, resp);
        System.out.println("TestServlet doget");
        String mailname = req.getParameter("mailname");
        System.out.println("mailname = " + mailname);
        String result = "";
        if ("123@qq.com".equals(mailname)) {
            result = "邮箱已注册";
        } else {
            result = "邮箱可以使用";
        }
        PrintWriter pw = resp.getWriter();
        pw.write(result);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}

package actions;

import ejb.UserFacadeRemote;
import entity.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionForward;
import utilities.EJBUtility;

public class DeleteUserAction extends Action {
    
    private final static String SUCCESS = "return";
    private UserFacadeRemote userFacadeRemote;
    
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        /* Retrieve Session */
        HttpSession session = request.getSession();
        /* Retrieve User Record */
        User userRecord = (User) session.getAttribute("userRecord");
        /* Retrieve Remote Object */
        userFacadeRemote = (UserFacadeRemote) EJBUtility.lookup("UserFacade");
        /* Delete User */
        userFacadeRemote.remove(userRecord);
        /* Invalidate the Session */
        session.invalidate();
        
        return mapping.findForward(SUCCESS);
    }
}

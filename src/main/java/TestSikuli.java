import org.apache.commons.exec.OS;
import org.sikuli.script.FindFailed;
import org.sikuli.script.Screen;

/**
 * Created by cmiller on 6/27/16.
 *
 */

public class TestSikuli {

    public static void main(String[] args) {
        Screen s = new Screen();
        try{
            if (OS.isFamilyMac()) {
                s.click("images/mac/spotlight.png", 0);
                s.wait("images/mac/spotlight-input.png");
                s.type(null, "hello world\n", 0);
            }else{
                s.click("images/spotlight.png", 0);
                s.wait("images/spotlight-input.png");
                s.type(null, "hello world\n", 0);
            }
        }
        catch(FindFailed e){
            e.printStackTrace();
        }

    }
}

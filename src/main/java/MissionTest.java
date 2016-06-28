import org.sikuli.script.FindFailed;
import org.sikuli.script.Screen;

/**
 * Created by cmiller on 6/28/16.
 *
 */

public class MissionTest {

    public static void main(String[] args) {

        Screen s = new Screen();
        try{
            s.find("images/mission.png");
            s.doubleClick("images/mission.png");
        }catch(FindFailed e){

        }

    }
}

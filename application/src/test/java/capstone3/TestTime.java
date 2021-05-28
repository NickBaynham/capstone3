package capstone3;

import com.github.nickbaynham.capstone3.Time;
import com.github.nickbaynham.captstone3.lib.TimeStamp;
import org.junit.Test;

public class TestTime {

    @Test
    public void testTimeObject() {
        Time time = new Time();
    }

    @Test
    public void testTimeStamp() {
        String timestamp = TimeStamp.getTime();
        org.junit.Assert.assertNotNull(timestamp);
    }
}

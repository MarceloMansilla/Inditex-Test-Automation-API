package petStore;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
/*import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;*/

@KarateOptions(tags = {"@regression","@user","@pets"})
class PetStoreTest {


    @Test
    void testParallel() {
        Results results = Runner.path("classpath:petStore")
                //.outputCucumberJson(true)
                .parallel(10);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}

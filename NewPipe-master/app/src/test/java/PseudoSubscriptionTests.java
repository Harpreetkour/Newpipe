
/**
 * Created by harpreetkourpujari on 5/4/16.
 */
import org.junit.Test;
//import java.util.regex.Pattern;

import static org.junit.Assert.assertEquals;

import android.test.AndroidTestCase;

import org.schabi.newpipe.VideoItemListActivity;
import org.schabi.newpipe.extractor.AbstractVideoInfo;
import org.schabi.newpipe.extractor.SearchResult;
import org.schabi.newpipe.extractor.ServiceList;
import org.schabi.newpipe.extractor.StreamPreviewInfo;
import org.schabi.newpipe.extractor.SearchEngine;
import org.schabi.newpipe.Downloader;
import org.schabi.newpipe.extractor.StreamPreviewInfoCollector;
import  org.schabi.newpipe.extractor.services.youtube.YoutubeSearchEngine;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import org.schabi.newpipe.VideoItemListFragment;
public class PseudoSubscriptionTests {
    private SearchResult result;

    @Test
    public void test_query_URL() throws Exception  {
            //super.setUp();
            YoutubeSearchEngine youtubeSearchEngine =new YoutubeSearchEngine(null,0);
            SearchEngine engine = ServiceList.getService("Youtube")
                    .getSearchEngineInstance(new Downloader());

            result = engine.search("https://www.youtube.com/channel/UCP3Dp2rGnmtrWjAro-FsxvA/videos",
                    0,true, "de", new Downloader()).getSearchResult();
    }

    VideoItemListFragment VideoItemListFragment=new VideoItemListFragment();

    public void test_subscribe_button() throws Exception  {
        //boolean isSubscribed = shp.getBoolean(VideoItemListActivity.PREFS_KEY_SUBSCRIBED, false);
        //String channelId = shp.getString(VideoItemListActivity.PREFS_KEY_CHANNEL_ID, "");
    }
}

package edu.ysu.ling.crawler;

import edu.uci.ics.crawler4j.crawler.Page;
import edu.uci.ics.crawler4j.crawler.WebCrawler;
import edu.uci.ics.crawler4j.url.WebURL;
import edu.ysu.ling.htmlParse.*;

import java.util.regex.Pattern;

/**
 * Created by 10047 on 2017/4/22.
 */

public class Crawler extends WebCrawler{

    private final static Pattern BINARY_FILES_EXTENSIONS =
            Pattern.compile(".*\\.(bmp|gif|jpe?g|png|tiff?|pdf|ico|xaml|pict|rif|pptx?|ps" +
                    "|mid|mp2|mp3|mp4|wav|wma|au|aiff|flac|ogg|3gp|aac|amr|au|vox" +
                    "|avi|mov|mpe?g|ra?m|m4v|smil|wm?v|swf|aaf|asf|flv|mkv" +
                    "|zip|rar|gz|7z|aac|ace|alz|apk|arc|arj|dmg|jar|lzip|lha)" +
                    "(\\?.*)?$"); // For url Query parts ( URL?q=... )
    private final static Pattern JobInDaJie = Pattern.compile("https://job.dajie.com/(.*)?.html");
    private final static Pattern JobInLaGou = Pattern.compile("https://www.lagou.com/jobs/[0-9]*.html");
    private final static Pattern JobInZhiLian = Pattern.compile("http://jobs.zhaopin.com/[0-9]*.htm?(.*?)");
    private final static Pattern JobInWuYou = Pattern.compile("http://jobs.51job.com/(.*?)/[0-9]*.html?(.*?)");

    @Override
    public boolean shouldVisit(Page page, WebURL url) {
        String href = url.getURL().toLowerCase();
        return !BINARY_FILES_EXTENSIONS.matcher(href).matches()
                && (href.contains("lagou.com/") || href.contains("job.dajie.com/") || href.startsWith("https://www.zhipin.com/")
                || href.contains("zhaopin.com")) || href.contains("51job.com");
    }

    @Override
    public void visit(Page page) {
        String url = page.getWebURL().getURL();
        int docid = page.getWebURL().getDocid();
        if (url.startsWith("https://www.zhipin.com/job_detail/")){
            MethodInBoss.parseJobInBOSS(page, docid, url);
        } else if (JobInDaJie.matcher(url).matches()) {
            MethodInDaJie.parseDaJie(page, docid, url);
        } else if (JobInLaGou.matcher(url).matches()) {
            MethodInLaGou.parseLaGou(page, docid, url);
        } else if (JobInZhiLian.matcher(url).matches()) {
            MethodInZhiLian.parseZhiLian(page, docid, url);
        } else if (JobInWuYou.matcher(url).matches()) {
            MethodInWuYou.parseWuYou(page, docid, url);
        }
    }
}

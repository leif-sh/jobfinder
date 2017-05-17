package edu.ysu.ling.pojo;

/**
 * Created by ling on 2017/5/15.
 */
public class Page {
    private int thispage;
    private int nextpage;
    private int prepage;
    private int pagesize;
    private int pagecount;
    private int lastpage;

    public Page(int thispage) {
        this.thispage = thispage;
        this.nextpage = thispage+1;
        if (thispage > 0) {
            this.prepage = thispage - 1;
        } else {
            this.prepage = thispage;
        }
        this.pagesize = 20;
    }

    public int getThispage() {
        return thispage;
    }

    public void setThispage(int thispage) {
        this.thispage = thispage;
    }

    public int getNextpage() {
        return nextpage;
    }

    public void setNextpage(int nextpage) {
        this.nextpage = nextpage;
    }

    public int getPrepage() {
        return prepage;
    }

    public void setPrepage(int prepage) {
        this.prepage = prepage;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getPagecount() {
        return pagecount;
    }

    public void setPagecount(int pagecount) {
        this.pagecount = pagecount;
    }

    public int getLastpage() {
        return lastpage;
    }

    public void setLastpage(int lastpage) {
        this.lastpage = lastpage;
    }
}

package edu.ysu.ling.dao;/**
 * Created by 10047 on 2017/6/13.
 */

import edu.ysu.ling.pojo.Personlibrary;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/6/13
 * Time: 11:27
 **/
public interface IPersonLibraryDao {

    public abstract void insertPersonLibrary(Personlibrary personlibrary);

    public abstract List<Personlibrary> selectPersonLibraryByBusinessUserId(String businessUserId);

}

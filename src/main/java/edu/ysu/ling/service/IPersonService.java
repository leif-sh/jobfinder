package edu.ysu.ling.service;/**
 * Created by 10047 on 2017/6/13.
 */

import edu.ysu.ling.pojo.Dreamperson;
import edu.ysu.ling.pojo.Personlibrary;
import edu.ysu.ling.pojo.Personrecommend;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: ling
 * Date: 2017/6/13
 * Time: 9:33
 **/
public interface IPersonService {
    public abstract Dreamperson getDreamPerson(String businessUserId);

    public abstract Dreamperson changeDreamPerson(Dreamperson dreamperson);

    public abstract List<Personrecommend> findPersonRecommendByBusinessId(String businessUserId);

    public abstract Personrecommend findPersonRecommendById(String recommendId);

    public abstract boolean addPersonRecommend(Personrecommend personrecommend);

    public abstract boolean addPersonLibrary(Personlibrary personlibrary);

    public abstract List<Personlibrary> findPersonLibraryByBusinessUserId(String businessUserId);

}

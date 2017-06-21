package edu.ysu.ling.dao;

import edu.ysu.ling.pojo.Dreamperson;

import java.util.List;
import java.util.Map;

/**
 * Created by 10047 on 2017/6/13.
 */

public interface IDreamPersonDao {
    public abstract void insertDreamPerson(Dreamperson dreamperson);

    public abstract void updataDreamPerson(Dreamperson dreamperson);

    public abstract Dreamperson selectDreamPersonByBusinessUserId(String businessUserId);

    public abstract List<Dreamperson> selectDreamPersons(Map params);
}

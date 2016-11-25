package com.cs.dao.groups;

import com.cs.entity.Groups;

public interface GroupsDao {

   /**
    * 根据groupsNo查找组别
    * @return
    */
   Groups findGroupsByGNo(Groups groups);
}

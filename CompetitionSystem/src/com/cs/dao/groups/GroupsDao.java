package com.cs.dao.groups;

import com.cs.entity.Groups;

public interface GroupsDao {

   /**
    * 根据groupsNo查找组别
    * @return
    */
   Groups findGroupsByGNo(Groups groups);
   
   /**
    * 更新groups
    */
   Boolean uodateGroups(Groups groups);
   
   /**
    * 更新groups
    */
   Boolean uodateGroupsStatus(Groups groups);
   
}

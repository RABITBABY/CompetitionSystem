package com.cs.dao.groups;

import java.util.List;

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
    * 更新groups状态
    */
   Boolean uodateGroupsStatus(Groups groups);
   
   /**
    * 根据竞赛id查找组别
    * @return
    */
   List<Groups> findGroupsByComId(Integer comId);
   
}

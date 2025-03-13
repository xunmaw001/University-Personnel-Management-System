package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.KaoqindakaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.KaoqindakaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.KaoqindakaView;


/**
 * 考勤打卡
 *
 * @author 
 * @email 
 * @date 2020-12-30 11:01:17
 */
public interface KaoqindakaService extends IService<KaoqindakaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<KaoqindakaVO> selectListVO(Wrapper<KaoqindakaEntity> wrapper);
   	
   	KaoqindakaVO selectVO(@Param("ew") Wrapper<KaoqindakaEntity> wrapper);
   	
   	List<KaoqindakaView> selectListView(Wrapper<KaoqindakaEntity> wrapper);
   	
   	KaoqindakaView selectView(@Param("ew") Wrapper<KaoqindakaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<KaoqindakaEntity> wrapper);
   	
}


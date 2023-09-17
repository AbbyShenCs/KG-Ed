package edu.yctc.project.system.user.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import edu.yctc.common.exception.LoginException;
import edu.yctc.common.utils.StringUtils;
import edu.yctc.framework.config.GenesisConfig;
import edu.yctc.framework.web.controller.BaseController;
import edu.yctc.project.system.config.service.IConfigService;
import edu.yctc.project.system.menu.domain.Menu;
import edu.yctc.project.system.menu.service.IMenuService;
import edu.yctc.project.system.user.domain.User;

/**
 * 首页 业务处理
 * 
 * @author luna
 */
@Controller
public class IndexController extends BaseController
{
    @Autowired
    private IMenuService menuService;

    @Autowired
    private IConfigService configService;

    @Autowired
    private GenesisConfig genesisConfig;

	/**
	 * 系统首页
	 * @param mmap
	 * @return
	 */
	@GetMapping("/index")
    public String index(ModelMap mmap)
    {
        // 取身份信息
        User user = getSysUser();
	    if (StringUtils.isNull(user))
	    {
		    throw new LoginException("用户未登录，无法访问请求。");
	    }
	    mmap.put("user", user);

        // 根据用户id取出菜单
        List<Menu> menus = menuService.selectMenusByUser(user);
        mmap.put("menus", menus);
        mmap.put("user", user);
        mmap.put("sideTheme", configService.selectConfigByKey("sys.index.sideTheme"));
        mmap.put("skinName", configService.selectConfigByKey("sys.index.skinName"));
        mmap.put("copyrightYear", genesisConfig.getCopyrightYear());
        mmap.put("demoEnabled", genesisConfig.isDemoEnabled());
        return "index";
    }

    // 切换主题
    @GetMapping("/system/switchSkin")
    public String switchSkin(ModelMap mmap)
    {
        return "skin";
    }

    // 系统介绍
    @GetMapping("/system/main")
    public String main(ModelMap mmap)
    {
        mmap.put("version", genesisConfig.getVersion());
        return "main";
    }
}

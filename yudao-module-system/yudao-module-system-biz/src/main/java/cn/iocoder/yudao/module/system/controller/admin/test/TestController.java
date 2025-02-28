package cn.iocoder.yudao.module.system.controller.admin.test;

import cn.iocoder.yudao.framework.common.pojo.CommonResult;
import cn.iocoder.yudao.module.system.controller.admin.test.vo.LocalDateTImeVo;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "管理后台 - 测试")
@RestController
@RequestMapping("/system/test")
@Validated
public class TestController {

    @PostMapping("testLocalDateTime")
    public CommonResult<LocalDateTImeVo> testLocalDateTime(@RequestBody LocalDateTImeVo dateTimeVo) {
        return CommonResult.success(dateTimeVo);
    }
}

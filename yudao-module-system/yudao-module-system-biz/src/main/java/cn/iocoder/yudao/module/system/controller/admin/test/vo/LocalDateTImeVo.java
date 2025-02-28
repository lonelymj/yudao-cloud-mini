package cn.iocoder.yudao.module.system.controller.admin.test.vo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.annotation.JsonDeserialize;
import com.fasterxml.jackson.databind.annotation.JsonSerialize;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class LocalDateTImeVo {
    @JsonSerialize(using = LocalDateTimeSerializer.class) // 序列化（响应）
    @JsonDeserialize(using = LocalDateTimeDeserializer.class) // 反序列化（请求）
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    LocalDateTime dateTime;
}

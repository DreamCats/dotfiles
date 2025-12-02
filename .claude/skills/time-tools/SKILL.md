---
name: time-tools
description: 时间工具集 - 提供获取当前时间（格式化）、当前时间戳、范围时间、范围时间戳、指定时区的时间、指定时区的时间戳、近期时间戳范围（近5分钟、15分钟、30分钟等）功能
---

# 时间工具集 (time-tools)

## 功能概述
提供各类时间相关的工具函数，满足日常开发中对时间的各种需求。

## 核心功能

### 1. 获取当前时间（格式化）
```javascript
// 示例：获取当前时间（默认ISO格式）
const now = new Date();
console.log("当前时间 (ISO):", now.toISOString());

// 示例：获取当前时间（自定义格式 YYYY-MM-DD HH:mm:ss）
const formatDate = (date) => {
  const y = date.getFullYear();
  const m = String(date.getMonth() + 1).padStart(2, "0");
  const d = String(date.getDate()).padStart(2, "0");
  const h = String(date.getHours()).padStart(2, "0");
  const mm = String(date.getMinutes()).padStart(2, "0");
  const ss = String(date.getSeconds()).padStart(2, "0");
  return `${y}-${m}-${d} ${h}:${mm}:${ss}`;
};
console.log("当前时间 (YYYY-MM-DD HH:mm:ss):", formatDate(new Date()));
```

### 2. 获取当前时间戳
```javascript
// 毫秒级时间戳
console.log("当前毫秒级时间戳:", Date.now());

// 秒级时间戳
console.log("当前秒级时间戳:", Math.floor(Date.now() / 1000));
```

### 3. 获取范围时间（格式化）
```javascript
// 示例：获取过去7天到当前时间的范围
const getDateRange = (days) => {
  const now = new Date();
  const past = new Date();
  past.setDate(now.getDate() - days);
  return {
    start: formatDate(past),
    end: formatDate(now)
  };
};
console.log("过去7天时间范围:", getDateRange(7));
```

### 4. 获取范围时间戳
```javascript
// 示例：获取过去24小时的时间戳范围（毫秒级）
const getTimestampRange = (hours) => {
  const now = Date.now();
  const past = now - (hours * 60 * 60 * 1000);
  return {
    start: past,
    end: now
  };
};
console.log("过去24小时时间戳范围:", getTimestampRange(24));
```

### 5. 获取指定时区的时间
```javascript
// 示例：获取纽约时间
const getTimeInTimezone = (timezone) => {
  const now = new Date();
  return now.toLocaleString('zh-CN', { timeZone: timezone });
};
console.log("纽约时间:", getTimeInTimezone("America/New_York"));
console.log("伦敦时间:", getTimeInTimezone("Europe/London"));
console.log("东京时间:", getTimeInTimezone("Asia/Tokyo"));
```

### 6. 获取指定时区的时间戳
```javascript
// 示例：获取指定时区的时间戳（本质与时区无关，时间戳是UTC时间）
// 时间戳本身是UTC时间的毫秒数，与时区无关
const getTimezoneTimestamp = (timezone) => {
  // 获取指定时区的当前时间对象
  const now = new Date();
  const tzDate = new Date(now.toLocaleString('zh-CN', { timeZone: timezone }));
  // 时间戳仍然是UTC时间
  return Date.parse(tzDate);
};
console.log("纽约时间戳:", getTimezoneTimestamp("America/New_York"));
```

### 7. 获取近期时间戳范围
```javascript
// 示例：获取近N分钟的时间戳范围
const getRecentTimestampRange = (minutes) => {
  const now = Date.now();
  const past = now - (minutes * 60 * 1000);
  return {
    start: past,
    end: now
  };
};

console.log("近5分钟时间戳:", getRecentTimestampRange(5));
console.log("近15分钟时间戳:", getRecentTimestampRange(15));
console.log("近30分钟时间戳:", getRecentTimestampRange(30));
```

## 使用说明
1. 直接复制上述代码片段到您的项目中使用
2. 根据需要修改时间格式和参数
3. 时区名称可参考IANA时区数据库

## 补充说明
- 时间戳是UTC时间的毫秒数，与时区无关
- 格式化时间会根据时区显示不同的本地时间
- 可根据需求扩展更多时间范围和格式

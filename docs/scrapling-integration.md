# 🕷️ 数据采集模块

基于Scrapling的强大数据采集能力，集成到自我进化系统中。

---

## 🎯 功能

- 抓取公开网页数据
- 抓取产品页面
- 抓取新闻网站
- 保存为结构化数据

---

## 🚀 快速开始

### 安装依赖

```bash
# 安装Scrapling
pip install scrapling

# 安装完整版（包含浏览器支持）
pip install "scrapling[fetchers]"

# 安装浏览器依赖
scrapling install
```

### 使用

```bash
# 1. 抓取公开网页
python3 /root/.openclaw/workspace/scripts/workflow-scraper.py public <url>

# 2. 抓取产品页面
python3 /root/.openclaw/workspace/scripts/workflow-scraper.py product <url>

# 3. 抓取新闻网站
python3 /root/.openclaw/workspace/scripts/workflow-scraper.py news <url>

# 4. 保存到文件
python3 /root/.openclaw/workspace/scripts/workflow-scraper.py public <url> --output data.json
```

---

## 📖 使用示例

### 示例1: 抓取网站内容

```bash
python3 /root/.openclaw/workspace/scripts/workflow-scraper.py public https://example.com
```

### 示例2: 抓取并保存

```bash
python3 /root/.openclaw/workspace/scripts/workflow-scraper.py public https://example.com --output /tmp/data.json
```

### 示例3: 在Python中使用

```python
from scrapling.fetchers import Fetcher

# 抓取网页
page = Fetcher.get('https://example.com')

# 提取数据
data = page.css('.content::text').getall()
print(data)
```

---

## 🔧 高级用法

### StealthyFetcher（绕过反爬虫）

```python
from scrapling.fetchers import StealthyFetcher

# 自动绕过Cloudflare等保护
page = StealthyFetcher.fetch('https://protected-site.com')
```

### 批量爬取

```python
from scrapling.spiders import Spider

class MySpider(Spider):
    name = "demo"
    start_urls = ["https://example.com/"]
    
    async def parse(self, response):
        for item in response.css('.item'):
            yield {"title": item.css('h2::text').get()}

result = MySpider().start()
```

---

## 📚 更多信息

- [Scrapling官方文档](https://scrapling.readthedocs.io/)
- [Scrapling GitHub](https://github.com/D4Vinci/Scrapling)

---

**集成到自我进化系统，让数据采集更简单！** 🕷️✨

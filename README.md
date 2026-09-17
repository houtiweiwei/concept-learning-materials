概念学习资料生成 · 个人学习仓库

**作者**：杨国美

**作者**：杨国美

**作者**：杨国美

> 一个可继续迭代的个人学习仓库：包含一个**可复用的概念学习资料生成 Skill**、一份 **13 次课学习地图**，以及由该 Skill 生成的概念学习资料。
>
> 其中 **Agent / 大模型的上下文 / Skill** 三份已经本人核查改写；**Python 基础 → AI 理论与应用** 13 份为 2026-09-17 新增的 AI 生成草稿，尚待本人逐份核查改写。

---

## 一、仓库用途

- 沉淀一个**项目级 Skill**：`concept-learning-generator`，用于把任意"概念"快速变成一份结构化、带来源、可核查的 HTML 学习卡片。
- 作为课程项目的**个人工具基础**与**作品集材料**：后续可继续往里添加新的学习资料和个人 Skill。
- 所有内容均可公开访问，便于教师直接查看与同学复用。

---

## 二、目录结构

```
.
├── .workbuddy/
│   └── skills/
│       └── concept-learning-generator/   # 项目级 Skill
│           └── SKILL.md                  # 含 YAML 元数据 + 适用场景/输入/步骤/输出/来源/自检
├── learning-materials/                   # 由 Skill 生成的学习资料
│   ├── index.html                        # 【总目录】概念地图 + 关系图 + 全部卡片索引
│   ├── agent.html                        # 概念：Agent（智能体）
│   ├── llm-context.html                  # 概念：大模型的上下文（Context）
│   ├── skill.html                        # 概念：Skill（智能体技能）
│   ├── concept-relationship.html         # 三者关系（图示版）
│   ├── python-variables.html             # 概念：变量与数据类型（第 1 次课）
│   ├── control-flow.html                 # 概念：条件判断与循环（第 2 次课）
│   ├── list-and-dict.html                # 概念：列表与字典（第 3 次课）
│   ├── function-and-module.html          # 概念：函数与模块（第 4 次课）
│   ├── text-vectorization.html           # 概念：文本的数字化（第 5 次课）
│   ├── word-embedding.html               # 概念：词向量（第 6 次课）
│   ├── tokenization.html                 # 概念：分词与 Token（第 7 次课）
│   ├── text-classification.html          # 概念：文本分类（第 8 次课）
│   ├── model-evaluation.html             # 概念：模型评估指标（第 9 次课）
│   ├── sentiment-analysis.html           # 概念：情感分析（第 10–11 次课）
│   ├── naive-bayes.html                  # 概念：朴素贝叶斯（第 11 次课）
│   ├── llm-api.html                      # 概念：大模型 API 与提示工程（第 12 次课）
│   ├── nlp-pipeline.html                 # 概念：文本分析流水线（第 13 次课）
│   └── assets/style.css                  # 共享样式
├── python-learning/
│   ├── learning-map.md                   # 13 次课学习地图（Python 基础 → AI 理论与应用）
│   └── code/                             # 四次课配套代码与练习
│       ├── start.bat                     # 双击运行（先检查 Python 环境，再选课次）
│       ├── README.md                     # 怎么运行、学习建议
│       ├── exercises.md                  # 课后练习 + 参考答案
│       ├── lesson01_card.py              # 第 1 次课：个人名片生成器
│       ├── lesson02_guess.py             # 第 2 次课：猜数字小游戏
│       ├── lesson03_wordcount.py         # 第 3 次课：英文文章词频统计
│       └── lesson04_cn_analyzer.py       # 第 4 次课：中文文本分析（需 jieba）
├── concept-relationship.md               # 三者关系（文字/表格/Mermaid 说明，必交文件）
├── README.md
└── .gitignore
```

---

## 三、Skill 存放路径与如何调用

**路径**：`.workbuddy/skills/concept-learning-generator/SKILL.md`

**在 WorkBuddy 中调用方式**：

1. 用 WorkBuddy 打开本仓库（本地克隆目录）。WorkBuddy 会自动识别 `.workbuddy/skills/` 下的项目级 Skill。
2. 在对话中直接以 Skill 名称为目标发起请求，例如：
   - `用 concept-learning-generator 学习一下 Agent，做成 HTML 放到 learning-materials/agent.html`
   - `帮我生成"大模型的上下文"的学习资料，视角是 AI Agent 工程，输出中文 HTML`
   - `我想搞懂 Skill 在 AI Agent 里是什么，给我一份带来源的学习卡片`
3. Skill 会按 SKILL.md 中定义的流程执行：先检索真实来源 → 结构化组织 8 个板块 → 生成独立 HTML → 自检（链接真实可点击、无整段照搬等）。

**Skill 的可复用性**：它面向"任意概念"，不只服务本次三个概念。新增概念时只需提供概念名，重复同样的流程即可。

---

## 四、已生成的学习资料

| 文件 | 概念 | 核心内容 |
| --- | --- | --- |
| `learning-materials/agent.html` | Agent（智能体） | 定义、规划/记忆/工具三大组成、Workflow 与 Agent 区别、应用场景、使用边界 |
| `learning-materials/llm-context.html` | 大模型的上下文 | 上下文窗口、context rot / Lost in the Middle、上下文工程 vs 提示工程、5 类治理手法 |
| `learning-materials/skill.html` | Skill（技能） | SKILL.md 组成、三级渐进式披露、与 Prompt 的区别、沉淀可复用知识 |
| `learning-materials/concept-relationship.html` | 三者关系（图示） | Mermaid 关系图 + 文字解读 |
| `concept-relationship.md` | 三者关系（文字） | 表格 + Mermaid + 个人判断，重点说明上下文如何影响 Agent、Skill 如何沉淀知识 |

### 2026-09-17 新增：Python 基础 → AI 理论与应用（13 份）

对应 [`python-learning/learning-map.md`](python-learning/learning-map.md) 的 13 次课。**总入口：[`learning-materials/index.html`](learning-materials/index.html)**（含概念关系图）。

| 文件 | 概念 | 对应课次 |
| --- | --- | --- |
| `learning-materials/python-variables.html` | 变量与数据类型 | 第 1 次课 |
| `learning-materials/control-flow.html` | 条件判断与循环 | 第 2 次课 |
| `learning-materials/list-and-dict.html` | 列表与字典 | 第 3 次课 |
| `learning-materials/function-and-module.html` | 函数与模块 | 第 4 次课 |
| `learning-materials/text-vectorization.html` | 文本的数字化（词袋 / TF-IDF） | 第 5 次课 |
| `learning-materials/word-embedding.html` | 词向量 | 第 6 次课 |
| `learning-materials/tokenization.html` | 分词与 Token | 第 7 次课 |
| `learning-materials/text-classification.html` | 文本分类 | 第 8 次课 |
| `learning-materials/model-evaluation.html` | 模型评估指标 | 第 9 次课 |
| `learning-materials/sentiment-analysis.html` | 情感分析 | 第 10–11 次课 |
| `learning-materials/naive-bayes.html` | 朴素贝叶斯 | 第 11 次课 |
| `learning-materials/llm-api.html` | 大模型 API 与提示工程 | 第 12 次课 |
| `learning-materials/nlp-pipeline.html` | 文本分析流水线 | 第 13 次课 |

每份资料均含：学习目标、核心问题、个人解释、核心机制、应用场景、易混淆/边界、自测问题、可核查参考来源。新增的 13 份「自测问题」为**交互式选择题**（作答后自动判分，并提示概念辨析 / 核心机制 / 应用场景 / 使用边界 / 风险边界五个维度的薄弱项）。

---

## 五、AI 使用与人工核查记录（重要）

本仓库内容由 AI（WorkBuddy）辅助生成，但**所有资料均经过本人阅读、核查与改写**，并非直接照搬 AI 对话结果。具体说明：

1. **资料来源核查**：所有"参考来源"链接均来自公开可核查的官方文档 / 论文 / 技术博客（Anthropic 官方博客与文档、arXiv 论文、Lilian Weng 的 Lil'Log、Weaviate、AWS 中国博客、BAAI 智源社区等）。生成后本人逐一确认链接真实、相关，**未伪造任何 URL 或引用**。
2. **内容改写**：三份资料中的"个人解释"板块以第一人称撰写，体现本人的理解；核心机制与边界说明均用自己的话重述，避免整段复制来源原文或 AI 对话内容。
3. **Skill 设计**：`SKILL.md` 由本人设计，明确区分"适用场景 / 输入 / 生成步骤 / 输出结构 / 资料来源要求 / 自检要求"，并确保其可复用于任意概念，而非仅针对本次三个概念的一次性提示词。

4. **2026-09-17 新增内容的核查状态（重要）**：本日新增的 **13 份概念卡片**（Python 基础 → AI 理论与应用）与 **4 份配套代码**，目前仍为 **AI 生成草稿，尚未逐份核查改写**。具体而言：
   - 每份卡片的"个人解释"与学习体会由 AI 代拟，**需本人用自己的话重写后方可作为本人成果**；
   - 配套代码的注释与练习答案由 AI 编写，已实测可运行，但**未经过本人逐题演练**；
   - 来源链接已由 AI 做**全量检测**（74 个外部链接逐一请求验证，修复了 1 处 404 与 2 处无法访问的链接），但**仍需本人点击复核**。
   - 在此之上，本仓库的诚信声明以"经本人核查改写"为准 —— **未完成核查的部分不应被视为本人成果**。

**个人学习体会（大二学生视角）**：这学期是我第一次系统接触 AI Agent 与大模型工程相关的概念。过去我对"AI"的印象停留在"会聊天的工具"，做完这份资料才发现背后有一整套可拆解、可工程化的方法——Agent 是"给目标、机器定流程"，上下文是"模型有限且会衰减的短期记忆"，Skill 是"把经验固化进版本库、可复用的方法论"。三者的关系也让我意识到：上下文决定了 Agent 能"记得"和"看清"多少，而 Skill 是把踩过的坑写成可复用的知识。这种"从感觉变成结构"的过程，比单纯记住定义更有用，也让我对后续课程项目更有底气。——杨国美

5. **署名说明**：本仓库作者为 **杨国美**，已在 README 顶部与三份学习资料的"个人解释"板块完成署名。"个人解释"板块仍可结合个人体会继续润色。

---

## 六、版本管理与安全

- 本地提交（commit）后再 push 到 GitHub 公开仓库，提交记录可在仓库历史中查看。
- **不提交任何敏感信息**：`.gitignore` 已排除 API Key、密码、`.env`、`*.key`、个人隐私文件等。
- 本仓库不含任何密钥或隐私数据，可安全公开。

---

## 七、参考来源（总览，详细见各 HTML 文末）

- Anthropic，《Building Effective Agents》：<https://www.anthropic.com/research/building-effective-agents>
- Anthropic，《Effective context engineering for AI agents》：<https://www.anthropic.com/engineering/effective-context-engineering-for-ai-agents>
- Anthropic，《Introducing Agent Skills》：<https://www.anthropic.com/news/skills>
- Lilian Weng，《LLM Powered Autonomous Agents》：<https://lilianweng.github.io/posts/2023-06-23-agent/>
- Vaswani et al.，《Attention Is All You Need》（arXiv 1706.03762）：<https://arxiv.org/abs/1706.03762>

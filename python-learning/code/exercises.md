# 课后练习 · Python 基础四次课配套

> 配套 [`learning-map.md`](../learning-map.md) 的 Python 基础阶段（第 1–4 次课）。
> 每节末尾有参考答案。**建议先自己做，做完再对答案** —— 直接看答案等于没做。

## 怎么用这份练习

1. **每次课下课后，先不看原文件，把当天的示例代码默写一遍。** 写不出来说明还没真的会。
2. 再挑 **2~3 道**练习做，不用全做。
3. 卡住时的顺序：**先看报错信息的最后一行** → 再看示例代码里的中文注释 → 还不行再看答案。
4. 想验证自己写的对不对？存成 `.py` 文件双击运行，或者用 `start.bat` 的思路跑。

---

# 第 1 次课 · 变量与数据类型

对应代码：`lesson01_card.py`

### 练习

**1-1** 把 `lesson01_card.py` 改成问**四个**问题，多问一个「你最喜欢的科目」，并写进名片里。

**1-2** 先猜下面两行输出什么，猜完再去运行验证：

```python
x = 5
y = "5"
print(x + 1)
print(y + "1")
```

**1-3** 写一行代码，把字符串 `"3.14"` 变成浮点数，存进变量 `pi`。

**1-4** 下面五个变量名，哪些不合法？分别说明为什么：

`score`、`2nd_score`、`user_name`、`if`、`my-score`

**1-5** 写一个程序：让你输入**出生年份**，然后打印你今年大约多少岁（假设今年是 2026 年）。

**1-6** 为什么 `age = int(input("年龄："))` 里的 `int()` 不能省？省了会发生什么？

**1-7** 下面这段代码运行会报什么错？为什么？

```python
city = input("城市：")
print(city + "是个好地方")
message = "我来自" + city
print(f"长度：{len(city)}")
```

### 参考答案

<details>
<summary>点开看答案</summary>

**1-1** 加一行输入，再在输出里用一次：

```python
subject = input("请输入你最喜欢的科目：")
print(f"你最喜欢的科目是 {subject}。")
```

**1-2** 输出 `6` 和 `51`。

第一行是整数加法 5+1=6；第二行 `y` 是**字符串** `"5"`，字符串加字符串是**拼接**，得到 `"51"` 而不是 6。
这就是为什么必须分清 `5` 和 `"5"`。

**1-3** `pi = float("3.14")`

**1-4**
- `score`、`user_name` —— 合法。
- `2nd_score` —— **不合法**，不能以数字开头。
- `if` —— **不合法**，`if` 是 Python 的关键字，被语言占用了。
- `my-score` —— **不合法**，减号会被当成运算符，Python 会读成「my 减去 score」。

**1-5**

```python
birth = int(input("请输入你的出生年份："))
print(f"你今年大约 {2026 - birth} 岁。")
```

**1-6** 因为 `input()` 拿到的**永远是字符串**。不写 `int()` 的话，`age` 是 `"20"` 这样的文字，
后面只要做数学运算（比如 `age + 1`）就会报 `TypeError`。

**1-7** **不会报错，但输出和你想的不一样。**

`city` 是字符串，`"北京" + "是个好地方"` 是字符串拼接，得到 `"北京是个好地方"`，正确。
这题是个陷阱 —— 让人误以为字符串不能相加。**字符串可以用 `+` 拼接，只是不能和数字相加**：

```python
city + 1        # 报错 TypeError
"北京" + "好"    # 正常，得到 "北京好"
```

</details>

---

# 第 2 次课 · 条件判断与循环

对应代码：`lesson02_guess.py`

### 练习

**2-1** 输入一个整数，判断它是奇数还是偶数。（提示：`%` 是求余数）

**2-2** 用 `for` 循环打印 1 到 10。

**2-3** 用 `for` 循环算出 1+2+3+…+100 的结果。

**2-4** 下面这段代码会打印几次「你好」？

```python
i = 0
while i < 3:
    print("你好")
    i = i + 1
```

**2-5** 把 `lesson02_guess.py` 里的 `while True:` 改成 `while count < 3:`，会有什么变化？
（先想，再改代码运行验证）

**2-6** 输入一个分数（0–100），输出等级：90 及以上「优秀」，80 及以上「良好」，60 及以上「及格」，其余「不及格」。

**2-7** 下面代码会输出什么？为什么？

```python
for i in range(1, 5):
    print(i)
print("循环结束了")
```

### 参考答案

<details>
<summary>点开看答案</summary>

**2-1**

```python
n = int(input("请输入一个整数："))
if n % 2 == 0:
    print(f"{n} 是偶数。")
else:
    print(f"{n} 是奇数。")
```

`%` 是求余数：`7 % 2` 得 `1`，`8 % 2` 得 `0`。余数为 0 就是偶数。

**2-2**

```python
for i in range(1, 11):
    print(i)
```

注意是 `range(1, 11)` 不是 `range(1, 10)` —— **`range` 的结尾数字取不到**，想打到 10 就得写 11。

**2-3**

```python
total = 0
for i in range(1, 101):
    total = total + i
print(total)      # 5050
```

思路：准备一个「累加器」`total`，从 0 开始，每转一圈就把当前的 `i` 加进去。

**2-4** 打印 **3 次**。

`i` 分别是 0、1、2 时条件成立，到 3 时 `3 < 3` 不成立，循环结束。

**2-5** 变成「最多猜 3 次」。

具体来说：猜满 3 次后循环条件 `count < 3` 不成立，程序**直接结束**，
什么也不打印 —— 哪怕你根本没猜中。这是一个真实的坑：
用 `while 条件:` 时，循环结束时用户往往不知道发生了什么。
所以更常见的做法是用 `while True` + `break`，在 `break` 之前把结束语说完。

**2-6**

```python
score = int(input("请输入分数："))
if score >= 90:
    print("优秀")
elif score >= 80:
    print("良好")
elif score >= 60:
    print("及格")
else:
    print("不及格")
```

关键点：`elif` 是按**从上到下**的顺序检查的，第一个成立的分支执行完就跳出整个 `if`。
所以第二个 `elif score >= 80` 不需要再写「并且小于 90」—— 能走到这里，说明一定小于 90 了。

**2-7** 输出：

```
1
2
3
4
循环结束了
```

两个要点：
1. `range(1, 5)` 给出 1、2、3、4，**不含 5**。
2. `print("循环结束了")` 这行**没有缩进**，所以它不属于循环体，只在循环全部结束后执行一次。
   如果给它加上缩进，就会被打印 4 次。

</details>

---

# 第 3 次课 · 列表与字典

对应代码：`lesson03_wordcount.py`

### 练习

**3-1** 已知 `fruits = ["苹果", "香蕉", "橙子"]`，写代码打印**第一个**和**最后一个**元素。

**3-2** 往 `fruits` 末尾追加一个「西瓜」，然后打印整个列表。

**3-3** 用 `for` 循环把 `fruits` 里每个元素打印出来。

**3-4** 已知 `prices = {"苹果": 5, "香蕉": 3}`，打印苹果的价格。

**3-5** 用**字典**统计字符串 `"banana"` 里每个字母各出现几次。

**3-6** 下面代码输出什么？

```python
nums = [3, 1, 4, 1, 5]
print(len(nums))
print(sorted(nums))
print(sorted(nums)[-1])
```

**3-7** 为什么 `lesson03` 里要先 `text.lower()` 再切分？不做这一步会怎样？

### 参考答案

<details>
<summary>点开看答案</summary>

**3-1**

```python
print(fruits[0])      # 苹果
print(fruits[-1])     # 橙子
```

索引从 0 开始；`-1` 表示倒数第一个。

**3-2**

```python
fruits.append("西瓜")
print(fruits)         # ['苹果', '香蕉', '橙子', '西瓜']
```

注意 `append` 是**原地修改**列表，不会返回新列表，所以不能用 `fruits = fruits.append("西瓜")`（那样会让 `fruits` 变成 `None`）。

**3-3**

```python
for f in fruits:
    print(f)
```

**3-4** `print(prices["苹果"])` → 输出 `5`。

注意字典用**方括号加键名**取值，不是用点号。

**3-5**

```python
text = "banana"
counts = {}
for ch in text:
    if ch in counts:
        counts[ch] = counts[ch] + 1
    else:
        counts[ch] = 1
print(counts)        # {'b': 1, 'a': 3, 'n': 2}
```

这和课上统计单词是**完全一样的套路** —— 换成统计字母而已。
「先判断在不在，再决定加一还是记成 1」这个模式，后面做词频、做分类还会反复用到。

**3-6** 输出 `5`、`[1, 1, 3, 4, 5]`、`5`。

- `len(nums)` 取长度 → 5
- `sorted(nums)` 返回**从小到大排好的新列表** → `[1, 1, 3, 4, 5]`
- `sorted(nums)[-1]` 排完取最后一个 → 最大值 5

注意 `sorted()` 不会改动原列表；`nums` 还是 `[3, 1, 4, 1, 5]`。

**3-7** 因为要**合并大小写不同的同一个词**。

不做的话，`Python`、`python`、`PYTHON` 会被当成三个不同的词分别统计，排行榜就失真了。
这就是数据清洗里最基本的一步 —— **统一格式**。真实数据比这脏得多（多余空格、全角半角、各种标点），
所以第 5 次课会讲更系统的清洗流程。

</details>

---

# 第 4 次课 · 函数与第三方库

对应代码：`lesson04_cn_analyzer.py`

### 练习

**4-1** 写一个函数 `greet(name)`，打印「你好，xxx」。

**4-2** 写一个函数 `add(a, b)`，返回 `a + b`。

**4-3** `print` 和 `return` 有什么区别？为什么 `add` 要用 `return` 而不是 `print`？

**4-4** 写一个函数 `count_words(text)`，返回一个字典，统计每个英文单词出现的次数（按空格切分）。

**4-5** 运行 `lesson04` 时看到 `ModuleNotFoundError: No module named 'jieba'`，该怎么办？

**4-6** 综合题：写一个程序，让用户输入一段中文，输出出现次数最多的前 3 个词。

### 参考答案

<details>
<summary>点开看答案</summary>

**4-1**

```python
def greet(name):
    print(f"你好，{name}")

greet("杨国美")
```

**4-2**

```python
def add(a, b):
    return a + b

print(add(3, 4))       # 7
```

**4-3** 区别是**「给别人看」还是「给别人用」**：

- `print` 把结果**显示在屏幕上**，显示完就没了，程序无法再拿它做别的事。
- `return` 把结果**交回给调用者**，可以存进变量、继续参与计算。

所以 `add` 必须用 `return`，这样才能写 `x = add(1, 2) + add(3, 4)`。
如果 `add` 只是 `print`，这行就没法写 —— `print` 的返回值是 `None`。

一句话记法：**print 是终点，return 是接力棒。**

**4-4**

```python
def count_words(text):
    counts = {}
    for w in text.lower().split():
        w = w.strip(".,!?;:")
        if w != "":
            if w in counts:
                counts[w] = counts[w] + 1
            else:
                counts[w] = 1
    return counts

print(count_words("cat dog cat bird dog cat"))
# {'cat': 3, 'dog': 2, 'bird': 1}
```

**4-5** 在终端里运行一次 `pip install jieba` 就行。

**更重要的是理解这件事**：报错的最后一行 `No module named 'jieba'` 其实是在说
「我缺 jieba 这个库」。**读懂报错信息 = 知道下一步该做什么**，这是自学最核心的技能。
以后遇到 `NameError` 就是变量名写错了或没定义，`IndentationError` 就是缩进不对。

**4-6**

```python
import jieba
from collections import Counter

text = input("请输入一段中文：")
words = [w for w in jieba.lcut(text) if len(w) > 1]

for i, (word, n) in enumerate(Counter(words).most_common(3), start=1):
    print(f"{i}. {word}  {n} 次")
```

这题其实就是 `lesson04_cn_analyzer.py` 的核心，只是省掉了内置示例文本那部分。
如果你能独立写出来，说明四次课的内容真的串起来了。

---

# 综合自测（四次课全部学完之后）

**A-1** 用一句话解释：为什么 `input()` 拿到的东西要做类型转换？

**A-2** `range(1, 5)` 会产生哪些数字？为什么不是 1 到 5？

**A-3** 列表和字典最大的区别是什么？分别适合存什么样的数据？

**A-4** 为什么中文做词频统计需要 `jieba`，英文不需要？

**A-5** 把第 3 次课的程序和第 4 次课的程序对比一下：
哪些地方是重复的？如果用函数把它们整理一下，你会怎么拆？

> **A-4 的答案值得单独记住**：英文靠空格天然分好词，`split()` 就够了；
> 中文是一串连着的字，「今天天气很好」该切成「今天 / 天气 / 很好」还是「今 / 天天 / 气很好」，
> 机器并不知道。所以需要专门的分词工具。而这正是**第 5 次课「文本的数字化」的起点** ——
> 你已经站在 AI 的门口了。

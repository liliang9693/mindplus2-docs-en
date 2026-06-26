Welcome to the Mind+ FAQ page! This page compiles various issues and solutions that users encounter while using Mind+ software.

## 🔍 Quick Navigation

Select the corresponding category based on the type of issue you encounter:

### Coding

<div class="grid cards" markdown>

- **[Real-time Mode](Coding/RealTimeMode/index.md)**[![Real-time Mode](./img/cover1-1.png){width=400, style="display:block;margin: 10px auto"}](Coding/RealTimeMode/index.md)
- **[Upload Mode](Coding/UploadMode/index.md)**[![Upload Mode](./img/cover2-2.png){width=400, style="display:block;margin: 10px auto"}](Coding/UploadMode/index.md)
- **[Python Block Mode](Coding/PythonBlockMode/index.md)**[![Python Block Mode](./img/cover3-3.png){width=400, style="display:block;margin: 10px auto"}](Coding/PythonBlockMode/index.md)
- **[MicroPython Block Mode](Coding/MicroPythonBlockMode/index.md)**
  [![MicroPython Block Mode](./img/cover4-4.png){width=400, style="display:block;margin: 10px auto"}](Coding/MicroPythonBlockMode/index.md)

</div>

### Model

<div class="grid cards" markdown>

- **[Model](Model/index.md)**
  [![Model](./img/cover5-5.png){style="display:block;margin: 10px auto"}](../AITools/index.md)

</div>

### View

<div class="grid cards" markdown>

- **[View](View/index.md)**
  [![View](./img/cover6-6.png){style="display:block;margin: 10px auto"}](../ViewDesign/index.md)

<!-- - **[Extension Libraries](UserExtension/index.md)**  
    [![Extension Libraries](./img/cover7-7.png){style="display:block;margin: 10px auto"}](UserExtension/index.md) -->

</div>

## 💡 Usage Tips

- **Quick Search**: <button onclick="openSearch()" style="background: #1976d2; color: white; border: none; padding: 4px 12px; border-radius: 4px; cursor: pointer; font-size: 0.9em;">🔍 Click to Search</button>
- **Issue Feedback**: If you cannot find your issue, please provide feedback via the official website or email.
- **Continuous Updates**: We will continuously update the FAQ based on user feedback

<script>
function openSearch() {
    // 尝试多种搜索框选择器，适配不同的MkDocs主题
    const searchSelectors = [
        '[data-md-component="search-query"]',
        '.md-search__input',
        'input[type="search"]',
        '#mkdocs-search-query',
        '.md-header__option .md-icon'
    ];
  
    let searchElement = null;
  
    // 依次尝试找到搜索元素
    for (const selector of searchSelectors) {
        searchElement = document.querySelector(selector);
        if (searchElement) {
            if (searchElement.tagName === 'INPUT') {
                // 如果是输入框，直接聚焦
                searchElement.focus();
                searchElement.click();
            } else {
                // 如果是按钮或图标，点击它
                searchElement.click();
                // 等待搜索框出现后聚焦
                setTimeout(() => {
                    const input = document.querySelector('[data-md-component="search-query"], .md-search__input, input[type="search"]');
                    if (input) input.focus();
                }, 100);
            }
            break;
        }
    }

}
</script>

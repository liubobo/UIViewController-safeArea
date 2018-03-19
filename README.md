## 封装安全区域代码

## 设置contentview，四边都在安全区域

``` bash
    [self am_makeSafeView:view];
```

## 某一边，底部在安全区域

``` bash
[button mas_makeConstraints:^(MASConstraintMaker *make) {
	make.left.right.equalTo(self.view);
	make.height.equalTo(@60);
	make.bottom.equalTo(self.am_safeBottom).offset(-20);
}];
```


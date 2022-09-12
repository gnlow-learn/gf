# learn-gf
## 실행방법
### 폴더로 이동
```
cd rgl
```
### 실행
```sh
gf
```
```sh
i FoodsEng.gf FoodsKor.gf
```
```sh
parse -lang=FoodsKor "이 신선한 치즈가 맛있습니다" | linearize
```
#### 출력
```
this fresh cheese is delicious
이 신선한 치즈가 맛있습니다
```
## 팁
### 약어
```
h: help

p: parse
l: linearize
gr: generate_random
gt: generate_trees
aw: align_words
vp: visualize_parse
vt: visualize_tree
```
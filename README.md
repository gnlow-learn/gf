# learn-gf
## 링크
- https://www.grammaticalframework.org/
- 설치: https://www.grammaticalframework.org/download/index-3.11.html
- RGL 다운로드: https://github.com/GrammaticalFramework/gf-core/releases/tag/3.11
- 튜토리얼: https://www.grammaticalframework.org/doc/tutorial/gf-tutorial.html
- 번역기 데모: https://cloud.grammaticalframework.org/minibar/minibar.html
## 실행방법
### 폴더로 이동
```
cd 4_rgl
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
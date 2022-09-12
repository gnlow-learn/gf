instance LexFoodsKor of LexFoods = open SyntaxKor, ParadigmsKor in {
    oper
        wine_N = mkN "와인";
        pizza_N = mkN "피자";
        cheese_N = mkN "치즈";
        fish_N = mkN "생선";
        fresh_A = mkA "신선하다";
        warm_A = mkA "따뜻하다";
        italian_A = mkA "이탈리아풍이다";
        expensive_A = mkA "비싸다";
        delicious_A = mkA "맛있다";
        boring_A = mkA "지루하다";
}
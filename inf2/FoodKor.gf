concrete FoodKor of Food = open Prelude in {
    lincat
        Quality = SS;
        Kind = {s: Number => Str};
        Item = {s: Str; n: Number};
    
    lin
        Is item quality = ss (item.s ++ "는" ++ quality.s);

        This = det (Sg | Pl) "이";
        These = det (Sg | Pl) "저";
        --A = det Sg "a";
        The = det (Sg | Pl) "그";

        QKind quality kind = {s = table {
            n => quality.s ++ kind.s ! n
        }};
        Wine = regNoun "와인";
        Cheese = regNoun "치즈";
        Fish = regNoun "생선";
        Very = prefixSS "아주";
        Fresh = ss "신선하";
        Warm = ss "따뜻하";
        Italian = ss "이탈리아";
        Expensive = ss "비싸";
        Delicious = ss "맛있";
        Boring = ss "지루하";
    
    param
        Number = Sg | Pl ;

    oper
        det
            : Number -> Str -> {s: Number => Str} -> {s: Str; n: Number}
            = \n, d, cn -> {
                s = d ++ cn.s ! n;
                n = n
            };
        noun
            : Str -> Str -> {s: Number => Str}
            = \man, men -> {
                s = table {
                    Sg => man;
                    Pl => men
                }
            };
        regNoun
            : Str -> {s: Number => Str}
            = \car -> noun car (car + "들")
            ;
}
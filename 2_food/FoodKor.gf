concrete FoodKor of Food = {
    lincat
        Phrase, Item, Kind, Quality = {s: Str};
    
    lin
        Is item quality = {s = item.s ++ "은" ++ quality.s};
        This kind = {s = "이" ++ kind.s};
        QKind quality kind = {s = quality.s ++ kind.s};
        Wine = {s = "와인"};
        Cheese = {s = "치즈"};
        Fish = {s = "생선"};
        Very quality = {s = "아주" ++ quality.s};
        Fresh = {s = "신선한"};
        Warm = {s = "따뜻한"};
        Italian = {s = "이탈리안"};
        Expensive = {s = "비싼"};
        Delicious = {s = "맛있는"};
        Boring = {s = "지루한"};
}
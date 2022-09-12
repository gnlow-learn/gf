concrete FoodEng of Food = open StringOper in {
    lincat
        Phrase, Item, Kind, Quality = {s: Str};
    
    lin
        Is item quality = ss (item.s ++ "is" ++ quality.s);
        This = prefix "this";
        That = prefix "that";
        QKind quality kind = cc quality kind;
        Wine = ss "wine";
        Cheese = ss "cheese";
        Fish = ss "fish";
        Very = prefix "very";
        Fresh = ss "fresh";
        Warm = ss "warm";
        Italian = ss "Italian";
        Expensive = ss "expensive";
        Delicious = ss "delicious";
        Boring = ss "boring";
}
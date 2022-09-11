abstract Food = {
    flags startcat = Phrase;

    cat
        Phrase; Item; Kind; Quality;
    
    fun
        Is: Item -> Quality -> Phrase;
        This, That, These, Those: Kind -> Item;
        QKind: Quality -> Kind -> Kind;
        Wine, Cheese: Kind;
        Very: Quality -> Quality;
        Fresh: Quality;
        -- Drink: Kind -> Action;
}
abstract Food = {
    flags startcat = Phrase;

    cat
        Phrase; Item; Kind; Quality;
    
    fun
        Is: Item -> Quality -> Phrase;
        This, That, These, Those, A, The
            : Kind -> Item
            ;
        QKind: Quality -> Kind -> Kind;
        Wine, Cheese, Fish: Kind;
        Very: Quality -> Quality;
        Fresh, Warm, Italian, Expensive, Delicious, Boring: Quality;
}
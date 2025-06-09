.class public Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;
.super Ljava/lang/Object;
.source "GetCountryNameSort.java"


# instance fields
.field chReg:Ljava/lang/String;

.field characterParser:Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-static {}, Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;->getInstance()Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;->characterParser:Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;

    const-string v0, "[\\u4E00-\\u9FA5]+"

    .line 14
    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;->chReg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSortLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "#"

    if-nez p1, :cond_0

    return-object v0

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/kugoo/kugookirin/user/country/GetCountryNameSort;->characterParser:Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;

    invoke-virtual {v1, p1}, Lcom/kugoo/kugookirin/user/country/CharacterParserUtil;->getSelling(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 25
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[A-Z]"

    .line 27
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSortLetterBySortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    const-string v0, ""

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[A-Z]"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "#"

    :goto_0
    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public search(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/country/CountrySortModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/country/CountrySortModel;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "^([0-9]|[/+]).*"

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_2

    const-string v1, "\\-|\\s"

    .line 56
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    .line 59
    iget-object v3, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->simpleCountryNumber:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    .line 62
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 66
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    .line 76
    iget-object v3, v1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryNumber:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 78
    iget-object v3, v1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 79
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countrySortKey:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 81
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortToken:Lcom/kugoo/kugookirin/user/country/CountrySortToken;

    iget-object v3, v3, Lcom/kugoo/kugookirin/user/country/CountrySortToken;->simpleSpell:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 83
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortToken:Lcom/kugoo/kugookirin/user/country/CountrySortToken;

    iget-object v3, v3, Lcom/kugoo/kugookirin/user/country/CountrySortToken;->wholeSpell:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 85
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 87
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

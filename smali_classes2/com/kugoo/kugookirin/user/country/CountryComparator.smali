.class public Lcom/kugoo/kugookirin/user/country/CountryComparator;
.super Ljava/lang/Object;
.source "CountryComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/kugoo/kugookirin/user/country/CountrySortModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/kugoo/kugookirin/user/country/CountrySortModel;Lcom/kugoo/kugookirin/user/country/CountrySortModel;)I
    .locals 3

    .line 14
    iget-object v0, p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    iget-object p2, p2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 7
    check-cast p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    check-cast p2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    invoke-virtual {p0, p1, p2}, Lcom/kugoo/kugookirin/user/country/CountryComparator;->compare(Lcom/kugoo/kugookirin/user/country/CountrySortModel;Lcom/kugoo/kugookirin/user/country/CountrySortModel;)I

    move-result p1

    return p1
.end method

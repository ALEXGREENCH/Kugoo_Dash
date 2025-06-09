.class public Lcom/kugoo/kugookirin/bean/MapSearchResultItem;
.super Ljava/lang/Object;
.source "MapSearchResultItem.java"


# instance fields
.field private address_detail:Ljava/lang/String;

.field private address_title:Ljava/lang/String;

.field private place_id:Ljava/lang/String;

.field private search_address:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->address_title:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->address_detail:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->place_id:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->search_address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress_detail()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->address_detail:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress_title()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->address_title:Ljava/lang/String;

    return-object v0
.end method

.method public getPlace_id()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->place_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSearch_address()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->search_address:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress_detail(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->address_detail:Ljava/lang/String;

    return-void
.end method

.method public setAddress_title(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->address_title:Ljava/lang/String;

    return-void
.end method

.method public setPlace_id(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->place_id:Ljava/lang/String;

    return-void
.end method

.method public setSearch_address(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->search_address:Ljava/lang/String;

    return-void
.end method

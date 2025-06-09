.class public Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;
.super Landroid/widget/BaseAdapter;
.source "PosSearchedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mapSearchResultItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/MapSearchResultItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/bean/MapSearchResultItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mapSearchResultItems:Ljava/util/ArrayList;

    .line 25
    iput-object p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    .line 47
    new-instance p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;-><init>()V

    .line 48
    iget-object p3, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f0d0122

    invoke-virtual {p3, v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a0369

    .line 49
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_detail:Landroid/widget/TextView;

    const v0, 0x7f0a036b

    .line 50
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_title:Landroid/widget/TextView;

    .line 51
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;

    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mapSearchResultItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;

    .line 56
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->getAddress_detail()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->getAddress_title()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/MapSearchResultItem;->getSearch_address()Ljava/lang/String;

    move-result-object p1

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_detail:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 66
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f06020f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_detail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 69
    :cond_2
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0602f1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_detail:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    :goto_1
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_detail:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p2, Lcom/kugoo/kugookirin/vehicle/adapter/PosSearchedAdapter$ViewHolder;->map_search_navage_title:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

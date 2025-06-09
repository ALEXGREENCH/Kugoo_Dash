.class public Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;
.super Landroid/widget/BaseAdapter;
.source "CountrySortAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/country/CountrySortModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/country/CountrySortModel;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mContext:Landroid/content/Context;

    .line 34
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mHashMap:Ljava/util/HashMap;

    if-nez p2, :cond_0

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    goto :goto_0

    .line 38
    :cond_0
    iput-object p2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    :goto_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 4

    const/16 v0, 0x2a

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    move v0, v1

    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    iget-object v2, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    .line 107
    sget-object v3, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1

    :cond_2
    return v1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 60
    iget-object p2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    .line 61
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0062

    invoke-virtual {v2, v3, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v2, 0x7f0a0155

    .line 64
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    const v2, 0x7f0a015b

    .line 65
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_name:Landroid/widget/TextView;

    const v2, 0x7f0a015c

    .line 66
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_number:Landroid/widget/TextView;

    const v2, 0x7f0a015a

    .line 68
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item_image:Landroid/widget/ImageView;

    const v2, 0x7f0a0159

    .line 69
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item_selector:Landroid/widget/ImageView;

    const v2, 0x7f0a0158

    .line 70
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item_name:Landroid/widget/TextView;

    const v2, 0x7f0a0157

    .line 71
    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item:Landroid/widget/LinearLayout;

    .line 72
    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p3, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 77
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->getSectionForPosition(I)I

    move-result v2

    .line 82
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->getPositionForSection(I)I

    move-result v2

    if-ne p1, v2, :cond_1

    .line 83
    iget-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    iget-object p2, p2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortLetters:Ljava/lang/String;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 86
    :cond_1
    iget-object p2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_sortName:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "countryList="

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    iget-object v2, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "  dressId=="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    iget v2, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->image_dress:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "countryList"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    iget-object v2, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object p2, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item_image:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    iget v2, v2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->image_dress:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget-object p2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    iget-boolean p1, p1, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->is_select:Z

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item_selector:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 97
    :cond_2
    iget-object p1, v0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter$ViewHolder;->country_list_item_selector:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p3
.end method

.method public updateListView(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/user/country/CountrySortModel;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    goto :goto_0

    .line 134
    :cond_0
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->mList:Ljava/util/List;

    .line 136
    :goto_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->notifyDataSetChanged()V

    return-void
.end method

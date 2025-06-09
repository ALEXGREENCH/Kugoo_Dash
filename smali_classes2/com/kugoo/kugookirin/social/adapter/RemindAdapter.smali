.class public Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemindAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;,
        Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/RemindInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private mListener:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/kugoo/kugookirin/social/bean/RemindInfo;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mData:Ljava/util/ArrayList;

    .line 35
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mHashMap:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$500(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mData:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;)Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mListener:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mData:Ljava/util/ArrayList;

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
    .locals 7

    .line 56
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    .line 57
    new-instance p2, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;-><init>(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;)V

    .line 58
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0120

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f0a02ed

    .line 59
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$102(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    const v0, 0x7f0a048b

    .line 60
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$202(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Lcom/kugoo/kugookirin/view/CircleImageView;)Lcom/kugoo/kugookirin/view/CircleImageView;

    const v0, 0x7f0a048f

    .line 61
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$302(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f0a048c

    .line 62
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$402(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 64
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object p3, p2

    check-cast p3, Landroid/view/View;

    .line 68
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;

    .line 71
    :goto_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kugoo/kugookirin/social/bean/RemindInfo;

    .line 72
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getPortraitUrl()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getNickName()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->getUid()Ljava/lang/String;

    .line 75
    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/RemindInfo;->isChecked()Z

    move-result v0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "nickName=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  checked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sasasas"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/view/CircleImageView;->setVisibility(I)V

    .line 81
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$100(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "#f6f6f6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$200(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Lcom/kugoo/kugookirin/view/CircleImageView;

    move-result-object v5

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getPortraitImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    .line 85
    invoke-virtual {v3, v1, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 87
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$300(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, "\u70b9\u51fb\u67e5\u770b"

    .line 88
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 93
    :goto_1
    invoke-static {p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;->access$400(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$1;-><init>(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;ILcom/kugoo/kugookirin/social/adapter/RemindAdapter$RemindHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p3
.end method

.method public setOnItemSelectListener(Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/RemindAdapter;->mListener:Lcom/kugoo/kugookirin/social/adapter/RemindAdapter$itemSelectListener;

    return-void
.end method

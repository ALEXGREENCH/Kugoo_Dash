.class Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;
.super Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;
.source "ForYouAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-direct {p0}, Lcom/kugoo/kugookirin/view/SobLooperPager$InnerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDataSize()I
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected getSubView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 4

    .line 468
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 469
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 470
    new-instance v1, Lcom/kugoo/kugookirin/view/CornerImageView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/kugoo/kugookirin/view/CornerImageView;-><init>(Landroid/content/Context;)V

    .line 471
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Lcom/kugoo/kugookirin/view/CornerImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 472
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/PagerItem;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/PagerItem;->getPicResId()Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    .line 473
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kugoo/kugookirin/bean/PagerItem;

    invoke-virtual {v2}, Lcom/kugoo/kugookirin/bean/PagerItem;->getPicUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getClubsCarouselOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 474
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {v2}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/bean/PagerItem;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/bean/PagerItem;->getPicUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getClubsCarouselOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {p1, p2, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_0

    .line 476
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/PagerItem;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/PagerItem;->getPicResId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 478
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$12;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/bean/PagerItem;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/bean/PagerItem;->getPicResId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/kugoo/kugookirin/view/CornerImageView;->setImageResource(I)V

    :goto_0
    return-object v0
.end method

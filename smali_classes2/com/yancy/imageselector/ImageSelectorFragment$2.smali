.class Lcom/yancy/imageselector/ImageSelectorFragment$2;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yancy/imageselector/ImageSelectorFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yancy/imageselector/ImageSelectorFragment;


# direct methods
.method constructor <init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$2;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 163
    iget-object p3, p0, Lcom/yancy/imageselector/ImageSelectorFragment$2;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p3}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$500(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/TextView;->getVisibility()I

    move-result p3

    if-nez p3, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 164
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p3

    check-cast p3, Landroid/widget/ListAdapter;

    invoke-interface {p3}, Landroid/widget/ListAdapter;->getCount()I

    move-result p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p2

    check-cast p2, Landroid/widget/ListAdapter;

    invoke-interface {p2}, Landroid/widget/ListAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 165
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-interface {p1, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yancy/imageselector/bean/Image;

    if-eqz p1, :cond_1

    .line 167
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$2;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$500(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p1, p1, Lcom/yancy/imageselector/bean/Image;->path:Ljava/lang/String;

    invoke-static {p1}, Lcom/yancy/imageselector/utils/TimeUtils;->formatPhotoDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    if-nez p2, :cond_0

    .line 155
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$2;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$500(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$2;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$500(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

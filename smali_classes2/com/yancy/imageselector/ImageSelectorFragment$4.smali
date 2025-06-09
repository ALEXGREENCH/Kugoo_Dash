.class Lcom/yancy/imageselector/ImageSelectorFragment$4;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 198
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$4;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 201
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$4;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yancy/imageselector/adapter/ImageAdapter;->isShowCamera()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 203
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$4;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$800(Lcom/yancy/imageselector/ImageSelectorFragment;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yancy/imageselector/bean/Image;

    .line 206
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$4;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$900(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/ImageConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yancy/imageselector/ImageConfig;->isMutiSelect()Z

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1000(Lcom/yancy/imageselector/ImageSelectorFragment;Lcom/yancy/imageselector/bean/Image;Z)V

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yancy/imageselector/bean/Image;

    .line 211
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$4;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$900(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/ImageConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/yancy/imageselector/ImageConfig;->isMutiSelect()Z

    move-result p3

    invoke-static {p2, p1, p3}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1000(Lcom/yancy/imageselector/ImageSelectorFragment;Lcom/yancy/imageselector/bean/Image;Z)V

    :goto_0
    return-void
.end method

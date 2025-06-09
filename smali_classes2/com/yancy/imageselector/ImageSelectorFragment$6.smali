.class Lcom/yancy/imageselector/ImageSelectorFragment$6;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yancy/imageselector/ImageSelectorFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V
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

    .line 286
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 291
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getHeight()I

    move-result v0

    .line 293
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yancy/imageselector/R$dimen;->image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 294
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/GridView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    .line 295
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/yancy/imageselector/R$dimen;->space_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 296
    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v3}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->getWidth()I

    move-result v3

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v1, v4

    sub-int/2addr v3, v1

    div-int/2addr v3, v2

    .line 297
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setItemSize(I)V

    .line 299
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x8

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$6;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

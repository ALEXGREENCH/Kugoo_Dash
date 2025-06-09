.class Lcom/yancy/imageselector/ImageSelectorFragment$3;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    .line 173
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getHeight()I

    move-result v1

    .line 181
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2, v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$102(Lcom/yancy/imageselector/ImageSelectorFragment;I)I

    .line 182
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2, v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$202(Lcom/yancy/imageselector/ImageSelectorFragment;I)I

    .line 184
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yancy/imageselector/R$dimen;->image_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 185
    div-int v1, v0, v1

    .line 186
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yancy/imageselector/R$dimen;->space_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    add-int/lit8 v3, v1, -0x1

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 187
    div-int/2addr v0, v1

    .line 188
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setItemSize(I)V

    .line 191
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$3;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

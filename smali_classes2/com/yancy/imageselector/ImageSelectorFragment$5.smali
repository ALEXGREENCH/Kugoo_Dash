.class Lcom/yancy/imageselector/ImageSelectorFragment$5;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yancy/imageselector/ImageSelectorFragment;->createPopupFolderList(II)V
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

    .line 231
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 235
    iget-object p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$400(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/FolderAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/yancy/imageselector/adapter/FolderAdapter;->setSelectIndex(I)V

    .line 240
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;

    invoke-direct {p4, p0, p3, p1}, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;-><init>(Lcom/yancy/imageselector/ImageSelectorFragment$5;ILandroid/widget/AdapterView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class Lcom/yancy/imageselector/ImageSelectorActivity$1;
.super Ljava/lang/Object;
.source "ImageSelectorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yancy/imageselector/ImageSelectorActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yancy/imageselector/ImageSelectorActivity;


# direct methods
.method constructor <init>(Lcom/yancy/imageselector/ImageSelectorActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity$1;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity$1;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yancy/imageselector/ImageSelectorActivity;->setResult(I)V

    .line 70
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity$1;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorActivity;->access$000(Lcom/yancy/imageselector/ImageSelectorActivity;)V

    return-void
.end method

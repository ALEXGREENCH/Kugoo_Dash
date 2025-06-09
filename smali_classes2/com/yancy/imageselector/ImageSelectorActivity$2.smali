.class Lcom/yancy/imageselector/ImageSelectorActivity$2;
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

    .line 82
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity$2;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity$2;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorActivity;->access$100(Lcom/yancy/imageselector/ImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity$2;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorActivity;->access$100(Lcom/yancy/imageselector/ImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 86
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 87
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity$2;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorActivity;->access$100(Lcom/yancy/imageselector/ImageSelectorActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "select_result"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity$2;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/yancy/imageselector/ImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity$2;->this$0:Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorActivity;->access$000(Lcom/yancy/imageselector/ImageSelectorActivity;)V

    :cond_0
    return-void
.end method

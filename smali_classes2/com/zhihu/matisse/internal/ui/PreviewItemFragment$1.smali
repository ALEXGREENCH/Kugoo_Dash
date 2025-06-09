.class Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;
.super Ljava/lang/Object;
.source "PreviewItemFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;

.field final synthetic val$item:Lcom/zhihu/matisse/internal/entity/Item;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;Lcom/zhihu/matisse/internal/entity/Item;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;->this$0:Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;

    iput-object p2, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;->val$item:Lcom/zhihu/matisse/internal/entity/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;->val$item:Lcom/zhihu/matisse/internal/entity/Item;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/entity/Item;->uri:Landroid/net/Uri;

    const-string v1, "video/*"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;->this$0:Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment$1;->this$0:Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;

    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/zhihu/matisse/R$string;->error_no_video_activity:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

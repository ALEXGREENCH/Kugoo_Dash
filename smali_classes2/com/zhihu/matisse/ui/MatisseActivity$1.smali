.class Lcom/zhihu/matisse/ui/MatisseActivity$1;
.super Ljava/lang/Object;
.source "MatisseActivity.java"

# interfaces
.implements Lcom/zhihu/matisse/internal/utils/SingleMediaScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/ui/MatisseActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhihu/matisse/ui/MatisseActivity;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/ui/MatisseActivity;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity$1;->this$0:Lcom/zhihu/matisse/ui/MatisseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinish()V
    .locals 2

    const-string v0, "SingleMediaScanner"

    const-string v1, "scan finish!"

    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

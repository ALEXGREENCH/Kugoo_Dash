.class Lcom/zhihu/matisse/ui/MatisseActivity$2;
.super Ljava/lang/Object;
.source "MatisseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/ui/MatisseActivity;->onAlbumLoad(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhihu/matisse/ui/MatisseActivity;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/ui/MatisseActivity;Landroid/database/Cursor;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->this$0:Lcom/zhihu/matisse/ui/MatisseActivity;

    iput-object p2, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->val$cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->this$0:Lcom/zhihu/matisse/ui/MatisseActivity;

    invoke-static {v1}, Lcom/zhihu/matisse/ui/MatisseActivity;->access$000(Lcom/zhihu/matisse/ui/MatisseActivity;)Lcom/zhihu/matisse/internal/model/AlbumCollection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->getCurrentSelection()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 373
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->this$0:Lcom/zhihu/matisse/ui/MatisseActivity;

    invoke-static {v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->access$100(Lcom/zhihu/matisse/ui/MatisseActivity;)Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->this$0:Lcom/zhihu/matisse/ui/MatisseActivity;

    .line 374
    invoke-static {v1}, Lcom/zhihu/matisse/ui/MatisseActivity;->access$000(Lcom/zhihu/matisse/ui/MatisseActivity;)Lcom/zhihu/matisse/internal/model/AlbumCollection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zhihu/matisse/internal/model/AlbumCollection;->getCurrentSelection()I

    move-result v2

    .line 373
    invoke-virtual {v0, v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->setSelection(Landroid/content/Context;I)V

    .line 375
    iget-object v0, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/zhihu/matisse/internal/entity/Album;->valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Album;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Album;->isAll()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->capture:Z

    if-eqz v1, :cond_0

    .line 377
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/entity/Album;->addCaptureCount()V

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/ui/MatisseActivity$2;->this$0:Lcom/zhihu/matisse/ui/MatisseActivity;

    invoke-static {v1, v0}, Lcom/zhihu/matisse/ui/MatisseActivity;->access$200(Lcom/zhihu/matisse/ui/MatisseActivity;Lcom/zhihu/matisse/internal/entity/Album;)V

    return-void
.end method

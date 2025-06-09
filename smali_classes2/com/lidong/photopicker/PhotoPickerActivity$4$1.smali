.class Lcom/lidong/photopicker/PhotoPickerActivity$4$1;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidong/photopicker/PhotoPickerActivity$4;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

.field final synthetic val$index:I

.field final synthetic val$v:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPickerActivity$4;ILandroid/widget/AdapterView;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iput p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->val$index:I

    iput-object p3, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->val$v:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$600(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 243
    iget v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->val$index:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-virtual {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v2, v2, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$900(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 245
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1000(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/widget/Button;

    move-result-object v0

    sget v2, Lcom/lidong/photopicker/R$string;->all_image:I

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v2, v2, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1100(Lcom/lidong/photopicker/PhotoPickerActivity;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lidong/photopicker/ImageGridAdapter;->setShowCamera(Z)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->val$v:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->val$index:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidong/photopicker/Folder;

    if-eqz v0, :cond_1

    .line 250
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v2, v2, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;

    move-result-object v2

    iget-object v3, v0, Lcom/lidong/photopicker/Folder;->images:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/lidong/photopicker/ImageGridAdapter;->setData(Ljava/util/List;)V

    .line 251
    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v2, v2, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1000(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/widget/Button;

    move-result-object v2

    iget-object v0, v0, Lcom/lidong/photopicker/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v2, v2, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lidong/photopicker/ImageGridAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$000(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/ImageGridAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lidong/photopicker/ImageGridAdapter;->setShowCamera(Z)V

    .line 261
    :goto_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;->this$1:Lcom/lidong/photopicker/PhotoPickerActivity$4;

    iget-object v0, v0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$1200(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return-void
.end method

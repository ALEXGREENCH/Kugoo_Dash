.class Lcom/yancy/imageselector/ImageSelectorFragment$5$1;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yancy/imageselector/ImageSelectorFragment$5;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

.field final synthetic val$index:I

.field final synthetic val$v:Landroid/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/yancy/imageselector/ImageSelectorFragment$5;ILandroid/widget/AdapterView;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iput p2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->val$index:I

    iput-object p3, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->val$v:Landroid/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 245
    iget v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->val$index:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportLoaderManager()Landroidx/loader/app/LoaderManager;

    move-result-object v0

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v2, v2, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1100(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/loader/app/LoaderManager$LoaderCallbacks;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroidx/loader/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroidx/loader/app/LoaderManager$LoaderCallbacks;)Landroidx/loader/content/Loader;

    .line 247
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1200(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v0

    sget v2, Lcom/yancy/imageselector/R$string;->all_folder:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$900(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/ImageConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->isShowCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setShowCamera(Z)V

    goto/16 :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setShowCamera(Z)V

    goto :goto_0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->val$v:Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    iget v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->val$index:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yancy/imageselector/bean/Folder;

    if-eqz v0, :cond_2

    .line 256
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v2, v2, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1300(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 257
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v2, v2, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1300(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/yancy/imageselector/bean/Folder;->images:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v2, v2, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yancy/imageselector/adapter/ImageAdapter;->notifyDataSetChanged()V

    .line 260
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v2, v2, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1200(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v0, v0, Lcom/yancy/imageselector/bean/Folder;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1400(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1400(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v2, v2, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v2}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$1400(Lcom/yancy/imageselector/ImageSelectorFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setDefaultSelected(Ljava/util/ArrayList;)V

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$700(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/ImageAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yancy/imageselector/adapter/ImageAdapter;->setShowCamera(Z)V

    .line 270
    :goto_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$5$1;->this$1:Lcom/yancy/imageselector/ImageSelectorFragment$5;

    iget-object v0, v0, Lcom/yancy/imageselector/ImageSelectorFragment$5;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$600(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return-void
.end method

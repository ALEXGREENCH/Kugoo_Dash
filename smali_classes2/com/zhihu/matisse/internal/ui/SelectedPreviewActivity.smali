.class public Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;
.super Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;
.source "SelectedPreviewActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 31
    invoke-super {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->hasInited:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 33
    invoke-virtual {p0, v0}, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->setResult(I)V

    .line 34
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->finish()V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_default_bundle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "state_selection"

    .line 39
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

    invoke-virtual {v1, p1}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->addAll(Ljava/util/List;)V

    .line 41
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->notifyDataSetChanged()V

    .line 42
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    invoke-virtual {v1, v2}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    .line 47
    :goto_0
    iput v0, p0, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->mPreviousPos:I

    .line 48
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/SelectedPreviewActivity;->updateSize(Lcom/zhihu/matisse/internal/entity/Item;)V

    return-void
.end method

.class public Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;
.super Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;
.source "AlbumPreviewActivity.java"

# interfaces
.implements Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;


# static fields
.field public static final EXTRA_ALBUM:Ljava/lang/String; = "extra_album"

.field public static final EXTRA_ITEM:Ljava/lang/String; = "extra_item"


# instance fields
.field private mCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

.field private mIsAlreadySetPosition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;-><init>()V

    .line 37
    new-instance v0, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    invoke-direct {v0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;-><init>()V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    return-void
.end method


# virtual methods
.method public onAlbumMediaLoad(Landroid/database/Cursor;)V
    .locals 2

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p1}, Lcom/zhihu/matisse/internal/entity/Item;->valueOf(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

    .line 81
    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->addAll(Ljava/util/List;)V

    .line 82
    invoke-virtual {p1}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->notifyDataSetChanged()V

    .line 83
    iget-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mIsAlreadySetPosition:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mIsAlreadySetPosition:Z

    .line 86
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "extra_item"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 88
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    .line 89
    iput p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mPreviousPos:I

    :cond_2
    return-void
.end method

.method public onAlbumMediaReset()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {}, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->getInstance()Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->hasInited:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->setResult(I)V

    .line 46
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->finish()V

    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {p1, p0, p0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->onCreate(Landroidx/fragment/app/FragmentActivity;Lcom/zhihu/matisse/internal/model/AlbumMediaCollection$AlbumMediaCallbacks;)V

    .line 50
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_album"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Album;

    .line 51
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->load(Lcom/zhihu/matisse/internal/entity/Album;)V

    .line 53
    invoke-virtual {p0}, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    .line 54
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    .line 59
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->updateSize(Lcom/zhihu/matisse/internal/entity/Item;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onDestroy()V

    .line 65
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/AlbumPreviewActivity;->mCollection:Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;

    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/AlbumMediaCollection;->onDestroy()V

    return-void
.end method

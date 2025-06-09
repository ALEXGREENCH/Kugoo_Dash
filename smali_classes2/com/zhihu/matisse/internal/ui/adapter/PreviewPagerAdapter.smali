.class public Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter$OnPrimaryItemSetListener;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter$OnPrimaryItemSetListener;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter$OnPrimaryItemSetListener;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->mItems:Ljava/util/ArrayList;

    .line 36
    iput-object p2, p0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->mListener:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter$OnPrimaryItemSetListener;

    return-void
.end method


# virtual methods
.method public addAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zhihu/matisse/internal/entity/Item;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;->newInstance(Lcom/zhihu/matisse/internal/entity/Item;)Lcom/zhihu/matisse/internal/ui/PreviewItemFragment;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItem(I)Lcom/zhihu/matisse/internal/entity/Item;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zhihu/matisse/internal/entity/Item;

    return-object p1
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentPagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->mListener:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter$OnPrimaryItemSetListener;

    if-eqz p1, :cond_0

    .line 53
    invoke-interface {p1, p2}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter$OnPrimaryItemSetListener;->onPrimaryItemSet(I)V

    :cond_0
    return-void
.end method

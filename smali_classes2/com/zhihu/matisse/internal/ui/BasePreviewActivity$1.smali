.class Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;
.super Ljava/lang/Object;
.source "BasePreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mAdapter:Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/adapter/PreviewPagerAdapter;->getMediaItem(I)Lcom/zhihu/matisse/internal/entity/Item;

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->isSelected(Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->remove(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 123
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    const/high16 v0, -0x80000000

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-static {v0, p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->access$000(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;Lcom/zhihu/matisse/internal/entity/Item;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->add(Lcom/zhihu/matisse/internal/entity/Item;)Z

    .line 131
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-boolean v0, v0, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->countable:Z

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v1, v1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1, p1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->checkedNumOf(Lcom/zhihu/matisse/internal/entity/Item;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setCheckedNum(I)V

    goto :goto_0

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mCheckView:Lcom/zhihu/matisse/internal/ui/widget/CheckView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zhihu/matisse/internal/ui/widget/CheckView;->setChecked(Z)V

    .line 138
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->access$100(Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;)V

    .line 140
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/zhihu/matisse/listener/OnSelectedListener;

    if-eqz p1, :cond_4

    .line 141
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSpec:Lcom/zhihu/matisse/internal/entity/SelectionSpec;

    iget-object p1, p1, Lcom/zhihu/matisse/internal/entity/SelectionSpec;->onSelectedListener:Lcom/zhihu/matisse/listener/OnSelectedListener;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v0, v0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    .line 142
    invoke-virtual {v0}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asListOfUri()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity$1;->this$0:Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;

    iget-object v1, v1, Lcom/zhihu/matisse/internal/ui/BasePreviewActivity;->mSelectedCollection:Lcom/zhihu/matisse/internal/model/SelectedItemCollection;

    invoke-virtual {v1}, Lcom/zhihu/matisse/internal/model/SelectedItemCollection;->asListOfString()Ljava/util/List;

    move-result-object v1

    .line 141
    invoke-interface {p1, v0, v1}, Lcom/zhihu/matisse/listener/OnSelectedListener;->onSelected(Ljava/util/List;Ljava/util/List;)V

    :cond_4
    return-void
.end method

.class Lcom/yancy/imageselector/ImageSelectorFragment$1;
.super Ljava/lang/Object;
.source "ImageSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yancy/imageselector/ImageSelectorFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yancy/imageselector/ImageSelectorFragment;


# direct methods
.method constructor <init>(Lcom/yancy/imageselector/ImageSelectorFragment;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 135
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$100(Lcom/yancy/imageselector/ImageSelectorFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$200(Lcom/yancy/imageselector/ImageSelectorFragment;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$300(Lcom/yancy/imageselector/ImageSelectorFragment;II)V

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 142
    :cond_1
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 143
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {p1}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$400(Lcom/yancy/imageselector/ImageSelectorFragment;)Lcom/yancy/imageselector/adapter/FolderAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yancy/imageselector/adapter/FolderAdapter;->getSelectIndex()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorFragment$1;->this$0:Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-static {v0}, Lcom/yancy/imageselector/ImageSelectorFragment;->access$000(Lcom/yancy/imageselector/ImageSelectorFragment;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_1
    return-void
.end method

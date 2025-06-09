.class Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;
.super Ljava/lang/Object;
.source "AlbumsSpinner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->setSelectedTextView(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;


# direct methods
.method constructor <init>(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;->this$0:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/zhihu/matisse/R$dimen;->album_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 116
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;->this$0:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {v0}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->access$300(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;->this$0:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    .line 117
    invoke-static {v1}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->access$200(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    mul-int/2addr p1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;->this$0:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    .line 118
    invoke-static {v1}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->access$200(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    mul-int/2addr p1, v1

    .line 116
    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->setHeight(I)V

    .line 119
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner$2;->this$0:Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;

    invoke-static {p1}, Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;->access$300(Lcom/zhihu/matisse/internal/ui/widget/AlbumsSpinner;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    return-void
.end method

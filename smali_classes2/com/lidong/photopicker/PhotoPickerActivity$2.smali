.class Lcom/lidong/photopicker/PhotoPickerActivity$2;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidong/photopicker/PhotoPickerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidong/photopicker/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPickerActivity;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 156
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$600(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    if-nez p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$700(Lcom/lidong/photopicker/PhotoPickerActivity;)V

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$600(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$600(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    goto :goto_1

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$600(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/widget/ListPopupWindow;->show()V

    .line 164
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$800(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/FolderAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidong/photopicker/FolderAdapter;->getSelectIndex()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$600(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroidx/appcompat/widget/ListPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :goto_1
    return-void
.end method

.class Lcom/lidong/photopicker/PhotoPickerActivity$4;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidong/photopicker/PhotoPickerActivity;->createPopupFolderList()V
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

    .line 229
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 233
    iget-object p2, p0, Lcom/lidong/photopicker/PhotoPickerActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {p2}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$800(Lcom/lidong/photopicker/PhotoPickerActivity;)Lcom/lidong/photopicker/FolderAdapter;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/lidong/photopicker/FolderAdapter;->setSelectIndex(I)V

    .line 238
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p4, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;

    invoke-direct {p4, p0, p3, p1}, Lcom/lidong/photopicker/PhotoPickerActivity$4$1;-><init>(Lcom/lidong/photopicker/PhotoPickerActivity$4;ILandroid/widget/AdapterView;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p2, p4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.class Lcom/lidong/photopicker/PhotoPickerActivity$3;
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

    .line 172
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPickerActivity$3;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 175
    new-instance p1, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$3;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$300(Lcom/lidong/photopicker/PhotoPickerActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1, v0}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;->setCurrentItem(I)V

    .line 177
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$3;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-static {v0}, Lcom/lidong/photopicker/PhotoPickerActivity;->access$200(Lcom/lidong/photopicker/PhotoPickerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;->setPhotoPaths(Ljava/util/ArrayList;)V

    .line 178
    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPickerActivity$3;->this$0:Lcom/lidong/photopicker/PhotoPickerActivity;

    const/16 v1, 0x63

    invoke-virtual {v0, p1, v1}, Lcom/lidong/photopicker/PhotoPickerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.class Lcom/lidong/photopicker/PhotoPreviewActivity$3;
.super Ljava/lang/Object;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lidong/photopicker/PhotoPreviewActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPreviewActivity;I)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$3;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    iput p2, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$3;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 133
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 134
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$3;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->access$000(Lcom/lidong/photopicker/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget p2, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$3;->val$index:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 135
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$3;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-virtual {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->onBackPressed()V

    return-void
.end method

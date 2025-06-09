.class Lcom/lidong/photopicker/PhotoPreviewActivity$2;
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


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPreviewActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$2;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 140
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

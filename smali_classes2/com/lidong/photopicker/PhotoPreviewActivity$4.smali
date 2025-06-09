.class Lcom/lidong/photopicker/PhotoPreviewActivity$4;
.super Ljava/lang/Object;
.source "PhotoPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$deletedPath:Ljava/lang/String;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/lidong/photopicker/PhotoPreviewActivity;ILjava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    iput p2, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->val$index:I

    iput-object p3, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->val$deletedPath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->access$000(Lcom/lidong/photopicker/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->access$000(Lcom/lidong/photopicker/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->val$index:I

    iget-object v1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->val$deletedPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->access$000(Lcom/lidong/photopicker/PhotoPreviewActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->val$deletedPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :goto_0
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->access$100(Lcom/lidong/photopicker/PhotoPreviewActivity;)Lcom/lidong/photopicker/PhotoPagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidong/photopicker/PhotoPagerAdapter;->notifyDataSetChanged()V

    .line 159
    iget-object p1, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->this$0:Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-static {p1}, Lcom/lidong/photopicker/PhotoPreviewActivity;->access$200(Lcom/lidong/photopicker/PhotoPreviewActivity;)Lcom/lidong/photopicker/widget/ViewPagerFixed;

    move-result-object p1

    iget v0, p0, Lcom/lidong/photopicker/PhotoPreviewActivity$4;->val$index:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/lidong/photopicker/widget/ViewPagerFixed;->setCurrentItem(IZ)V

    return-void
.end method

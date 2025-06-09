.class Lcom/kugoo/kugookirin/social/PublishActivity$1;
.super Ljava/lang/Object;
.source "PublishActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/PublishActivity;->set_select_image()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/PublishActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/PublishActivity;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 214
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 215
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "tag==="

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "tag"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "paizhao"

    .line 216
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    new-instance p1, Lcom/lidong/photopicker/intent/PhotoPickerIntent;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-direct {p1, p2}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;-><init>(Landroid/content/Context;)V

    .line 218
    sget-object p2, Lcom/lidong/photopicker/SelectModel;->MULTI:Lcom/lidong/photopicker/SelectModel;

    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->setSelectModel(Lcom/lidong/photopicker/SelectModel;)V

    const/4 p2, 0x1

    .line 219
    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->setShowCarema(Z)V

    const/16 p2, 0x9

    .line 220
    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->setMaxTotal(I)V

    .line 221
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->setSelectedPaths(Ljava/util/ArrayList;)V

    .line 222
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    const/16 p3, 0xa

    invoke-virtual {p2, p1, p3}, Lcom/kugoo/kugookirin/social/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 224
    :cond_0
    new-instance p1, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-direct {p1, p2}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {p1, p3}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;->setCurrentItem(I)V

    .line 226
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/social/PublishActivity;->access$000(Lcom/kugoo/kugookirin/social/PublishActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;->setPhotoPaths(Ljava/util/ArrayList;)V

    .line 227
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity$1;->this$0:Lcom/kugoo/kugookirin/social/PublishActivity;

    const/16 p3, 0x14

    invoke-virtual {p2, p1, p3}, Lcom/kugoo/kugookirin/social/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

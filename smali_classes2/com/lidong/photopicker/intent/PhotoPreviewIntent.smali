.class public Lcom/lidong/photopicker/intent/PhotoPreviewIntent;
.super Landroid/content/Intent;
.source "PhotoPreviewIntent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 16
    const-class v0, Lcom/lidong/photopicker/PhotoPreviewActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public setCurrentItem(I)V
    .locals 1

    const-string v0, "extra_current_item"

    .line 32
    invoke-virtual {p0, v0, p1}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public setPhotoPaths(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "extra_photos"

    .line 24
    invoke-virtual {p0, v0, p1}, Lcom/lidong/photopicker/intent/PhotoPreviewIntent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-void
.end method

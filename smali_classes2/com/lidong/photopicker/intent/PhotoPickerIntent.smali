.class public Lcom/lidong/photopicker/intent/PhotoPickerIntent;
.super Landroid/content/Intent;
.source "PhotoPickerIntent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 18
    const-class v0, Lcom/lidong/photopicker/PhotoPickerActivity;

    invoke-direct {p0, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public setImageConfig(Lcom/lidong/photopicker/ImageConfig;)V
    .locals 1

    const-string v0, "image_config"

    .line 50
    invoke-virtual {p0, v0, p1}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-void
.end method

.method public setMaxTotal(I)V
    .locals 1

    const-string v0, "max_select_count"

    .line 26
    invoke-virtual {p0, v0, p1}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public setSelectModel(Lcom/lidong/photopicker/SelectModel;)V
    .locals 1

    .line 34
    invoke-virtual {p1}, Lcom/lidong/photopicker/SelectModel;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "select_count_mode"

    invoke-virtual {p0, v0, p1}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public setSelectedPaths(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "default_result"

    .line 42
    invoke-virtual {p0, v0, p1}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-void
.end method

.method public setShowCarema(Z)V
    .locals 1

    const-string v0, "show_camera"

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/lidong/photopicker/intent/PhotoPickerIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

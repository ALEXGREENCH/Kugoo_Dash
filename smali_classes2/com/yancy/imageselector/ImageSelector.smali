.class public Lcom/yancy/imageselector/ImageSelector;
.super Ljava/lang/Object;
.source "ImageSelector.java"


# static fields
.field public static final IMAGE_CROP_CODE:I = 0x3eb

.field public static final IMAGE_REQUEST_CODE:I = 0x3ea

.field private static mImageConfig:Lcom/yancy/imageselector/ImageConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageConfig()Lcom/yancy/imageselector/ImageConfig;
    .locals 1

    .line 23
    sget-object v0, Lcom/yancy/imageselector/ImageSelector;->mImageConfig:Lcom/yancy/imageselector/ImageConfig;

    return-object v0
.end method

.method public static open(Landroid/app/Activity;Lcom/yancy/imageselector/ImageConfig;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    sput-object p1, Lcom/yancy/imageselector/ImageSelector;->mImageConfig:Lcom/yancy/imageselector/ImageConfig;

    .line 32
    invoke-virtual {p1}, Lcom/yancy/imageselector/ImageConfig;->getImageLoader()Lcom/yancy/imageselector/ImageLoader;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 33
    sget p1, Lcom/yancy/imageselector/R$string;->open_camera_fail:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 37
    :cond_1
    invoke-static {}, Lcom/yancy/imageselector/utils/Utils;->existSDCard()Z

    move-result p1

    if-nez p1, :cond_2

    .line 38
    sget p1, Lcom/yancy/imageselector/R$string;->empty_sdcard:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 43
    :cond_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    sget-object v0, Lcom/yancy/imageselector/ImageSelector;->mImageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getRequestCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static open(Landroidx/fragment/app/Fragment;Lcom/yancy/imageselector/ImageConfig;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 51
    :cond_0
    sput-object p1, Lcom/yancy/imageselector/ImageSelector;->mImageConfig:Lcom/yancy/imageselector/ImageConfig;

    .line 53
    invoke-virtual {p1}, Lcom/yancy/imageselector/ImageConfig;->getImageLoader()Lcom/yancy/imageselector/ImageLoader;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 54
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/yancy/imageselector/R$string;->open_camera_fail:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 58
    :cond_1
    invoke-static {}, Lcom/yancy/imageselector/utils/Utils;->existSDCard()Z

    move-result p1

    if-nez p1, :cond_2

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    sget p1, Lcom/yancy/imageselector/R$string;->empty_sdcard:I

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    .line 64
    :cond_2
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/yancy/imageselector/ImageSelectorActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x3ea

    .line 65
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

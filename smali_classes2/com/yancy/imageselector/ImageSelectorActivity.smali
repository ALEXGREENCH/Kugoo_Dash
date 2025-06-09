.class public Lcom/yancy/imageselector/ImageSelectorActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "ImageSelectorActivity.java"

# interfaces
.implements Lcom/yancy/imageselector/ImageSelectorFragment$Callback;


# static fields
.field public static final EXTRA_RESULT:Ljava/lang/String; = "select_result"


# instance fields
.field private cropImagePath:Ljava/lang/String;

.field private imageConfig:Lcom/yancy/imageselector/ImageConfig;

.field private imageselector_title_bar_layout:Landroid/widget/RelativeLayout;

.field private pathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private submitButton:Landroid/widget/TextView;

.field private title_text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/yancy/imageselector/ImageSelectorActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->exit()V

    return-void
.end method

.method static synthetic access$100(Lcom/yancy/imageselector/ImageSelectorActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private crop(Ljava/lang/String;IIII)V
    .locals 3

    .line 116
    invoke-static {}, Lcom/yancy/imageselector/utils/Utils;->existSDCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageConfig;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yancy/imageselector/utils/Utils;->getImageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-static {}, Lcom/yancy/imageselector/utils/Utils;->getImageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->cropImagePath:Ljava/lang/String;

    .line 124
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.camera.action.CROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "image/*"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "crop"

    const-string v2, "true"

    .line 126
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "aspectX"

    .line 127
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "aspectY"

    .line 128
    invoke-virtual {v1, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputX"

    .line 129
    invoke-virtual {v1, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "outputY"

    .line 130
    invoke-virtual {v1, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "return-data"

    const/4 p2, 0x0

    .line 131
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "output"

    .line 132
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0x3eb

    .line 133
    invoke-virtual {p0, v1, p1}, Lcom/yancy/imageselector/ImageSelectorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private exit()V
    .locals 0

    .line 109
    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->finish()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 59
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageConfig;->getTitleSubmitTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 60
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->title_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageConfig;->getTitleTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageselector_title_bar_layout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageConfig;->getTitleBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 63
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getPathList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    .line 66
    sget v0, Lcom/yancy/imageselector/R$id;->back:I

    invoke-virtual {p0, v0}, Lcom/yancy/imageselector/ImageSelectorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/yancy/imageselector/ImageSelectorActivity$1;

    invoke-direct {v1, p0}, Lcom/yancy/imageselector/ImageSelectorActivity$1;-><init>(Lcom/yancy/imageselector/ImageSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/yancy/imageselector/R$string;->finish:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageConfig;->getMaxSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    sget v1, Lcom/yancy/imageselector/R$string;->finish:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 77
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    new-instance v1, Lcom/yancy/imageselector/ImageSelectorActivity$2;

    invoke-direct {v1, p0}, Lcom/yancy/imageselector/ImageSelectorActivity$2;-><init>(Lcom/yancy/imageselector/ImageSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 99
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 100
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->cropImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "select_result"

    .line 101
    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/yancy/imageselector/ImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 103
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->exit()V

    .line 105
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCameraShot(Ljava/io/File;)V
    .locals 9

    const/4 v0, -0x1

    const-string v1, "select_result"

    if-eqz p1, :cond_0

    .line 179
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 180
    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0, v0, v2}, Lcom/yancy/imageselector/ImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 183
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->exit()V

    :cond_0
    if-eqz p1, :cond_2

    .line 186
    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageConfig;->isCrop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {p1}, Lcom/yancy/imageselector/ImageConfig;->getAspectX()I

    move-result v5

    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {p1}, Lcom/yancy/imageselector/ImageConfig;->getAspectY()I

    move-result v6

    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {p1}, Lcom/yancy/imageselector/ImageConfig;->getOutputX()I

    move-result v7

    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {p1}, Lcom/yancy/imageselector/ImageConfig;->getOutputY()I

    move-result v8

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/yancy/imageselector/ImageSelectorActivity;->crop(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 189
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 190
    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v0, v2}, Lcom/yancy/imageselector/ImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->exit()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    sget p1, Lcom/yancy/imageselector/R$layout;->imageselector_activity:I

    invoke-virtual {p0, p1}, Lcom/yancy/imageselector/ImageSelectorActivity;->setContentView(I)V

    .line 41
    invoke-static {}, Lcom/yancy/imageselector/ImageSelector;->getImageConfig()Lcom/yancy/imageselector/ImageConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    .line 43
    sget p1, Lcom/yancy/imageselector/R$id;->imageselector_activity_layout:I

    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getSteepToolBarColor()I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/yancy/imageselector/utils/Utils;->hideTitleBar(Landroid/app/Activity;II)V

    .line 45
    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/yancy/imageselector/R$id;->image_grid:I

    const-class v1, Lcom/yancy/imageselector/ImageSelectorFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 49
    sget p1, Lcom/yancy/imageselector/R$id;->title_right:I

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    .line 50
    sget p1, Lcom/yancy/imageselector/R$id;->title_text:I

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->title_text:Landroid/widget/TextView;

    .line 51
    sget p1, Lcom/yancy/imageselector/R$id;->imageselector_title_bar_layout:I

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageselector_title_bar_layout:Landroid/widget/RelativeLayout;

    .line 53
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->init()V

    return-void
.end method

.method public onImageSelected(Ljava/lang/String;)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/yancy/imageselector/R$string;->finish:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v1}, Lcom/yancy/imageselector/ImageConfig;->getMaxSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onImageUnselected(Ljava/lang/String;)V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ")"

    const-string v2, "/"

    const-string v3, "("

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 166
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yancy/imageselector/R$string;->finish:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageConfig;->getMaxSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/yancy/imageselector/R$string;->finish:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v2}, Lcom/yancy/imageselector/ImageConfig;->getMaxSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_0
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 171
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    sget v0, Lcom/yancy/imageselector/R$string;->finish:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object p1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->submitButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onSingleImageSelected(Ljava/lang/String;)V
    .locals 7

    .line 138
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->isCrop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getAspectX()I

    move-result v3

    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getAspectY()I

    move-result v4

    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getOutputX()I

    move-result v5

    iget-object v0, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->imageConfig:Lcom/yancy/imageselector/ImageConfig;

    invoke-virtual {v0}, Lcom/yancy/imageselector/ImageConfig;->getOutputY()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/yancy/imageselector/ImageSelectorActivity;->crop(Ljava/lang/String;IIII)V

    goto :goto_0

    .line 141
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "select_result"

    .line 143
    iget-object v1, p0, Lcom/yancy/imageselector/ImageSelectorActivity;->pathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/4 p1, -0x1

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/yancy/imageselector/ImageSelectorActivity;->setResult(ILandroid/content/Intent;)V

    .line 145
    invoke-direct {p0}, Lcom/yancy/imageselector/ImageSelectorActivity;->exit()V

    :goto_0
    return-void
.end method

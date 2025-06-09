.class public Lcom/kugoo/kugookirin/social/ImageDetailFragment;
.super Landroidx/fragment/app/Fragment;
.source "ImageDetailFragment.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field private mImageUrl:Ljava/lang/String;

.field private mImageView:Landroid/widget/ImageView;

.field private progressBar:Landroid/widget/ProgressBar;

.field saveImageBtn:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04b1
    .end annotation
.end field

.field saveImageCancelBtn:Landroid/widget/Button;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04b2
    .end annotation
.end field

.field saveImageLiner:Landroid/widget/LinearLayout;
    .annotation runtime Lcom/lidroid/xutils/view/annotation/ViewInject;
        value = 0x7f0a04b3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)Landroid/widget/ProgressBar;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kugoo/kugookirin/social/ImageDetailFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/kugoo/kugookirin/social/ImageDetailFragment;
    .locals 3

    .line 55
    new-instance v0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "url"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v1}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private set_cache()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->bitmap:Landroid/graphics/Bitmap;

    const-string v2, "title"

    const-string v3, "description"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f1201fe

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;

    invoke-direct {v2, p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment$3;-><init>(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lcom/lidroid/xutils/view/annotation/event/OnClick;
        value = {
            0x7f0a04b1,
            0x7f0a04b2
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/16 v0, 0x8

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 143
    :pswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->saveImageLiner:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 139
    :pswitch_1
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->set_cache()V

    .line 140
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->saveImageLiner:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a04b1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 64
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mImageUrl=="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mImageUrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d009d

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    invoke-static {p0, p1}, Lcom/lidroid/xutils/ViewUtils;->inject(Ljava/lang/Object;Landroid/view/View;)V

    const p2, 0x7f0a02ca

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    const p2, 0x7f0a0342

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 78
    new-instance p2, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object p3, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mImageView:Landroid/widget/ImageView;

    invoke-direct {p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 79
    new-instance p3, Lcom/kugoo/kugookirin/social/ImageDetailFragment$1;

    invoke-direct {p3, p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment$1;-><init>(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)V

    invoke-virtual {p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 85
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/ImageDetailFragment;->mAttacher:Luk/co/senab/photoview/PhotoViewAttacher;

    new-instance p3, Lcom/kugoo/kugookirin/social/ImageDetailFragment$2;

    invoke-direct {p3, p0}, Lcom/kugoo/kugookirin/social/ImageDetailFragment$2;-><init>(Lcom/kugoo/kugookirin/social/ImageDetailFragment;)V

    invoke-virtual {p2, p3}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p1
.end method

.class public Lcom/kugoo/kugookirin/social/PublishActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PublishActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;
    }
.end annotation


# static fields
.field private static final REQUEST_CAMERA_CODE:I = 0xa

.field private static final REQUEST_PREVIEW_CODE:I = 0x14

.field private static final REQUEST_VIDEO_CHOOSE:I = 0x3f3

.field private static final dynamicLabelCODE:I = 0x67

.field private static final dynamicLocCODE:I = 0x65

.field private static final dynamicRemindCODE:I = 0x68

.field private static final dynamicScopeCODE:I = 0x66

.field private static final videoPlayRequestCode:I = 0x3f5


# instance fields
.field private MY_PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I

.field private TAG:Ljava/lang/String;

.field private avatar_Linear01:Landroid/widget/LinearLayout;

.field private avatar_Linear02:Landroid/widget/LinearLayout;

.field private bar_image:Landroid/widget/ImageView;

.field private bar_title:Landroid/widget/TextView;

.field private contextEt:Landroid/widget/EditText;

.field private dynamicType:Ljava/lang/String;

.field private former_content:Landroid/widget/TextView;

.field private former_first_pic:Lcom/kugoo/kugookirin/view/GridImageView;

.field private former_name:Landroid/widget/TextView;

.field private gridAdapter:Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;

.field private hasPic:Z

.field private hasVideo:Z

.field private imagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private imgGridView:Landroid/widget/GridView;

.field private isLogin:Z

.field private is_pulicing:Z

.field private labelIDArray:Ljava/lang/String;

.field private labelTv:Landroid/widget/TextView;

.field private locationTv:Landroid/widget/TextView;

.field private mSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private pub_pb:Landroid/widget/RelativeLayout;

.field private publishLoc:Ljava/lang/String;

.field private publish_linear:Landroid/widget/LinearLayout;

.field private remindIDArray:Ljava/lang/String;

.field private remindTv:Landroid/widget/TextView;

.field private scopeTv:Landroid/widget/TextView;

.field private scopeType:Ljava/lang/String;

.field private shareDid:Ljava/lang/String;

.field private share_publish_linear:Landroid/widget/LinearLayout;

.field private share_text:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private tv_click:Landroid/widget/TextView;

.field private uid:Ljava/lang/String;

.field private videoBtn:Landroid/widget/ImageView;

.field private videoRealFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    const-string v0, "PublishActivity"

    .line 95
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 96
    iput v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->MY_PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I

    const-string v0, "1"

    .line 106
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->dynamicType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 107
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasPic:Z

    iput-boolean v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasVideo:Z

    .line 113
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeType:Ljava/lang/String;

    const-string v0, "[]"

    .line 114
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelIDArray:Ljava/lang/String;

    .line 115
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindIDArray:Ljava/lang/String;

    const-string v0, ""

    .line 116
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->publishLoc:Ljava/lang/String;

    .line 121
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->shareDid:Ljava/lang/String;

    .line 302
    iput-boolean v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->is_pulicing:Z

    .line 686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/kugoo/kugookirin/social/PublishActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kugoo/kugookirin/social/PublishActivity;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->pub_pb:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kugoo/kugookirin/social/PublishActivity;Z)Z
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->is_pulicing:Z

    return p1
.end method

.method private getLocalVideo()V
    .locals 3

    .line 377
    invoke-static {p0}, Lcom/zhihu/matisse/Matisse;->from(Landroid/app/Activity;)Lcom/zhihu/matisse/Matisse;

    move-result-object v0

    .line 378
    invoke-static {}, Lcom/zhihu/matisse/MimeType;->ofVideo()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/Matisse;->choose(Ljava/util/Set;)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->countable(Z)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    .line 380
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->maxSelectable(I)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    .line 381
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->showSingleMediaType(Z)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    const/4 v2, -0x1

    .line 382
    invoke-virtual {v0, v2}, Lcom/zhihu/matisse/SelectionCreator;->restrictOrientation(I)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    const v2, 0x3f59999a    # 0.85f

    .line 383
    invoke-virtual {v0, v2}, Lcom/zhihu/matisse/SelectionCreator;->thumbnailScale(F)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    .line 384
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->showPreview(Z)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    const v1, 0x7f13014b

    .line 393
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->theme(I)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    new-instance v1, Lcom/zhihu/matisse/engine/impl/PicassoEngine;

    invoke-direct {v1}, Lcom/zhihu/matisse/engine/impl/PicassoEngine;-><init>()V

    .line 399
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->imageEngine(Lcom/zhihu/matisse/engine/ImageEngine;)Lcom/zhihu/matisse/SelectionCreator;

    move-result-object v0

    const/16 v1, 0x3f3

    .line 401
    invoke-virtual {v0, v1}, Lcom/zhihu/matisse/SelectionCreator;->forResult(I)V

    return-void
.end method

.method public static getLocalVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 647
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 649
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 651
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 654
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    .line 656
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    .line 654
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 656
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 658
    :goto_3
    throw p0
.end method

.method public static getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 665
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 668
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v2, "file"

    .line 669
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 670
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "content"

    .line 671
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 672
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 674
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 675
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-le p0, v1, :cond_3

    .line 677
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    .line 680
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_0
    return-object v0
.end method

.method private initView()V
    .locals 8

    const/4 v0, 0x0

    .line 252
    :try_start_0
    const-class v1, Landroid/os/StrictMode;

    const-string v2, "disableDeathOnFileUriExposure"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 253
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->mSelected:Ljava/util/List;

    const v1, 0x7f0a02d1

    .line 259
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    const v1, 0x7f0a0276

    .line 260
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/view/GridImageView;

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_first_pic:Lcom/kugoo/kugookirin/view/GridImageView;

    const v1, 0x7f0a0142

    .line 261
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->tv_click:Landroid/widget/TextView;

    const v1, 0x7f0a0207

    .line 262
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->contextEt:Landroid/widget/EditText;

    const v1, 0x7f0a0103

    .line 264
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->bar_title:Landroid/widget/TextView;

    const v1, 0x7f0a0102

    .line 265
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->bar_image:Landroid/widget/ImageView;

    const v2, 0x7f0a060e

    .line 266
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    const v2, 0x7f0a0463

    .line 267
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->pub_pb:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0466

    .line 269
    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a0465

    .line 270
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->publish_linear:Landroid/widget/LinearLayout;

    const v3, 0x7f0a007d

    .line 271
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->avatar_Linear01:Landroid/widget/LinearLayout;

    const v3, 0x7f0a007e

    .line 272
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->avatar_Linear02:Landroid/widget/LinearLayout;

    const v3, 0x7f0a04fa

    .line 273
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->share_publish_linear:Landroid/widget/LinearLayout;

    const v3, 0x7f0a048d

    .line 274
    invoke-virtual {p0, v3}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v4, 0x7f0a01f1

    .line 275
    invoke-virtual {p0, v4}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f0a05a8

    .line 276
    invoke-virtual {p0, v5}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const v6, 0x7f0a0347

    .line 277
    invoke-virtual {p0, v6}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->locationTv:Landroid/widget/TextView;

    const v6, 0x7f0a0492

    .line 278
    invoke-virtual {p0, v6}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindTv:Landroid/widget/TextView;

    const v6, 0x7f0a0279

    .line 279
    invoke-virtual {p0, v6}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_name:Landroid/widget/TextView;

    const v6, 0x7f0a0273

    .line 280
    invoke-virtual {p0, v6}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_content:Landroid/widget/TextView;

    const v6, 0x7f0a04b9

    .line 281
    invoke-virtual {p0, v6}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    const v6, 0x7f0a05a9

    .line 282
    invoke-virtual {p0, v6}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelTv:Landroid/widget/TextView;

    .line 285
    iget-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->tv_click:Landroid/widget/TextView;

    const v7, 0x7f120063

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 286
    iget-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->bar_title:Landroid/widget/TextView;

    const v7, 0x7f120065

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 288
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->tv_click:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    sget-object v1, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    .line 291
    sget-object v6, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->isLogin:Z

    .line 292
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_TOKEN:Ljava/lang/String;

    const-string v6, ""

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->token:Ljava/lang/String;

    .line 293
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_USER_ID:Ljava/lang/String;

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->uid:Ljava/lang/String;

    .line 295
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    invoke-virtual {v3, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private loadImgAdapter(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/2addr v0, v2

    const/4 v2, 0x3

    .line 693
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 694
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 698
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string v0, "paizhao"

    .line 700
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 701
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 703
    :cond_2
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 704
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    :try_start_0
    const-string v3, "share_text"

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imgPath=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 709
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 713
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 714
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x50

    invoke-virtual {v4, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 715
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 717
    :cond_3
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 718
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 719
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 722
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 723
    iput-boolean v1, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 724
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 725
    iget-object v3, v4, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 728
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 734
    :cond_4
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v1, 0x9

    if-ge p1, v1, :cond_5

    .line 735
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_5
    new-instance p1, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-direct {p1, p0, v0}, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;-><init>(Lcom/kugoo/kugookirin/social/PublishActivity;Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->gridAdapter:Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;

    .line 739
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private publishDynamic()V
    .locals 8

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 419
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v2, "token"

    .line 420
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->token:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "content"

    .line 421
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->share_text:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "labelid"

    .line 422
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelIDArray:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "scope"

    .line 423
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeType:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "type"

    .line 424
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->dynamicType:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "location"

    .line 425
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->publishLoc:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "remind"

    .line 426
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindIDArray:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "shareDid"

    .line 427
    iget-object v3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->shareDid:Ljava/lang/String;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "releaseTime"

    .line 428
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "method"

    const-string v1, "publishingDynamics"

    .line 429
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "key"

    .line 430
    invoke-static {}, Lcom/example/mylibrary/LDSDKEncryption;->myKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    invoke-static {}, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->getInstance()Lcom/kugoo/kugookirin/view/ShareUploadUtil;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dynamic/dynamic.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "pictureFile"

    iget-object v6, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->dynamicType:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Lcom/kugoo/kugookirin/view/ShareUploadUtil;->sendMultipart(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    .line 434
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    .line 435
    invoke-static {}, Lrx/schedulers/Schedulers;->newThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/kugoo/kugookirin/social/PublishActivity$2;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/PublishActivity$2;-><init>(Lcom/kugoo/kugookirin/social/PublishActivity;)V

    .line 436
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    return-void
.end method

.method private setRemindAvatar(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 623
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 624
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 625
    new-instance v1, Lcom/kugoo/kugookirin/view/CircleImageView;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/view/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 626
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x64

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    .line 627
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 629
    invoke-virtual {v1, v2}, Lcom/kugoo/kugookirin/view/CircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 630
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    .line 630
    invoke-virtual {v2, v3, v1, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->avatar_Linear02:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 635
    :cond_0
    iget-object v2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->avatar_Linear01:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private set_select_image()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    new-instance v1, Lcom/kugoo/kugookirin/social/PublishActivity$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/social/PublishActivity$1;-><init>(Lcom/kugoo/kugookirin/social/PublishActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    const-string v1, "paizhao"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    new-instance v0, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imagePaths:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;-><init>(Lcom/kugoo/kugookirin/social/PublishActivity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->gridAdapter:Lcom/kugoo/kugookirin/social/PublishActivity$GridAdapter;

    .line 233
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private showDefaultUi()V
    .locals 3

    .line 202
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PREFERENCE_IS_NORMAL_MODE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 808
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 810
    invoke-virtual {p0, v0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    .line 812
    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 814
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 817
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 820
    :cond_1
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 823
    :cond_2
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public isShouldHideInput(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 828
    instance-of v1, p1, Landroid/widget/EditText;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 829
    fill-array-data v1, :array_0

    .line 831
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v1, v0

    const/4 v3, 0x1

    aget v1, v1, v3

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 835
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p1, v2

    .line 836
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float p1, p1

    cmpg-float p1, v2, p1

    if-gez p1, :cond_0

    .line 837
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float p2, v4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    return v0

    :cond_0
    return v3

    :cond_1
    return v0

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 479
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    const/16 v1, 0x3f5

    const/16 v2, 0x3f3

    if-eq p2, v0, :cond_0

    const/16 v0, 0x66

    if-eq p2, v0, :cond_0

    const/16 v0, 0x68

    if-eq v0, p2, :cond_0

    const/16 v0, 0x67

    if-eq p2, v0, :cond_0

    const/16 v0, 0x65

    if-eq v0, p2, :cond_0

    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_e

    :cond_0
    const/16 p2, 0xa

    const-string v0, "ListExtra"

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq p1, p2, :cond_c

    const/16 p2, 0x14

    if-eq p1, p2, :cond_a

    if-eq p1, v2, :cond_9

    const-string p2, "publishLoc0002"

    const-string v0, ""

    if-eq p1, v1, :cond_7

    const v1, 0x7f0602f2

    const v2, 0x7f06020f

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const-string p1, "remindIDArray"

    .line 486
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindIDArray:Ljava/lang/String;

    const-string p1, "remindPICArray"

    .line 487
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 489
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->avatar_Linear02:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 490
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->avatar_Linear01:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 491
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 492
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->setRemindAvatar(Ljava/util/ArrayList;)V

    .line 493
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindTv:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_6

    .line 496
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindTv:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 497
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->remindTv:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_6

    :pswitch_1
    const-string p1, "labelIDArray"

    .line 550
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelIDArray:Ljava/lang/String;

    const-string p1, "labelTxtArray"

    .line 551
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 552
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelIDArray:Ljava/lang/String;

    const-string p3, "[]"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "labelArray"

    if-eqz p2, :cond_2

    .line 553
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelTv:Landroid/widget/TextView;

    const p2, 0x7f12039b

    invoke-virtual {p0, p2}, Lcom/kugoo/kugookirin/social/PublishActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 554
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelTv:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 555
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelTv:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 557
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "labelTXTArray=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 559
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelTv:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 560
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 562
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "labelArray=="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->labelIDArray:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_2
    const-string p1, "scopeType"

    .line 533
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeType:Ljava/lang/String;

    const-string p3, "1"

    .line 534
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 535
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    const p3, 0x7f12038d

    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/social/PublishActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 537
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 538
    :cond_3
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeType:Ljava/lang/String;

    const-string p3, "2"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 539
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    const p3, 0x7f120392

    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/social/PublishActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 541
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 542
    :cond_4
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeType:Ljava/lang/String;

    const-string p3, "3"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 543
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    const p3, 0x7f120375

    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/social/PublishActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 545
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 547
    :cond_5
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "scopeType=="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->scopeType:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_3
    const-string p1, "publishLocTxt"

    .line 565
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->publishLoc:Ljava/lang/String;

    .line 566
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 567
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->locationTv:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 568
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->locationTv:Landroid/widget/TextView;

    const p3, 0x7f1201e2

    invoke-virtual {p0, p3}, Lcom/kugoo/kugookirin/social/PublishActivity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->locationTv:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 571
    :cond_6
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->locationTv:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 572
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->locationTv:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->publishLoc:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->locationTv:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lcom/kugoo/kugookirin/social/PublishActivity;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 575
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "publishLoc=="

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->publishLoc:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_7
    if-eqz p3, :cond_e

    const-string p1, "videoDeleteOrSave"

    .line 606
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "delete"

    .line 607
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 608
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasVideo:Z

    .line 609
    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 610
    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    iput-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    .line 612
    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {p3, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 614
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "videoDeleteOrSave=="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_9
    if-eqz p3, :cond_e

    .line 579
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {p1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 580
    invoke-static {p3}, Lcom/zhihu/matisse/Matisse;->obtainResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->mSelected:Ljava/util/List;

    .line 581
    iput-boolean v5, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasVideo:Z

    .line 583
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 584
    invoke-static {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->getRealFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    .line 587
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 588
    new-instance p2, Ljava/io/File;

    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    iget-object p3, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "videoUri=="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "  real=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "share_text"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :try_start_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->getLocalVideoBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 597
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_e

    .line 600
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    :cond_a
    const-string p1, "preview_result"

    .line 518
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 520
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->loadImgAdapter(Ljava/util/ArrayList;)V

    .line 521
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_b

    .line 522
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iput-boolean v5, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasPic:Z

    goto :goto_4

    .line 525
    :cond_b
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 526
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {p2, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 527
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasPic:Z

    .line 529
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "PREVIEW="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    const-string p1, "select_result"

    .line 503
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 505
    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->loadImgAdapter(Ljava/util/ArrayList;)V

    .line 506
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_d

    .line 507
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iput-boolean v5, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasPic:Z

    goto :goto_5

    .line 510
    :cond_d
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoBtn:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imgGridView:Landroid/widget/GridView;

    invoke-virtual {p2, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 512
    iput-boolean v4, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasPic:Z

    .line 514
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "CAMERA="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 356
    :sswitch_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getLocalVideo()V

    goto/16 :goto_1

    .line 358
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 359
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/social/CirclePlayVideoActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "videoRealPath"

    .line 360
    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->videoRealFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3f5

    .line 361
    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 353
    :sswitch_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/social/PublishTopicActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x67

    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 345
    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/social/PublishRemindActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x68

    .line 346
    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 341
    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/social/PublishLocActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x65

    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 349
    :sswitch_4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/kugoo/kugookirin/social/DynamicSettingActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v0, 0x66

    .line 350
    invoke-virtual {p0, p1, v0}, Lcom/kugoo/kugookirin/social/PublishActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 311
    :sswitch_5
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/kugoo/kugookirin/utils/toolUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const p1, 0x7f1201a6

    .line 312
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 315
    :cond_1
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->is_pulicing:Z

    if-eqz p1, :cond_2

    return-void

    .line 318
    :cond_2
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->contextEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->share_text:Ljava/lang/String;

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "share_text=="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->share_text:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "shahshah"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->share_text:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->imageUrl:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[]"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasVideo:Z

    if-nez p1, :cond_3

    const p1, 0x7f120064

    .line 323
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 326
    :cond_3
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasVideo:Z

    if-eqz p1, :cond_4

    const-string p1, "3"

    .line 327
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->dynamicType:Ljava/lang/String;

    goto :goto_0

    .line 328
    :cond_4
    iget-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->hasPic:Z

    if-eqz p1, :cond_5

    const-string p1, "2"

    .line 329
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->dynamicType:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string p1, "1"

    .line 332
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->dynamicType:Ljava/lang/String;

    :goto_0
    const/4 p1, 0x1

    .line 334
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->is_pulicing:Z

    .line 335
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->pub_pb:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 336
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->publishDynamic()V

    goto :goto_1

    .line 308
    :sswitch_6
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->finish()V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a0102 -> :sswitch_6
        0x7f0a0142 -> :sswitch_5
        0x7f0a01f1 -> :sswitch_4
        0x7f0a0466 -> :sswitch_3
        0x7f0a048d -> :sswitch_2
        0x7f0a05a8 -> :sswitch_1
        0x7f0a060e -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d003f

    .line 127
    invoke-virtual {p0, p1}, Lcom/kugoo/kugookirin/social/PublishActivity;->setContentView(I)V

    .line 128
    invoke-static {p0}, Lcom/lidroid/xutils/ViewUtils;->inject(Landroid/app/Activity;)V

    .line 130
    invoke-static {p0}, Lcom/kugoo/kugookirin/utils/MyApplication;->addActivity(Landroid/app/Activity;)V

    .line 131
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->initView()V

    .line 133
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v1, "android.permission.CAMERA"

    const/16 v2, 0x21

    if-ge p1, v2, :cond_0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 136
    :cond_0
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 140
    :cond_1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->MY_PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 143
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    if-lt p1, v2, :cond_3

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    .line 146
    :cond_3
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_5

    .line 150
    :cond_4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->MY_PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 154
    :cond_5
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->set_select_image()V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    const-string v0, "shareDynamicBundle"

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 162
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->publish_linear:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->share_publish_linear:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v0, "needRemind"

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    const-string v0, "dynamicUname"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "dynamicDContent"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "firstPicUrl"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "formerName"

    .line 169
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "formerDContent"

    .line 170
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "formerDynamicID"

    .line 171
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 178
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->shareDid:Ljava/lang/String;

    .line 181
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 182
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_content:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 184
    :cond_7
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_content:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :goto_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_name:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 190
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->ABSOLUTE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_first_pic:Lcom/kugoo/kugookirin/view/GridImageView;

    .line 191
    invoke-static {}, Lcom/kugoo/kugookirin/utils/Utils;->getImageOptions()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 190
    invoke-virtual {p1, v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_2

    .line 193
    :cond_8
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->former_first_pic:Lcom/kugoo/kugookirin/view/GridImageView;

    invoke-virtual {p1, v1}, Lcom/kugoo/kugookirin/view/GridImageView;->setVisibility(I)V

    .line 197
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->showDefaultUi()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 238
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 239
    iget p2, p0, Lcom/kugoo/kugookirin/social/PublishActivity;->MY_PERMISSIONS_REQUEST_ACCESS_COARSE_LOCATION:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    .line 240
    aget p2, p3, p1

    if-nez p2, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/kugoo/kugookirin/social/PublishActivity;->set_select_image()V

    goto :goto_0

    :cond_0
    const p2, 0x7f1201e0

    .line 243
    invoke-static {p0, p2, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 474
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method public readStream(Ljava/lang/String;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 743
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 744
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 747
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v3, v2, :cond_0

    const/4 v3, 0x0

    .line 748
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 750
    :cond_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 751
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 753
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.class public Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;
.super Ljava/lang/Object;
.source "MediaStoreCompat.java"


# instance fields
.field private mCaptureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

.field private final mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPhotoPath:Ljava/lang/String;

.field private mCurrentPhotoUri:Landroid/net/Uri;

.field private final mFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mContext:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mContext:Ljava/lang/ref/WeakReference;

    .line 56
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mFragment:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private createImageFile()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "JPEG_%s.jpg"

    .line 113
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCaptureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    iget-boolean v1, v1, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;->isPublic:Z

    if-eqz v1, :cond_0

    .line 116
    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 122
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCaptureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;->directory:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 123
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCaptureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    iget-object v3, v3, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;->directory:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    move-object v1, v2

    .line 128
    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "mounted"

    .line 131
    invoke-static {v2}, Landroidx/core/os/EnvironmentCompat;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    return-object v2
.end method

.method public static hasCameraFeature(Landroid/content/Context;)Z
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public dispatchCaptureIntent(Landroid/content/Context;I)V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->createImageFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 85
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCurrentPhotoPath:Ljava/lang/String;

    .line 86
    iget-object v1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCaptureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    iget-object v2, v2, Lcom/zhihu/matisse/internal/entity/CaptureStrategy;->authority:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCurrentPhotoUri:Landroid/net/Uri;

    const-string v1, "output"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 89
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    iget-object p1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_1
    return-void
.end method

.method public getCurrentPhotoPath()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCurrentPhotoPath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPhotoUri()Landroid/net/Uri;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCurrentPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public setCaptureStrategy(Lcom/zhihu/matisse/internal/entity/CaptureStrategy;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/zhihu/matisse/internal/utils/MediaStoreCompat;->mCaptureStrategy:Lcom/zhihu/matisse/internal/entity/CaptureStrategy;

    return-void
.end method

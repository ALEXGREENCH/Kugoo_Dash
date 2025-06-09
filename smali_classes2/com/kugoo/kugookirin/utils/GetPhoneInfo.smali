.class public Lcom/kugoo/kugookirin/utils/GetPhoneInfo;
.super Ljava/lang/Object;
.source "GetPhoneInfo.java"


# instance fields
.field public AvailableRom:Ljava/lang/String;

.field public PhoneModel:Ljava/lang/String;

.field public PhoneResolution:Ljava/lang/String;

.field public PhoneVersion:Ljava/lang/String;

.field public ZcmVersion:Ljava/lang/String;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->context:Landroid/content/Context;

    .line 24
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->PhoneModel:Ljava/lang/String;

    .line 25
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->PhoneVersion:Ljava/lang/String;

    .line 26
    invoke-direct {p0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getDisplayWAndH()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->PhoneResolution:Ljava/lang/String;

    .line 27
    iget-object p1, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->ZcmVersion:Ljava/lang/String;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ROM\u5269\u4f59\u5b58\u50a8\u7a7a\u95f4: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getAvailableInternalMemorySize()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "MB,\u5185\u7f6eSDCard\u5269\u4f59\u5b58\u50a8\u7a7a\u95f4: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 29
    invoke-direct {p0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getAvailableExternalMemorySize()F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "MB"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->AvailableRom:Ljava/lang/String;

    return-void
.end method

.method private calculateSizeInMB(Landroid/os/StatFs;)F
    .locals 2

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-float v0, v0

    .line 104
    invoke-virtual {p1}, Landroid/os/StatFs;->getBlockSize()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr p1, v1

    mul-float/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 39
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 44
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method private getAvailableExternalMemorySize()F
    .locals 1

    .line 125
    invoke-direct {p0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getExternalMemoryPath()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->calculateSizeInMB(Landroid/os/StatFs;)F

    move-result v0

    return v0
.end method

.method private getAvailableInternalMemorySize()F
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getInternalMemoryPath()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->getStatFs(Ljava/lang/String;)Landroid/os/StatFs;

    move-result-object v0

    .line 116
    invoke-direct {p0, v0}, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->calculateSizeInMB(Landroid/os/StatFs;)F

    move-result v0

    return v0
.end method

.method private getDisplayWAndH()Ljava/lang/String;
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/kugoo/kugookirin/utils/GetPhoneInfo;->context:Landroid/content/Context;

    const-string v1, "window"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 54
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5c4f\u5e55\u5206\u8fa8\u7387: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExternalMemoryPath()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInternalMemoryPath()Ljava/lang/String;
    .locals 1

    .line 65
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStatFs(Ljava/lang/String;)Landroid/os/StatFs;
    .locals 1

    .line 86
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

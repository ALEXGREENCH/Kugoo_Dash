.class public Lcn/smssdk/utils/SmsResHelper;
.super Lcom/mob/tools/utils/ResHelper;
.source "SmsResHelper.java"


# static fields
.field private static a:Ljava/lang/String; = "SmsResHelper"

.field private static b:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mob/tools/utils/ResHelper;-><init>()V

    return-void
.end method

.method public static getColor(I)I
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getColorSafe(II)I
    .locals 4

    if-lez p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/smssdk/utils/SmsResHelper;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcn/smssdk/utils/SmsResHelper;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "getColorSafe"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Color resource not found. id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    :cond_0
    invoke-static {p1}, Lcn/smssdk/utils/SmsResHelper;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static getDimen(I)I
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static getDimenDpSize(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcn/smssdk/utils/SmsResHelper;->getDimenPixelSize(I)I

    move-result p0

    invoke-static {v0, p0}, Lcom/mob/tools/utils/ResHelper;->pxToDip(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getDimenDpSizeSafe(II)I
    .locals 4

    if-lez p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/smssdk/utils/SmsResHelper;->getDimenDpSize(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcn/smssdk/utils/SmsResHelper;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "getDimenDpSizeSafe"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dimen resource not found. id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    :cond_0
    invoke-static {p1}, Lcn/smssdk/utils/SmsResHelper;->getDimenDpSize(I)I

    move-result p0

    return p0
.end method

.method public static getDimenPixelSize(I)I
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getDimenRes(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dimen"

    invoke-static {v0, v1, p0}, Lcom/mob/tools/utils/ResHelper;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimenSafe(II)I
    .locals 4

    if-lez p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/smssdk/utils/SmsResHelper;->getDimen(I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 3
    :catch_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcn/smssdk/utils/SmsResHelper;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "getDimenSafe"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dimen resource not found. id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    :cond_0
    invoke-static {p1}, Lcn/smssdk/utils/SmsResHelper;->getDimen(I)I

    move-result p0

    return p0
.end method

.method public static getIconIdSafe(I)I
    .locals 8

    .line 1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4
    iget p0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 6
    :catch_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    sget-object v4, Lcn/smssdk/utils/SmsResHelper;->a:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v4, 0x1

    const-string v5, "getIconIdSafe"

    aput-object v5, v3, v4

    const-string v6, "No icon found"

    const/4 v7, 0x2

    aput-object v6, v3, v7

    const-string v6, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, v6, v3}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 9
    :try_start_1
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "ic_launcher"

    invoke-static {v0, v3}, Lcom/mob/tools/utils/ResHelper;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return p0

    .line 11
    :catchall_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcn/smssdk/utils/SmsResHelper;->a:Ljava/lang/String;

    aput-object v3, v2, v1

    aput-object v5, v2, v4

    const-string v1, "No icon named \'ic_launcher\' found"

    aput-object v1, v2, v7

    invoke-virtual {v0, v6, v2}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    return p0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mob/MobSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    .line 4
    :cond_0
    sget-object v0, Lcn/smssdk/utils/SmsResHelper;->b:Landroid/content/res/Resources;

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringSafe(II)Ljava/lang/String;
    .locals 4

    if-lez p0, :cond_0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/smssdk/utils/SmsResHelper;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 3
    :catchall_0
    invoke-static {}, Lcn/smssdk/utils/SMSLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcn/smssdk/utils/SmsResHelper;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v3, "getStringSafe"

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "String resource not found. id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    aput-object p0, v1, v2

    const-string p0, "[SMSSDK][%s][%s] %s"

    invoke-virtual {v0, p0, v1}, Lcom/mob/tools/log/NLog;->w(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 6
    :cond_0
    invoke-static {p1}, Lcn/smssdk/utils/SmsResHelper;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

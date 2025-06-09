.class final Lcom/zhihu/matisse/internal/utils/ExifInterfaceCompat;
.super Ljava/lang/Object;
.source "ExifInterfaceCompat.java"


# static fields
.field private static final EXIF_DEGREE_FALLBACK_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ExifInterfaceCompat"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getExifDateTime(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const/4 v0, 0x0

    .line 63
    :try_start_0
    invoke-static {p0}, Lcom/zhihu/matisse/internal/utils/ExifInterfaceCompat;->newInstance(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "DateTime"

    .line 69
    invoke-virtual {p0, v1}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 74
    :cond_0
    :try_start_1
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v2, "UTC"

    .line 75
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 76
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 78
    sget-object v1, Lcom/zhihu/matisse/internal/utils/ExifInterfaceCompat;->TAG:Ljava/lang/String;

    const-string v2, "failed to parse date taken"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception p0

    .line 65
    sget-object v1, Lcom/zhihu/matisse/internal/utils/ExifInterfaceCompat;->TAG:Ljava/lang/String;

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getExifDateTimeInMillis(Ljava/lang/String;)J
    .locals 2

    .line 90
    invoke-static {p0}, Lcom/zhihu/matisse/internal/utils/ExifInterfaceCompat;->getExifDateTime(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    .line 109
    :try_start_0
    invoke-static {p0}, Lcom/zhihu/matisse/internal/utils/ExifInterfaceCompat;->newInstance(Ljava/lang/String;)Landroid/media/ExifInterface;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "Orientation"

    .line 115
    invoke-virtual {p0, v1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_2

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    return v1

    :cond_1
    const/16 p0, 0x10e

    return p0

    :cond_2
    const/16 p0, 0x5a

    return p0

    :cond_3
    const/16 p0, 0xb4

    return p0

    :catch_0
    move-exception p0

    .line 111
    sget-object v1, Lcom/zhihu/matisse/internal/utils/ExifInterfaceCompat;->TAG:Ljava/lang/String;

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/media/ExifInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 54
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "filename should not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public abstract Lcn/smssdk/net/login/a;
.super Ljava/lang/Object;
.source "Base64Utils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    return-void
.end method

.method public static a([B)[B
    .locals 1

    .line 1
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object p0

    :goto_0
    return-object p0
.end method

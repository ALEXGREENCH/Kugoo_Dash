.class public Lit/sephiroth/android/library/easing/Quint;
.super Ljava/lang/Object;
.source "Quint.java"

# interfaces
.implements Lit/sephiroth/android/library/easing/Easing;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public easeIn(DDDD)D
    .locals 0

    div-double/2addr p1, p7

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public easeInOut(DDDD)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p7, v0

    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    cmpg-double p7, p1, p7

    if-gez p7, :cond_0

    div-double/2addr p5, v0

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    :goto_0
    add-double/2addr p5, p3

    return-wide p5

    :cond_0
    div-double/2addr p5, v0

    sub-double/2addr p1, v0

    mul-double p7, p1, p1

    mul-double/2addr p7, p1

    mul-double/2addr p7, p1

    mul-double/2addr p7, p1

    add-double/2addr p7, v0

    mul-double/2addr p5, p7

    goto :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 2

    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p7

    mul-double v0, p1, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    add-double/2addr v0, p7

    mul-double/2addr p5, v0

    add-double/2addr p5, p3

    return-wide p5
.end method

.class public Lit/sephiroth/android/library/easing/Linear;
.super Ljava/lang/Object;
.source "Linear.java"

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

    mul-double/2addr p5, p1

    div-double/2addr p5, p7

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public easeInOut(DDDD)D
    .locals 0

    mul-double/2addr p5, p1

    div-double/2addr p5, p7

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public easeNone(DDDD)D
    .locals 0

    mul-double/2addr p5, p1

    div-double/2addr p5, p7

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public easeOut(DDDD)D
    .locals 0

    mul-double/2addr p5, p1

    div-double/2addr p5, p7

    add-double/2addr p5, p3

    return-wide p5
.end method

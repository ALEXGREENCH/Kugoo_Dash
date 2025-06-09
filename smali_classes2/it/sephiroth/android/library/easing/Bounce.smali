.class public Lit/sephiroth/android/library/easing/Bounce;
.super Ljava/lang/Object;
.source "Bounce.java"

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
    .locals 9

    sub-double v1, p7, p1

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 20
    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/easing/Bounce;->easeOut(DDDD)D

    move-result-wide v0

    sub-double v0, p5, v0

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public easeInOut(DDDD)D
    .locals 11

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double v2, p7, v0

    cmpg-double v2, p1, v2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-gez v2, :cond_0

    mul-double v1, p1, v0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 26
    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/easing/Bounce;->easeIn(DDDD)D

    move-result-wide v0

    mul-double/2addr v0, v9

    :goto_0
    add-double/2addr v0, p3

    return-wide v0

    :cond_0
    mul-double/2addr v0, p1

    sub-double v1, v0, p7

    const-wide/16 v3, 0x0

    move-object v0, p0

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 28
    invoke-virtual/range {v0 .. v8}, Lit/sephiroth/android/library/easing/Bounce;->easeOut(DDDD)D

    move-result-wide v0

    mul-double/2addr v0, v9

    mul-double v2, p5, v9

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public easeOut(DDDD)D
    .locals 2

    div-double/2addr p1, p7

    const-wide p7, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double p7, p1, p7

    const-wide v0, 0x401e400000000000L    # 7.5625

    if-gez p7, :cond_0

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    :goto_0
    mul-double/2addr p5, v0

    add-double/2addr p5, p3

    return-wide p5

    :cond_0
    const-wide p7, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double p7, p1, p7

    if-gez p7, :cond_1

    const-wide p7, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr p1, p7

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide/high16 p1, 0x3fe8000000000000L    # 0.75

    :goto_1
    add-double/2addr v0, p1

    goto :goto_0

    :cond_1
    const-wide p7, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double p7, p1, p7

    if-gez p7, :cond_2

    const-wide p7, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr p1, p7

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide/high16 p1, 0x3fee000000000000L    # 0.9375

    goto :goto_1

    :cond_2
    const-wide p7, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr p1, p7

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide p1, 0x3fef800000000000L    # 0.984375

    goto :goto_1
.end method

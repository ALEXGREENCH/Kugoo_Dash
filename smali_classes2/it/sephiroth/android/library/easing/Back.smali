.class public Lit/sephiroth/android/library/easing/Back;
.super Ljava/lang/Object;
.source "Back.java"

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
    .locals 11

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 12
    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/easing/Back;->easeIn(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeIn(DDDDD)D
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p9, v0

    if-nez v0, :cond_0

    const-wide p9, 0x3ffb39abf3387161L    # 1.70158

    :cond_0
    div-double/2addr p1, p7

    mul-double/2addr p5, p1

    mul-double/2addr p5, p1

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    add-double/2addr p7, p9

    mul-double/2addr p7, p1

    sub-double/2addr p7, p9

    mul-double/2addr p5, p7

    add-double/2addr p5, p3

    return-wide p5
.end method

.method public easeInOut(DDDD)D
    .locals 11

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 17
    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/easing/Back;->easeInOut(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeInOut(DDDDD)D
    .locals 15

    const-wide/16 v0, 0x0

    cmpl-double v0, p9, v0

    if-nez v0, :cond_0

    const-wide v0, 0x3ffb39abf3387161L    # 1.70158

    goto :goto_0

    :cond_0
    move-wide/from16 v0, p9

    :goto_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, p7, v2

    div-double v4, p1, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v4, v6

    const-wide v9, 0x3ff8666666666666L    # 1.525

    if-gez v8, :cond_1

    div-double v2, p5, v2

    mul-double v11, v4, v4

    mul-double/2addr v0, v9

    add-double/2addr v6, v0

    mul-double/2addr v6, v4

    sub-double/2addr v6, v0

    mul-double/2addr v11, v6

    mul-double/2addr v2, v11

    add-double v2, v2, p3

    return-wide v2

    :cond_1
    div-double v11, p5, v2

    sub-double/2addr v4, v2

    mul-double v13, v4, v4

    mul-double/2addr v0, v9

    add-double/2addr v6, v0

    mul-double/2addr v6, v4

    add-double/2addr v6, v0

    mul-double/2addr v13, v6

    add-double/2addr v13, v2

    mul-double/2addr v11, v13

    add-double v11, v11, p3

    return-wide v11
.end method

.method public easeOut(DDDD)D
    .locals 11

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 7
    invoke-virtual/range {v0 .. v10}, Lit/sephiroth/android/library/easing/Back;->easeOut(DDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public easeOut(DDDDD)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpl-double v0, p9, v0

    if-nez v0, :cond_0

    const-wide p9, 0x3ffb39abf3387161L    # 1.70158

    :cond_0
    div-double/2addr p1, p7

    const-wide/high16 p7, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, p7

    mul-double v0, p1, p1

    add-double v2, p9, p7

    mul-double/2addr v2, p1

    add-double/2addr v2, p9

    mul-double/2addr v0, v2

    add-double/2addr v0, p7

    mul-double/2addr p5, v0

    add-double/2addr p5, p3

    return-wide p5
.end method

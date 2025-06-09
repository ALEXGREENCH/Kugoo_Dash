.class public final Lit/sephiroth/android/library/easing/EasingManager;
.super Ljava/lang/Object;
.source "EasingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lit/sephiroth/android/library/easing/EasingManager$Ticker;,
        Lit/sephiroth/android/library/easing/EasingManager$TickerStart;,
        Lit/sephiroth/android/library/easing/EasingManager$EaseType;,
        Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;
    }
.end annotation


# static fields
.field static final FPS:I = 0x3c

.field static final FRAME_TIME:I = 0x10

.field static final mHandler:Landroid/os/Handler;


# instance fields
.field mBase:J

.field mDuration:I

.field mEasing:Lit/sephiroth/android/library/easing/Easing;

.field mEasingCallback:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

.field mEndValue:D

.field mInverted:Z

.field mMethod:Ljava/lang/reflect/Method;

.field mRunning:Z

.field mStartValue:D

.field mTicker:Lit/sephiroth/android/library/easing/EasingManager$Ticker;

.field mToken:Ljava/lang/String;

.field mValue:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lit/sephiroth/android/library/easing/EasingManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;)V
    .locals 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->mEasingCallback:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->mToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createInstance(Ljava/lang/Class;)Lit/sephiroth/android/library/easing/Easing;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lit/sephiroth/android/library/easing/Easing;",
            ">;)",
            "Lit/sephiroth/android/library/easing/Easing;"
        }
    .end annotation

    .line 128
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/easing/Easing;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method getEasingMethod(Lit/sephiroth/android/library/easing/Easing;Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/reflect/Method;
    .locals 4

    .line 139
    invoke-virtual {p0, p2}, Lit/sephiroth/android/library/easing/EasingManager;->getMethodName(Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 143
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    return-object v0

    :catch_1
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method getMethodName(Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/String;
    .locals 1

    .line 157
    sget-object v0, Lit/sephiroth/android/library/easing/EasingManager$1;->$SwitchMap$it$sephiroth$android$library$easing$EasingManager$EaseType:[I

    invoke-virtual {p1}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string p1, "easeOut"

    return-object p1

    :cond_1
    const-string p1, "easeNone"

    return-object p1

    :cond_2
    const-string p1, "easeInOut"

    return-object p1

    :cond_3
    const-string p1, "easeIn"

    return-object p1
.end method

.method public start(Ljava/lang/Class;Lit/sephiroth/android/library/easing/EasingManager$EaseType;DDI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lit/sephiroth/android/library/easing/Easing;",
            ">;",
            "Lit/sephiroth/android/library/easing/EasingManager$EaseType;",
            "DDI)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move/from16 v7, p7

    .line 66
    invoke-virtual/range {v0 .. v9}, Lit/sephiroth/android/library/easing/EasingManager;->start(Ljava/lang/Class;Lit/sephiroth/android/library/easing/EasingManager$EaseType;DDIJ)V

    return-void
.end method

.method public start(Ljava/lang/Class;Lit/sephiroth/android/library/easing/EasingManager$EaseType;DDIJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lit/sephiroth/android/library/easing/Easing;",
            ">;",
            "Lit/sephiroth/android/library/easing/EasingManager$EaseType;",
            "DDIJ)V"
        }
    .end annotation

    .line 79
    iget-boolean v0, p0, Lit/sephiroth/android/library/easing/EasingManager;->mRunning:Z

    if-nez v0, :cond_5

    .line 80
    invoke-virtual {p0, p1}, Lit/sephiroth/android/library/easing/EasingManager;->createInstance(Ljava/lang/Class;)Lit/sephiroth/android/library/easing/Easing;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    if-nez p1, :cond_0

    return-void

    .line 86
    :cond_0
    invoke-virtual {p0, p1, p2}, Lit/sephiroth/android/library/easing/EasingManager;->getEasingMethod(Lit/sephiroth/android/library/easing/Easing;Lit/sephiroth/android/library/easing/EasingManager$EaseType;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->mMethod:Ljava/lang/reflect/Method;

    if-nez p1, :cond_1

    return-void

    :cond_1
    cmpl-double p1, p3, p5

    const/4 p2, 0x1

    if-lez p1, :cond_2

    move p1, p2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 91
    :goto_0
    iput-boolean p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->mInverted:Z

    if-eqz p1, :cond_3

    .line 94
    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->mStartValue:D

    .line 95
    iput-wide p3, p0, Lit/sephiroth/android/library/easing/EasingManager;->mEndValue:D

    goto :goto_1

    .line 97
    :cond_3
    iput-wide p3, p0, Lit/sephiroth/android/library/easing/EasingManager;->mStartValue:D

    .line 98
    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->mEndValue:D

    .line 100
    :goto_1
    iget-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->mStartValue:D

    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->mValue:D

    .line 102
    iput p7, p0, Lit/sephiroth/android/library/easing/EasingManager;->mDuration:I

    .line 103
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p5

    add-long/2addr p5, p8

    iput-wide p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->mBase:J

    .line 104
    iput-boolean p2, p0, Lit/sephiroth/android/library/easing/EasingManager;->mRunning:Z

    .line 105
    new-instance p1, Lit/sephiroth/android/library/easing/EasingManager$Ticker;

    invoke-direct {p1, p0}, Lit/sephiroth/android/library/easing/EasingManager$Ticker;-><init>(Lit/sephiroth/android/library/easing/EasingManager;)V

    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager;->mTicker:Lit/sephiroth/android/library/easing/EasingManager$Ticker;

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/16 p5, 0x10

    add-long/2addr p1, p5

    add-long/2addr p1, p8

    const-wide/16 v0, 0x0

    cmp-long p7, p8, v0

    if-nez p7, :cond_4

    .line 109
    iget-object p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->mEasingCallback:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    invoke-interface {p5, p3, p4}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingStarted(D)V

    goto :goto_2

    .line 111
    :cond_4
    sget-object p7, Lit/sephiroth/android/library/easing/EasingManager;->mHandler:Landroid/os/Handler;

    new-instance p8, Lit/sephiroth/android/library/easing/EasingManager$TickerStart;

    invoke-direct {p8, p0, p3, p4}, Lit/sephiroth/android/library/easing/EasingManager$TickerStart;-><init>(Lit/sephiroth/android/library/easing/EasingManager;D)V

    iget-object p3, p0, Lit/sephiroth/android/library/easing/EasingManager;->mToken:Ljava/lang/String;

    sub-long p4, p1, p5

    invoke-virtual {p7, p8, p3, p4, p5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 114
    :goto_2
    sget-object p3, Lit/sephiroth/android/library/easing/EasingManager;->mHandler:Landroid/os/Handler;

    iget-object p4, p0, Lit/sephiroth/android/library/easing/EasingManager;->mTicker:Lit/sephiroth/android/library/easing/EasingManager$Ticker;

    iget-object p5, p0, Lit/sephiroth/android/library/easing/EasingManager;->mToken:Ljava/lang/String;

    invoke-virtual {p3, p4, p5, p1, p2}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_5
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lit/sephiroth/android/library/easing/EasingManager;->mRunning:Z

    .line 123
    sget-object v0, Lit/sephiroth/android/library/easing/EasingManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lit/sephiroth/android/library/easing/EasingManager;->mTicker:Lit/sephiroth/android/library/easing/EasingManager$Ticker;

    iget-object v2, p0, Lit/sephiroth/android/library/easing/EasingManager;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.class Lit/sephiroth/android/library/easing/EasingManager$Ticker;
.super Ljava/lang/Object;
.source "EasingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/easing/EasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Ticker"
.end annotation


# instance fields
.field final synthetic this$0:Lit/sephiroth/android/library/easing/EasingManager;


# direct methods
.method constructor <init>(Lit/sephiroth/android/library/easing/EasingManager;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 188
    iget-object v0, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v0, v0, Lit/sephiroth/android/library/easing/EasingManager;->mBase:J

    .line 189
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 192
    iget-object v4, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v4, v4, Lit/sephiroth/android/library/easing/EasingManager;->mValue:D

    .line 195
    :try_start_0
    iget-object v6, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v6, v6, Lit/sephiroth/android/library/easing/EasingManager;->mMethod:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v7, v7, Lit/sephiroth/android/library/easing/EasingManager;->mEasing:Lit/sephiroth/android/library/easing/Easing;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-object v9, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v11, v9, Lit/sephiroth/android/library/easing/EasingManager;->mStartValue:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v8, v11

    iget-object v9, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v12, v9, Lit/sephiroth/android/library/easing/EasingManager;->mEndValue:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v8, v12

    iget-object v9, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget v9, v9, Lit/sephiroth/android/library/easing/EasingManager;->mDuration:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v8, v12

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    iget-object v8, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iput-wide v6, v8, Lit/sephiroth/android/library/easing/EasingManager;->mValue:D

    const-wide/16 v8, 0x10

    .line 209
    div-long v8, v2, v8

    long-to-int v8, v8

    add-int/2addr v8, v11

    mul-int/lit8 v8, v8, 0x10

    int-to-long v8, v8

    add-long/2addr v0, v8

    .line 212
    iget-object v8, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget v8, v8, Lit/sephiroth/android/library/easing/EasingManager;->mDuration:I

    int-to-long v8, v8

    cmp-long v2, v2, v8

    if-gez v2, :cond_1

    .line 213
    iget-object v2, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v2, v2, Lit/sephiroth/android/library/easing/EasingManager;->mEasingCallback:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    iget-object v3, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-boolean v3, v3, Lit/sephiroth/android/library/easing/EasingManager;->mInverted:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v8, v3, Lit/sephiroth/android/library/easing/EasingManager;->mEndValue:D

    sub-double v6, v8, v6

    :cond_0
    invoke-interface {v2, v6, v7, v4, v5}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingValueChanged(DD)V

    .line 214
    sget-object v2, Lit/sephiroth/android/library/easing/EasingManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v3, v3, Lit/sephiroth/android/library/easing/EasingManager;->mToken:Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_1

    .line 216
    :cond_1
    iget-object v0, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v0, v0, Lit/sephiroth/android/library/easing/EasingManager;->mEasingCallback:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    iget-object v1, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-boolean v1, v1, Lit/sephiroth/android/library/easing/EasingManager;->mInverted:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v1, v1, Lit/sephiroth/android/library/easing/EasingManager;->mEndValue:D

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-wide v1, v1, Lit/sephiroth/android/library/easing/EasingManager;->mStartValue:D

    :goto_0
    invoke-interface {v0, v1, v2}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingFinished(D)V

    .line 217
    iget-object v0, p0, Lit/sephiroth/android/library/easing/EasingManager$Ticker;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iput-boolean v10, v0, Lit/sephiroth/android/library/easing/EasingManager;->mRunning:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return-void

    :catch_2
    move-exception v0

    .line 197
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-void
.end method

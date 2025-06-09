.class Lit/sephiroth/android/library/easing/EasingManager$TickerStart;
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
    name = "TickerStart"
.end annotation


# instance fields
.field mValue:D

.field final synthetic this$0:Lit/sephiroth/android/library/easing/EasingManager;


# direct methods
.method public constructor <init>(Lit/sephiroth/android/library/easing/EasingManager;D)V
    .locals 0

    .line 174
    iput-object p1, p0, Lit/sephiroth/android/library/easing/EasingManager$TickerStart;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-wide p2, p0, Lit/sephiroth/android/library/easing/EasingManager$TickerStart;->mValue:D

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 180
    iget-object v0, p0, Lit/sephiroth/android/library/easing/EasingManager$TickerStart;->this$0:Lit/sephiroth/android/library/easing/EasingManager;

    iget-object v0, v0, Lit/sephiroth/android/library/easing/EasingManager;->mEasingCallback:Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;

    iget-wide v1, p0, Lit/sephiroth/android/library/easing/EasingManager$TickerStart;->mValue:D

    invoke-interface {v0, v1, v2}, Lit/sephiroth/android/library/easing/EasingManager$EasingCallback;->onEasingStarted(D)V

    return-void
.end method

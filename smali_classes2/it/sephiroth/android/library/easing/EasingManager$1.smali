.class synthetic Lit/sephiroth/android/library/easing/EasingManager$1;
.super Ljava/lang/Object;
.source "EasingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/easing/EasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$it$sephiroth$android$library$easing$EasingManager$EaseType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 157
    invoke-static {}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->values()[Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lit/sephiroth/android/library/easing/EasingManager$1;->$SwitchMap$it$sephiroth$android$library$easing$EasingManager$EaseType:[I

    :try_start_0
    sget-object v1, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseIn:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    invoke-virtual {v1}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lit/sephiroth/android/library/easing/EasingManager$1;->$SwitchMap$it$sephiroth$android$library$easing$EasingManager$EaseType:[I

    sget-object v1, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseInOut:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    invoke-virtual {v1}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lit/sephiroth/android/library/easing/EasingManager$1;->$SwitchMap$it$sephiroth$android$library$easing$EasingManager$EaseType:[I

    sget-object v1, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseNone:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    invoke-virtual {v1}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lit/sephiroth/android/library/easing/EasingManager$1;->$SwitchMap$it$sephiroth$android$library$easing$EasingManager$EaseType:[I

    sget-object v1, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseOut:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    invoke-virtual {v1}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method

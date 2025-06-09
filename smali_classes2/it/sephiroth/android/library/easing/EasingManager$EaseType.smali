.class public final enum Lit/sephiroth/android/library/easing/EasingManager$EaseType;
.super Ljava/lang/Enum;
.source "EasingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lit/sephiroth/android/library/easing/EasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lit/sephiroth/android/library/easing/EasingManager$EaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lit/sephiroth/android/library/easing/EasingManager$EaseType;

.field public static final enum EaseIn:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

.field public static final enum EaseInOut:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

.field public static final enum EaseNone:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

.field public static final enum EaseOut:Lit/sephiroth/android/library/easing/EasingManager$EaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 40
    new-instance v0, Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    const-string v1, "EaseIn"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseIn:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    new-instance v1, Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    const-string v3, "EaseOut"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseOut:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    new-instance v3, Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    const-string v5, "EaseInOut"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseInOut:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    new-instance v5, Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    const-string v7, "EaseNone"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lit/sephiroth/android/library/easing/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->EaseNone:Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    const/4 v7, 0x4

    new-array v7, v7, [Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 39
    sput-object v7, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->$VALUES:[Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lit/sephiroth/android/library/easing/EasingManager$EaseType;
    .locals 1

    .line 39
    const-class v0, Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    return-object p0
.end method

.method public static values()[Lit/sephiroth/android/library/easing/EasingManager$EaseType;
    .locals 1

    .line 39
    sget-object v0, Lit/sephiroth/android/library/easing/EasingManager$EaseType;->$VALUES:[Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    invoke-virtual {v0}, [Lit/sephiroth/android/library/easing/EasingManager$EaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lit/sephiroth/android/library/easing/EasingManager$EaseType;

    return-object v0
.end method

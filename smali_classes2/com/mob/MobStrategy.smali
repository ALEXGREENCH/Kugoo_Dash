.class public Lcom/mob/MobStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStrategy(I)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mob/MobStrategy$1;

    invoke-direct {v1, p0}, Lcom/mob/MobStrategy$1;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

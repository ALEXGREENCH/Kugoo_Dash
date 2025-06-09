.class public Lcom/mob/guard/MobGuard;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGuardId()Ljava/lang/String;
    .locals 2

    .line 32
    :try_start_0
    invoke-static {}, Lcom/mob/mcl/MobMCL;->getSuid()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 34
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mgs/impl/e;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getGuardId(Lcom/mob/guard/OnIdChangeListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 48
    new-instance v0, Lcom/mob/guard/MobGuard$1;

    invoke-direct {v0, p0}, Lcom/mob/guard/MobGuard$1;-><init>(Lcom/mob/guard/OnIdChangeListener;)V

    invoke-static {v0}, Lcom/mob/mcl/MobMCL;->getSuid(Lcom/mob/mgs/OnIdChangeListener;)V

    :cond_0
    return-void
.end method

.method public static setOnAppActiveListener(Lcom/mob/guard/OnAppActiveListener;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 61
    new-instance v0, Lcom/mob/guard/MobGuard$2;

    invoke-direct {v0, p0}, Lcom/mob/guard/MobGuard$2;-><init>(Lcom/mob/guard/OnAppActiveListener;)V

    invoke-static {v0}, Lcom/mob/mgs/MobMGS;->setOnAppActiveListener(Lcom/mob/mgs/OnAppActiveListener;)V

    :cond_0
    return-void
.end method

.class public final Lcom/mob/commons/authorize/DeviceAuthorizer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized authorize(Lcom/mob/commons/MobProduct;)Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/mob/commons/authorize/DeviceAuthorizer;

    monitor-enter v0

    .line 36
    :try_start_0
    invoke-static {p0}, Lcom/mob/commons/e;->a(Lcom/mob/commons/MobProduct;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static authorizeForOnce()Ljava/lang/String;
    .locals 1

    .line 28
    invoke-static {}, Lcom/mob/commons/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 24
    invoke-static {p0}, Lcom/mob/commons/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isClear()Z
    .locals 1

    .line 32
    invoke-static {}, Lcom/mob/commons/j;->a()Lcom/mob/commons/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/j;->b()Z

    move-result v0

    return v0
.end method

.method public static isFor()Z
    .locals 1

    .line 19
    invoke-static {}, Lcom/mob/commons/e;->a()Z

    move-result v0

    return v0
.end method

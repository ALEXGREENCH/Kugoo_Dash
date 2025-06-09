.class public Lcom/mob/commons/MobProductCollector;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserIdentity()Ljava/lang/String;
    .locals 1

    .line 10
    invoke-static {}, Lcom/mob/commons/aa;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

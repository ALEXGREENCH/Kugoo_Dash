.class public Lcom/mob/mgs/impl/UpdateV5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/PublicMemberKeeper;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDS()Z
    .locals 1

    .line 17
    invoke-static {}, Lcom/mob/mgs/MobMGS;->getDS()Z

    move-result v0

    return v0
.end method

.method public static setDS(Z)V
    .locals 0

    .line 13
    invoke-static {p0}, Lcom/mob/mgs/MobMGS;->setDS(Z)V

    return-void
.end method

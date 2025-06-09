.class public Lcom/mob/mgs/MobMGS;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# static fields
.field public static final MGS_TAG:Ljava/lang/String; = "MOBGUARD"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDS()Z
    .locals 1

    .line 24
    invoke-static {}, Lcom/mob/mgs/impl/b;->b()Z

    move-result v0

    return v0
.end method

.method public static setDS(Z)V
    .locals 0

    .line 20
    invoke-static {p0}, Lcom/mob/mgs/impl/b;->a(Z)V

    return-void
.end method

.method public static setOnAppActiveListener(Lcom/mob/mgs/OnAppActiveListener;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 12
    invoke-static {p0}, Lcom/mob/mgs/impl/g;->a(Lcom/mob/mgs/OnAppActiveListener;)V

    :cond_0
    return-void
.end method

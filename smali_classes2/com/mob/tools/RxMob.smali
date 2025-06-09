.class public Lcom/mob/tools/RxMob;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/tools/RxMob$SubscriberWarpper;,
        Lcom/mob/tools/RxMob$Subscriber;,
        Lcom/mob/tools/RxMob$QuickSubscribe;,
        Lcom/mob/tools/RxMob$OnSubscribe;,
        Lcom/mob/tools/RxMob$Thread;,
        Lcom/mob/tools/RxMob$Subscribable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/mob/tools/RxMob$OnSubscribe<",
            "TT;>;)",
            "Lcom/mob/tools/RxMob$Subscribable<",
            "TT;>;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/mob/tools/RxMob$Subscribable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mob/tools/RxMob$Subscribable;-><init>(Lcom/mob/tools/RxMob$1;)V

    .line 83
    invoke-static {v0, p0}, Lcom/mob/tools/RxMob$Subscribable;->access$102(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$OnSubscribe;

    return-object v0
.end method

.method public static from(Ljava/util/Iterator;)Lcom/mob/tools/RxMob$Subscribable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Lcom/mob/tools/RxMob$Subscribable<",
            "TT;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Lcom/mob/tools/RxMob$2;

    invoke-direct {v0, p0}, Lcom/mob/tools/RxMob$2;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object p0

    return-object p0
.end method

.method public static varargs just([Ljava/lang/Object;)Lcom/mob/tools/RxMob$Subscribable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/mob/tools/RxMob$Subscribable<",
            "TT;>;"
        }
    .end annotation

    .line 88
    new-instance v0, Lcom/mob/tools/RxMob$1;

    invoke-direct {v0, p0}, Lcom/mob/tools/RxMob$1;-><init>([Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/mob/tools/RxMob;->create(Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$Subscribable;

    move-result-object p0

    return-object p0
.end method

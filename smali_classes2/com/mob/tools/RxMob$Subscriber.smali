.class public Lcom/mob/tools/RxMob$Subscriber;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Subscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/mob/tools/proguard/EverythingKeeper;"
    }
.end annotation


# instance fields
.field private warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$SubscriberWarpper<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/mob/tools/RxMob$Subscriber;Lcom/mob/tools/RxMob$SubscriberWarpper;)V
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/mob/tools/RxMob$Subscriber;->setWarpper(Lcom/mob/tools/RxMob$SubscriberWarpper;)V

    return-void
.end method

.method private setWarpper(Lcom/mob/tools/RxMob$SubscriberWarpper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$SubscriberWarpper<",
            "TT;>;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscriber;->warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public final unsubscribe()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscriber;->warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/mob/tools/RxMob$SubscriberWarpper;->removeSubscriber()V

    const/4 v0, 0x0

    .line 204
    iput-object v0, p0, Lcom/mob/tools/RxMob$Subscriber;->warpper:Lcom/mob/tools/RxMob$SubscriberWarpper;

    :cond_0
    return-void
.end method

.class public final Lcom/mob/tools/RxMob$Subscribable;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/proguard/EverythingKeeper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/RxMob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscribable"
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
.field private observeThread:Lcom/mob/tools/RxMob$Thread;

.field private onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mob/tools/RxMob$OnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field

.field private subscribeThread:Lcom/mob/tools/RxMob$Thread;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/RxMob$1;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/mob/tools/RxMob$Subscribable;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$OnSubscribe;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$OnSubscribe;)Lcom/mob/tools/RxMob$OnSubscribe;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$Thread;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/mob/tools/RxMob$Subscribable;->observeThread:Lcom/mob/tools/RxMob$Thread;

    return-object p0
.end method


# virtual methods
.method public observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$Subscribable<",
            "TT;>;"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->observeThread:Lcom/mob/tools/RxMob$Thread;

    return-object p0
.end method

.method public subscribe(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    sget-object v1, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v0, v1, :cond_0

    .line 129
    new-instance v0, Lcom/mob/tools/RxMob$Subscribable$1;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/RxMob$Subscribable$1;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    const/4 p1, 0x0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    sget-object v1, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    if-ne v0, v1, :cond_1

    .line 136
    new-instance v0, Lcom/mob/tools/RxMob$Subscribable$2;

    invoke-direct {v0, p0, p1}, Lcom/mob/tools/RxMob$Subscribable$2;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    .line 140
    invoke-virtual {v0}, Lcom/mob/tools/RxMob$Subscribable$2;->start()V

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable;->onSubscribe:Lcom/mob/tools/RxMob$OnSubscribe;

    new-instance v1, Lcom/mob/tools/RxMob$SubscriberWarpper;

    invoke-direct {v1, p0, p1}, Lcom/mob/tools/RxMob$SubscriberWarpper;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-interface {v0, v1}, Lcom/mob/tools/RxMob$OnSubscribe;->call(Lcom/mob/tools/RxMob$Subscriber;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Thread;",
            ")",
            "Lcom/mob/tools/RxMob$Subscribable<",
            "TT;>;"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable;->subscribeThread:Lcom/mob/tools/RxMob$Thread;

    return-object p0
.end method

.method public subscribeOnNewThreadAndObserveOnUIThread(Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/RxMob$Subscriber<",
            "TT;>;)V"
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->NEW_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->subscribeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 149
    sget-object v0, Lcom/mob/tools/RxMob$Thread;->UI_THREAD:Lcom/mob/tools/RxMob$Thread;

    invoke-virtual {p0, v0}, Lcom/mob/tools/RxMob$Subscribable;->observeOn(Lcom/mob/tools/RxMob$Thread;)Lcom/mob/tools/RxMob$Subscribable;

    .line 150
    invoke-virtual {p0, p1}, Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

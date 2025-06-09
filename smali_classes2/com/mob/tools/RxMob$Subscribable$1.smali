.class Lcom/mob/tools/RxMob$Subscribable$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/RxMob$Subscribable;->subscribe(Lcom/mob/tools/RxMob$Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/RxMob$Subscriber;

.field final synthetic b:Lcom/mob/tools/RxMob$Subscribable;


# direct methods
.method constructor <init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable$1;->b:Lcom/mob/tools/RxMob$Subscribable;

    iput-object p2, p0, Lcom/mob/tools/RxMob$Subscribable$1;->a:Lcom/mob/tools/RxMob$Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 131
    iget-object p1, p0, Lcom/mob/tools/RxMob$Subscribable$1;->b:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {p1}, Lcom/mob/tools/RxMob$Subscribable;->access$100(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$OnSubscribe;

    move-result-object p1

    new-instance v0, Lcom/mob/tools/RxMob$SubscriberWarpper;

    iget-object v1, p0, Lcom/mob/tools/RxMob$Subscribable$1;->b:Lcom/mob/tools/RxMob$Subscribable;

    iget-object v2, p0, Lcom/mob/tools/RxMob$Subscribable$1;->a:Lcom/mob/tools/RxMob$Subscriber;

    invoke-direct {v0, v1, v2}, Lcom/mob/tools/RxMob$SubscriberWarpper;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-interface {p1, v0}, Lcom/mob/tools/RxMob$OnSubscribe;->call(Lcom/mob/tools/RxMob$Subscriber;)V

    const/4 p1, 0x0

    return p1
.end method

.class Lcom/mob/tools/RxMob$Subscribable$2;
.super Ljava/lang/Thread;


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

    .line 136
    iput-object p1, p0, Lcom/mob/tools/RxMob$Subscribable$2;->b:Lcom/mob/tools/RxMob$Subscribable;

    iput-object p2, p0, Lcom/mob/tools/RxMob$Subscribable$2;->a:Lcom/mob/tools/RxMob$Subscriber;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/mob/tools/RxMob$Subscribable$2;->b:Lcom/mob/tools/RxMob$Subscribable;

    invoke-static {v0}, Lcom/mob/tools/RxMob$Subscribable;->access$100(Lcom/mob/tools/RxMob$Subscribable;)Lcom/mob/tools/RxMob$OnSubscribe;

    move-result-object v0

    new-instance v1, Lcom/mob/tools/RxMob$SubscriberWarpper;

    iget-object v2, p0, Lcom/mob/tools/RxMob$Subscribable$2;->b:Lcom/mob/tools/RxMob$Subscribable;

    iget-object v3, p0, Lcom/mob/tools/RxMob$Subscribable$2;->a:Lcom/mob/tools/RxMob$Subscriber;

    invoke-direct {v1, v2, v3}, Lcom/mob/tools/RxMob$SubscriberWarpper;-><init>(Lcom/mob/tools/RxMob$Subscribable;Lcom/mob/tools/RxMob$Subscriber;)V

    invoke-interface {v0, v1}, Lcom/mob/tools/RxMob$OnSubscribe;->call(Lcom/mob/tools/RxMob$Subscriber;)V

    return-void
.end method

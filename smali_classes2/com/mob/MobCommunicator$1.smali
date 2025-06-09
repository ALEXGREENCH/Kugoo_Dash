.class Lcom/mob/MobCommunicator$1;
.super Lcom/mob/tools/network/NetCommunicator$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobCommunicator;->request(ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;ZLcom/mob/MobCommunicator$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/network/NetCommunicator$Callback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/MobCommunicator$Callback;

.field final synthetic b:Lcom/mob/MobCommunicator;


# direct methods
.method constructor <init>(Lcom/mob/MobCommunicator;Lcom/mob/MobCommunicator$Callback;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/mob/MobCommunicator$1;->b:Lcom/mob/MobCommunicator;

    iput-object p2, p0, Lcom/mob/MobCommunicator$1;->a:Lcom/mob/MobCommunicator$Callback;

    invoke-direct {p0}, Lcom/mob/tools/network/NetCommunicator$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultError(Ljava/lang/Throwable;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/mob/MobCommunicator$1;->a:Lcom/mob/MobCommunicator$Callback;

    invoke-virtual {v0, p1}, Lcom/mob/MobCommunicator$Callback;->onResultError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResultOk(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/mob/MobCommunicator$1;->a:Lcom/mob/MobCommunicator$Callback;

    invoke-virtual {v0, p1}, Lcom/mob/MobCommunicator$Callback;->onResultOk(Ljava/lang/Object;)V

    return-void
.end method

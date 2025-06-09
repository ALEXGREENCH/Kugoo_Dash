.class Lcom/mob/MobSDK$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/MobSDK;->canIContinueBusiness(Lcom/mob/commons/MobProduct;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/MobProduct;

.field final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/mob/commons/MobProduct;Ljava/lang/Object;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/mob/MobSDK$2;->a:Lcom/mob/commons/MobProduct;

    iput-object p2, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 275
    iget-object v0, p0, Lcom/mob/MobSDK$2;->a:Lcom/mob/commons/MobProduct;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Throwable;

    const-string v5, "Product can not be null"

    invoke-direct {v4, v5}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v1

    const-string v1, "onFailure"

    invoke-static {v0, v1, v2, v3}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/mob/MobSDK$2;->b:Ljava/lang/Object;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v1, "onComplete"

    invoke-static {v0, v1, v2, v4}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethodNoThrow(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

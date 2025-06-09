.class Lcom/mob/tools/utils/SharePrefrenceHelper$9;
.super Lcom/mob/tools/utils/MobPersistence$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->getThrowable(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/MobPersistence$e<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 690
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$9;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iput-object p3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$9;->a:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p1, :cond_1

    .line 694
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$9;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/SharePrefrenceHelper;->a(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 703
    iget-object v1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$9;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-static {v1, v0}, Lcom/mob/tools/utils/SharePrefrenceHelper;->a(Lcom/mob/tools/utils/SharePrefrenceHelper;[B)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 705
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected exc: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    return-object p1

    .line 711
    :cond_1
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$9;->a:Ljava/lang/Object;

    return-object p1
.end method

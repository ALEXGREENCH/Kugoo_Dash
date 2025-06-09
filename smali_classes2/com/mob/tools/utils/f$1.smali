.class Lcom/mob/tools/utils/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/f;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/f;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/mob/tools/utils/f$1;->a:Lcom/mob/tools/utils/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    :try_start_0
    iget-object v2, p0, Lcom/mob/tools/utils/f$1;->a:Lcom/mob/tools/utils/f;

    invoke-static {v2}, Lcom/mob/tools/utils/f;->a(Lcom/mob/tools/utils/f;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "020f-fefekfUlJhkgnDkfk;fihkhgfkhk_khghAfl"

    invoke-static {v3}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/tools/utils/f$1;->a:Lcom/mob/tools/utils/f;

    invoke-static {v5}, Lcom/mob/tools/utils/f;->b(Lcom/mob/tools/utils/f;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v1

    new-array v5, v0, [Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "026fgIfeflfmfkfefnPi(fmPefkWfkfm.g%fnkfJl4hkgn2kfk;fihk"

    .line 93
    invoke-static {v7}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "$"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "008[hgfkhk9khgh[fl"

    invoke-static {v7}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    .line 92
    invoke-static {v2, v3, v4, v5}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v2

    const-string v3, "[212] rg < 31"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 96
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "[cl]"

    aput-object v4, v0, v1

    const-string v1, "%s"

    invoke-virtual {v3, v2, v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    :goto_0
    return-void
.end method

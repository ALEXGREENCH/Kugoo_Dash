.class Lcom/mob/tools/utils/DH$RequestBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/DH$RequestBuilder;->request(Lcom/mob/tools/utils/DH$DHResponder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Boolean;

.field final synthetic b:Ljava/lang/Boolean;

.field final synthetic c:Lcom/mob/tools/utils/DH$DHResponder;

.field final synthetic d:Z

.field final synthetic e:Lcom/mob/tools/utils/DH$RequestBuilder;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/DH$RequestBuilder;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/mob/tools/utils/DH$DHResponder;Z)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->e:Lcom/mob/tools/utils/DH$RequestBuilder;

    iput-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->a:Ljava/lang/Boolean;

    iput-object p3, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->b:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->c:Lcom/mob/tools/utils/DH$DHResponder;

    iput-boolean p5, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 80
    :try_start_0
    sget-object v0, Lcom/mob/tools/c/a;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 81
    sget-object v0, Lcom/mob/tools/c/a;->b:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->a:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 82
    sget-object v0, Lcom/mob/tools/c/a;->c:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->e:Lcom/mob/tools/utils/DH$RequestBuilder;

    invoke-static {v0}, Lcom/mob/tools/utils/DH$RequestBuilder;->a(Lcom/mob/tools/utils/DH$RequestBuilder;)Lcom/mob/tools/utils/DH$DHResponse;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->c:Lcom/mob/tools/utils/DH$DHResponder;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 85
    iget-boolean v3, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->d:Z

    if-eqz v3, :cond_0

    .line 86
    new-instance v1, Lcom/mob/tools/utils/DH$RequestBuilder$1$1;

    invoke-direct {v1, p0, v0}, Lcom/mob/tools/utils/DH$RequestBuilder$1$1;-><init>(Lcom/mob/tools/utils/DH$RequestBuilder$1;Lcom/mob/tools/utils/DH$DHResponse;)V

    invoke-static {v2, v1}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessage(ILandroid/os/Handler$Callback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 99
    :cond_0
    :try_start_1
    invoke-interface {v1, v0}, Lcom/mob/tools/utils/DH$DHResponder;->onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    const-string v3, "Error from caller"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3, v4}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lcom/mob/tools/c/a;->a:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    sget-object v0, Lcom/mob/tools/c/a;->b:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 107
    sget-object v0, Lcom/mob/tools/c/a;->c:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 109
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 110
    iget-object v0, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->e:Lcom/mob/tools/utils/DH$RequestBuilder;

    iget-object v1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$1;->c:Lcom/mob/tools/utils/DH$DHResponder;

    invoke-static {v0, v1}, Lcom/mob/tools/utils/DH$RequestBuilder;->a(Lcom/mob/tools/utils/DH$RequestBuilder;Lcom/mob/tools/utils/DH$DHResponder;)V

    :goto_1
    return-void
.end method

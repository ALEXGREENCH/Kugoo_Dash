.class Lcom/mob/commons/a/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/c;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/mob/commons/a/c$5;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/mob/commons/a/c$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    const/4 p1, 0x0

    .line 468
    :try_start_0
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/mob/commons/h;->a(I)V

    .line 469
    iget-object v0, p0, Lcom/mob/commons/a/c$5;->a:Ljava/lang/Object;

    const-string v1, "006\'fk<g0fffmgjDh"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mob/commons/a/c$5;->b:Ljava/lang/String;

    aput-object v5, v4, p1

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/mob/tools/utils/ReflectHelper;->invokeInstanceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/mob/commons/h;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 472
    invoke-static {}, Lcom/mob/commons/h;->a()Lcom/mob/commons/h;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/mob/commons/h;->a(ILjava/lang/Throwable;)V

    :goto_0
    return p1
.end method

.class public Lcom/mob/commons/a/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static a:Lcom/mob/commons/a/l;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/mob/commons/a/l;

    invoke-direct {v0}, Lcom/mob/commons/a/l;-><init>()V

    sput-object v0, Lcom/mob/commons/a/l;->a:Lcom/mob/commons/a/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "M-"

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/mob/commons/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "004?gdidilig"

    invoke-static {v1}, Lcom/mob/commons/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    invoke-static {v0, p0}, Lcom/mob/tools/MobHandlerThread;->newHandler(Ljava/lang/String;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    return-void
.end method

.method private a(Lcom/mob/commons/a/c;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mob/commons/a/c;",
            ">(TT;)I"
        }
    .end annotation

    .line 176
    invoke-virtual {p1}, Lcom/mob/commons/a/c;->k()I

    move-result p1

    if-lez p1, :cond_0

    add-int/lit16 p1, p1, 0x2710

    goto :goto_0

    :cond_0
    add-int/lit16 p1, p1, -0x2710

    :goto_0
    return p1
.end method

.method public static a()Lcom/mob/commons/a/l;
    .locals 1

    .line 57
    sget-object v0, Lcom/mob/commons/a/l;->a:Lcom/mob/commons/a/l;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    .line 247
    invoke-static {p0, v0}, Lcom/mob/commons/v;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/os/Message;J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 193
    :cond_0
    iget-object p2, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private a(IJLjava/lang/Runnable;)Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 163
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mob/commons/a/l;->b(IJLjava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method private b(IJLjava/lang/Runnable;)Z
    .locals 1

    .line 168
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 169
    iput p1, v0, Landroid/os/Message;->what:I

    .line 170
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 171
    invoke-direct {p0, v0, p2, p3}, Lcom/mob/commons/a/l;->a(Landroid/os/Message;J)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(JILcom/mob/commons/c$b;)V
    .locals 2

    .line 145
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    .line 146
    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 148
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 p3, 0x3e8

    mul-long/2addr p1, p3

    .line 149
    invoke-direct {p0, v0, p1, p2}, Lcom/mob/commons/a/l;->a(Landroid/os/Message;J)V

    return-void
.end method

.method public a(JLcom/mob/commons/a/c;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mob/commons/a/c;",
            ">(JTT;I)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p3}, Lcom/mob/commons/a/l;->a(Lcom/mob/commons/a/c;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_0

    .line 90
    iget-object p4, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    invoke-virtual {p4, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 92
    iget-object p4, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    invoke-virtual {p4, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p4

    if-eqz p4, :cond_1

    return-void

    .line 96
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p4

    .line 97
    iput v0, p4, Landroid/os/Message;->what:I

    .line 98
    iput-object p3, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 99
    invoke-direct {p0, p4, p1, p2}, Lcom/mob/commons/a/l;->a(Landroid/os/Message;J)V

    return-void
.end method

.method public a(JLjava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const/16 v0, 0x3eb

    .line 110
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mob/commons/a/l;->a(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public b()Landroid/os/Handler;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public b(JLjava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const/16 v0, 0x3ec

    .line 114
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mob/commons/a/l;->a(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public c()Landroid/os/Looper;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(JLjava/lang/Runnable;)Z
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    const/16 v0, 0x3ee

    .line 118
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mob/commons/a/l;->a(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public d(JLjava/lang/Runnable;)Z
    .locals 1

    const/16 v0, 0x3ed

    .line 123
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/mob/commons/a/l;->b(IJLjava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public e(JLjava/lang/Runnable;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/mob/commons/a/l;->b(IJLjava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4

    const/4 v0, 0x0

    .line 199
    :try_start_0
    invoke-static {}, Lcom/mob/commons/b;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 202
    invoke-virtual {v1, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 203
    iget-object p1, p0, Lcom/mob/commons/a/l;->b:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0

    .line 206
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3eb

    if-eq v1, v2, :cond_7

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ec

    if-eq v1, v2, :cond_7

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ee

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 212
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ea

    if-ne v1, v2, :cond_3

    .line 214
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/mob/commons/c$b;

    if-eqz v1, :cond_8

    .line 216
    iget-boolean v3, v1, Lcom/mob/commons/c$b;->a:Z

    if-nez v3, :cond_2

    const/4 v3, 0x1

    .line 217
    iput-boolean v3, v1, Lcom/mob/commons/c$b;->a:Z

    .line 219
    :cond_2
    sget-object v3, Lcom/mob/commons/z;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 220
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 221
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 222
    iput v2, v3, Landroid/os/Message;->what:I

    .line 223
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    iput p1, v3, Landroid/os/Message;->arg1:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    .line 225
    invoke-direct {p0, v3, v1, v2}, Lcom/mob/commons/a/l;->a(Landroid/os/Message;J)V

    goto :goto_2

    .line 227
    :cond_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ed

    if-eq v1, v2, :cond_6

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x3ef

    if-ne v1, v2, :cond_4

    goto :goto_0

    .line 233
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_5

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, -0x2710

    if-ge v1, v2, :cond_8

    .line 235
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/mob/commons/a/c;

    if-eqz p1, :cond_8

    .line 237
    invoke-virtual {p1}, Lcom/mob/commons/a/c;->h()Z

    goto :goto_2

    .line 229
    :cond_6
    :goto_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 231
    sget-object v1, Lcom/mob/commons/z;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 208
    :cond_7
    :goto_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    if-eqz p1, :cond_8

    .line 210
    sget-object v1, Lcom/mob/commons/z;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 241
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    return v0
.end method

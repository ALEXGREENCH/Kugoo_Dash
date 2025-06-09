.class public Lcom/mob/apc/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mob/apc/b$a;,
        Lcom/mob/apc/b$c;,
        Lcom/mob/apc/b$b;
    }
.end annotation


# static fields
.field public static volatile a:Z = false

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "APC : 2021.11.07"

    invoke-virtual {v0, v2, v1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 46
    sget-object v0, Lcom/mob/apc/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 100
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v1

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/mob/apc/a/c;->a(ILjava/lang/String;Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;

    move-result-object p0

    return-object p0

    .line 97
    :cond_0
    invoke-static {}, Lcom/mob/apc/a/f;->a()Lcom/mob/apc/a/f;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "[sendMessage] not allow main thread to invoke"

    invoke-virtual {p0, p2, p1}, Lcom/mob/apc/a/f;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance p0, Lcom/mob/apc/APCException;

    const-string p1, "not allow main thread to invoke"

    invoke-direct {p0, p1}, Lcom/mob/apc/APCException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/mob/apc/b;->b:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/mob/apc/b$a;)V
    .locals 1

    .line 127
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/apc/a/c;->a(Lcom/mob/apc/b$a;)V

    return-void
.end method

.method public static a(Lcom/mob/apc/b$c;)V
    .locals 1

    .line 118
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/apc/a/c;->a(Lcom/mob/apc/b$c;)V

    return-void
.end method

.method public static a(Lcom/mob/tools/utils/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mob/tools/utils/e<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 109
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mob/apc/a/c;->a(Lcom/mob/tools/utils/e;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/mob/apc/b$b;)V
    .locals 1

    const/4 v0, 0x1

    .line 56
    sput-boolean v0, Lcom/mob/apc/b;->a:Z

    .line 57
    invoke-static {}, Lcom/mob/apc/a/c;->a()Lcom/mob/apc/a/c;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mob/apc/a/c;->a(Ljava/lang/String;Lcom/mob/apc/b$b;)V

    return-void
.end method

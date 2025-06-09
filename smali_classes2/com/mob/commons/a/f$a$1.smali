.class Lcom/mob/commons/a/f$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/f$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/a/f$a;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/f$a;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/mob/commons/a/f$a$1;->a:Lcom/mob/commons/a/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 148
    invoke-static {}, Lcom/mob/commons/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/mob/commons/a/f$a$1;->a:Lcom/mob/commons/a/f$a;

    invoke-static {v2}, Lcom/mob/commons/a/f$a;->a(Lcom/mob/commons/a/f$a;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v2, 0x78

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "gpdi"

    invoke-static {v3, v2}, Lcom/mob/commons/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 152
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[cl] tme > "

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 154
    iget-object v0, p0, Lcom/mob/commons/a/f$a$1;->a:Lcom/mob/commons/a/f$a;

    invoke-static {v0}, Lcom/mob/commons/a/f$a;->b(Lcom/mob/commons/a/f$a;)V

    .line 155
    iget-object v0, p0, Lcom/mob/commons/a/f$a$1;->a:Lcom/mob/commons/a/f$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mob/commons/a/f$a;->a(Lcom/mob/commons/a/f$a;J)J

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/mob/commons/a/f$a$1;->a:Lcom/mob/commons/a/f$a;

    invoke-static {v0}, Lcom/mob/commons/a/f$a;->c(Lcom/mob/commons/a/f$a;)V

    return-void
.end method

.class Lcom/mob/commons/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/j;->m()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZJ)V
    .locals 2

    if-eqz p1, :cond_0

    .line 44
    new-instance p1, Lcom/mob/commons/a/j;

    invoke-direct {p1}, Lcom/mob/commons/a/j;-><init>()V

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p2}, Lcom/mob/commons/a/j;->b(Z)Lcom/mob/commons/a/c;

    move-result-object p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mob/commons/a/c;->a(Ljava/lang/Object;)Lcom/mob/commons/a/c;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/mob/commons/a/c;->a(Z)Lcom/mob/commons/a/c;

    .line 46
    invoke-static {}, Lcom/mob/commons/a/d;->a()Lcom/mob/commons/a/d;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, v0, v1, p2}, Lcom/mob/commons/a/d;->a(Lcom/mob/commons/a/c;JI)V

    :cond_0
    return-void
.end method

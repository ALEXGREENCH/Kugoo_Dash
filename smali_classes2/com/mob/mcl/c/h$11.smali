.class Lcom/mob/mcl/c/h$11;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->a(JLjava/lang/String;IILjava/lang/String;Lcom/mob/mcl/c/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mcl/c/c;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Lcom/mob/mcl/c/c;JLjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/mob/mcl/c/h$11;->f:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$11;->a:Lcom/mob/mcl/c/c;

    iput-wide p3, p0, Lcom/mob/mcl/c/h$11;->b:J

    iput-object p5, p0, Lcom/mob/mcl/c/h$11;->c:Ljava/lang/String;

    iput p6, p0, Lcom/mob/mcl/c/h$11;->d:I

    iput-object p7, p0, Lcom/mob/mcl/c/h$11;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 844
    iget-object v0, p0, Lcom/mob/mcl/c/h$11;->a:Lcom/mob/mcl/c/c;

    if-eqz v0, :cond_1

    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/mob/mcl/c/h$11;->f:Lcom/mob/mcl/c/h;

    iget v1, v1, Lcom/mob/mcl/c/h;->f:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/mcl/c/c;->a(JLjava/util/concurrent/TimeUnit;)Lcom/mob/mcl/c/e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 849
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 851
    iget v1, v0, Lcom/mob/mcl/c/e;->b:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 853
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v0

    const-string v1, "TP rp acked: "

    invoke-virtual {v0, v1}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 855
    :cond_0
    invoke-static {}, Lcom/mob/mcl/d/b;->a()Lcom/mob/mcl/d/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TP rp : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mob/mcl/d/b;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move v7, v0

    .line 859
    iget-object v1, p0, Lcom/mob/mcl/c/h$11;->f:Lcom/mob/mcl/c/h;

    iget-wide v2, p0, Lcom/mob/mcl/c/h$11;->b:J

    iget-object v4, p0, Lcom/mob/mcl/c/h$11;->c:Ljava/lang/String;

    iget v5, p0, Lcom/mob/mcl/c/h$11;->d:I

    iget-object v6, p0, Lcom/mob/mcl/c/h$11;->e:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/c/h;JLjava/lang/String;ILjava/lang/String;I)V

    return-void
.end method

.class Lcom/mob/mgs/impl/g$1$2;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/g$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/mob/mgs/impl/g$1;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/g$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/mob/mgs/impl/g$1$2;->f:Lcom/mob/mgs/impl/g$1;

    iput-object p2, p0, Lcom/mob/mgs/impl/g$1$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/mob/mgs/impl/g$1$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/mob/mgs/impl/g$1$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mob/mgs/impl/g$1$2;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/mob/mgs/impl/g$1$2;->e:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-wide/16 v0, 0x3e8

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 154
    invoke-static {}, Lcom/mob/mcl/b/a;->a()Ljava/lang/String;

    move-result-object v6

    .line 155
    iget-object v2, p0, Lcom/mob/mgs/impl/g$1$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/mob/mgs/impl/g$1$2;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/mob/mgs/impl/g$1$2;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/mob/mgs/impl/g$1$2;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/mob/mgs/impl/g$1$2;->e:Ljava/lang/String;

    invoke-static {}, Lcom/mob/mgs/impl/g;->b()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/mob/mgs/impl/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    return-void
.end method

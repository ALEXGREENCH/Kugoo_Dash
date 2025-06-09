.class Lcom/mob/commons/a/c$2;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/a/c;->a(JLjava/lang/String;Ljava/lang/Object;Ljava/util/HashMap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:J

.field final synthetic c:Lcom/mob/commons/a/c;


# direct methods
.method constructor <init>(Lcom/mob/commons/a/c;Ljava/util/HashMap;J)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/mob/commons/a/c$2;->c:Lcom/mob/commons/a/c;

    iput-object p2, p0, Lcom/mob/commons/a/c$2;->a:Ljava/util/HashMap;

    iput-wide p3, p0, Lcom/mob/commons/a/c$2;->b:J

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 317
    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Lcom/mob/commons/a/c$2;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/mob/commons/a/c$2;->a:Ljava/util/HashMap;

    const-string v1, "002ei"

    invoke-static {v1}, Lcom/mob/commons/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/mob/commons/a/c$2;->c:Lcom/mob/commons/a/c;

    iget-object v1, p0, Lcom/mob/commons/a/c$2;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Lcom/mob/commons/a/c;->a(Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 322
    invoke-static {}, Lcom/mob/commons/c;->a()Lcom/mob/commons/c;

    move-result-object p1

    iget-wide v0, p0, Lcom/mob/commons/a/c$2;->b:J

    iget-object v2, p0, Lcom/mob/commons/a/c$2;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1, v2}, Lcom/mob/commons/c;->a(JLjava/util/HashMap;)V

    return-void
.end method

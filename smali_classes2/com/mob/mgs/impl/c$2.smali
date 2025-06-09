.class Lcom/mob/mgs/impl/c$2;
.super Lcom/mob/mgs/impl/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Lcom/mob/apc/a;J)Lcom/mob/apc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:J

.field final synthetic c:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;Ljava/lang/String;J)V
    .locals 0

    .line 649
    iput-object p1, p0, Lcom/mob/mgs/impl/c$2;->c:Lcom/mob/mgs/impl/c;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$2;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/mob/mgs/impl/c$2;->b:J

    invoke-direct {p0}, Lcom/mob/mgs/impl/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 652
    iget-object v0, p0, Lcom/mob/mgs/impl/c$2;->a:Ljava/lang/String;

    iget-wide v1, p0, Lcom/mob/mgs/impl/c$2;->b:J

    new-instance v3, Lcom/mob/mgs/impl/c$2$1;

    invoke-direct {v3, p0}, Lcom/mob/mgs/impl/c$2$1;-><init>(Lcom/mob/mgs/impl/c$2;)V

    invoke-static {v0, v1, v2, v3}, Lcom/mob/mcl/MobMCL;->syncSuid(Ljava/lang/String;JLcom/mob/tools/utils/e;)V

    return-void
.end method

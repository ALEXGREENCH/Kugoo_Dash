.class Lcom/mob/commons/q$c$1;
.super Lcom/mob/tools/utils/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/q$c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/q$c;


# direct methods
.method constructor <init>(Lcom/mob/commons/q$c;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/mob/commons/q$c$1;->a:Lcom/mob/commons/q$c;

    invoke-direct {p0}, Lcom/mob/tools/utils/i;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    .line 95
    invoke-static {}, Lcom/mob/tools/MobLog;->getInstance()Lcom/mob/tools/log/NLog;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "[LGSM] UCLR"

    invoke-virtual {v0, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    const/4 v0, 0x1

    .line 96
    invoke-static {v0}, Lcom/mob/commons/q;->a(I)Lcom/mob/tools/a;

    move-result-object v0

    new-instance v1, Lcom/mob/commons/q$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/mob/commons/q$b;-><init>(Lcom/mob/commons/q$1;)V

    invoke-virtual {v0, v1}, Lcom/mob/tools/a;->a(Lcom/mob/tools/a$a;)V

    return-void
.end method

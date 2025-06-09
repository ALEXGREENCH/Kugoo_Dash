.class Lcom/mob/mgs/impl/c$1;
.super Lcom/mob/mcl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/mgs/impl/c;


# direct methods
.method constructor <init>(Lcom/mob/mgs/impl/c;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mob/mgs/impl/c$1;->a:Lcom/mob/mgs/impl/c;

    invoke-direct {p0}, Lcom/mob/mcl/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/mob/mgs/impl/c$1;->a:Lcom/mob/mgs/impl/c;

    invoke-static {v0}, Lcom/mob/mgs/impl/c;->a(Lcom/mob/mgs/impl/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mob/mgs/impl/c$1;->a:Lcom/mob/mgs/impl/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/mob/mgs/impl/c;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

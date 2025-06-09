.class Lcom/mob/mcl/c/h$10;
.super Lcom/mob/tools/utils/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/c/a;Lcom/mob/mcl/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/e<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/mcl/c/h;


# direct methods
.method constructor <init>(Lcom/mob/mcl/c/h;Ljava/lang/String;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/mob/mcl/c/h$10;->b:Lcom/mob/mcl/c/h;

    iput-object p2, p0, Lcom/mob/mcl/c/h$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/mob/tools/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 755
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mob/mcl/c/h$10;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 6

    .line 758
    iget-object v0, p0, Lcom/mob/mcl/c/h$10;->b:Lcom/mob/mcl/c/h;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mob/mcl/c/h$10;->a:Ljava/lang/String;

    const/4 v3, 0x2

    const/16 v5, 0x1388

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/mob/mcl/c/h;->a(Lcom/mob/mcl/c/h;ZLjava/lang/String;ILjava/lang/String;I)Z

    return-void
.end method

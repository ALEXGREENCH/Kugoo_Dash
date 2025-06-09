.class Lcom/mob/tools/b/i$44;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->ah()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Ljava/lang/String;)V
    .locals 0

    .line 1103
    iput-object p1, p0, Lcom/mob/tools/b/i$44;->a:Lcom/mob/tools/b/i;

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1103
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$44;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/lang/String;)J
    .locals 2

    .line 1107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x240c8400

    return-wide v0
.end method

.method protected a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/mob/tools/b/i$44;->a:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->a(Lcom/mob/tools/b/i;)Lcom/mob/tools/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/b;->ad()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1103
    invoke-virtual {p0}, Lcom/mob/tools/b/i$44;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

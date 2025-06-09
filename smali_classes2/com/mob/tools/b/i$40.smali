.class Lcom/mob/tools/b/i$40;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->a(ZILjava/lang/String;IZ)Landroid/content/pm/PackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Landroid/content/pm/PackageInfo;ZILjava/lang/String;IZ)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/mob/tools/b/i$40;->f:Lcom/mob/tools/b/i;

    iput-boolean p3, p0, Lcom/mob/tools/b/i$40;->a:Z

    iput p4, p0, Lcom/mob/tools/b/i$40;->b:I

    iput-object p5, p0, Lcom/mob/tools/b/i$40;->c:Ljava/lang/String;

    iput p6, p0, Lcom/mob/tools/b/i$40;->d:I

    iput-boolean p7, p0, Lcom/mob/tools/b/i$40;->e:Z

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/pm/PackageInfo;)J
    .locals 2

    .line 1019
    iget-boolean p1, p0, Lcom/mob/tools/b/i$40;->a:Z

    if-eqz p1, :cond_0

    .line 1020
    iget p1, p0, Lcom/mob/tools/b/i$40;->b:I

    int-to-long v0, p1

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1015
    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$40;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Lcom/mob/tools/b/i$40;->f:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->b(Lcom/mob/tools/b/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/b/i$40;->c:Ljava/lang/String;

    iget v2, p0, Lcom/mob/tools/b/i$40;->d:I

    iget-boolean v3, p0, Lcom/mob/tools/b/i$40;->e:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1015
    invoke-virtual {p0}, Lcom/mob/tools/b/i$40;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

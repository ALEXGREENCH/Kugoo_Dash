.class Lcom/mob/tools/b/i$49;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->a(ZLjava/lang/String;I)Landroid/content/pm/ApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/b/i$a<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Landroid/content/pm/ApplicationInfo;ZLjava/lang/String;I)V
    .locals 0

    .line 1218
    iput-object p1, p0, Lcom/mob/tools/b/i$49;->d:Lcom/mob/tools/b/i;

    iput-boolean p3, p0, Lcom/mob/tools/b/i$49;->a:Z

    iput-object p4, p0, Lcom/mob/tools/b/i$49;->b:Ljava/lang/String;

    iput p5, p0, Lcom/mob/tools/b/i$49;->c:I

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/pm/ApplicationInfo;)J
    .locals 2

    .line 1221
    iget-boolean p1, p0, Lcom/mob/tools/b/i$49;->a:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1218
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$49;->a(Landroid/content/pm/ApplicationInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()Landroid/content/pm/ApplicationInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1230
    iget-object v0, p0, Lcom/mob/tools/b/i$49;->d:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->b(Lcom/mob/tools/b/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/tools/b/i$49;->b:Ljava/lang/String;

    iget v2, p0, Lcom/mob/tools/b/i$49;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/mob/tools/b/e;->a(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

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

    .line 1218
    invoke-virtual {p0}, Lcom/mob/tools/b/i$49;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

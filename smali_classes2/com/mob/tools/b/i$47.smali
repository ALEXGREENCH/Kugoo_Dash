.class Lcom/mob/tools/b/i$47;
.super Lcom/mob/tools/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/b/i;->ak()Landroid/content/pm/ApplicationInfo;
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

.field final synthetic b:Lcom/mob/tools/b/i;


# direct methods
.method constructor <init>(Lcom/mob/tools/b/i;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/mob/tools/b/i$47;->b:Lcom/mob/tools/b/i;

    iput-boolean p3, p0, Lcom/mob/tools/b/i$47;->a:Z

    invoke-direct {p0, p2}, Lcom/mob/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/pm/ApplicationInfo;)J
    .locals 2

    .line 1163
    iget-boolean p1, p0, Lcom/mob/tools/b/i$47;->a:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/32 v0, 0x5265c00

    return-wide v0
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 1160
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/mob/tools/b/i$47;->a(Landroid/content/pm/ApplicationInfo;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a()Landroid/content/pm/ApplicationInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1171
    iget-object v0, p0, Lcom/mob/tools/b/i$47;->b:Lcom/mob/tools/b/i;

    invoke-static {v0}, Lcom/mob/tools/b/i;->b(Lcom/mob/tools/b/i;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mob/tools/b/e;->a(Landroid/content/Context;)Lcom/mob/tools/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/tools/b/e;->d()Landroid/content/pm/ApplicationInfo;

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

    .line 1160
    invoke-virtual {p0}, Lcom/mob/tools/b/i$47;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

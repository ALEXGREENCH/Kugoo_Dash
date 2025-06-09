.class Lcom/mob/mgs/impl/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/mgs/impl/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/mob/tools/utils/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/mob/tools/utils/e;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mob/tools/utils/e;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/mob/mgs/impl/c$5;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/mob/mgs/impl/c$5;->b:Lcom/mob/tools/utils/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [I

    .line 768
    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/DH$DHResponse;->getMpfof([I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 770
    iget-object v1, p0, Lcom/mob/mgs/impl/c$5;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/mob/tools/c;->a(Ljava/lang/Object;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 771
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 773
    :goto_0
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr p1, v3

    if-nez p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 775
    iget-object p1, p0, Lcom/mob/mgs/impl/c$5;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_4

    .line 776
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 779
    :cond_2
    iget-object p1, p0, Lcom/mob/mgs/impl/c$5;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_4

    .line 780
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    goto :goto_2

    .line 784
    :cond_3
    iget-object p1, p0, Lcom/mob/mgs/impl/c$5;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_4

    .line 785
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 789
    invoke-static {}, Lcom/mob/mgs/impl/e;->a()Lcom/mob/mgs/impl/e;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mob/mgs/impl/e;->b(Ljava/lang/Throwable;)V

    .line 790
    iget-object p1, p0, Lcom/mob/mgs/impl/c$5;->b:Lcom/mob/tools/utils/e;

    if-eqz p1, :cond_4

    .line 791
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mob/tools/utils/e;->a(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    return-void
.end method

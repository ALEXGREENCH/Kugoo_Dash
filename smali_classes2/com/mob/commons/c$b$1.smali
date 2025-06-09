.class Lcom/mob/commons/c$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/commons/c$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/c$b;


# direct methods
.method constructor <init>(Lcom/mob/commons/c$b;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 5

    const/16 v0, 0x32

    :try_start_0
    new-array v1, v0, [[Ljava/lang/String;

    .line 244
    iget-object v2, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    invoke-static {v2, v1}, Lcom/mob/commons/c$b;->a(Lcom/mob/commons/c$b;[[Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lez v2, :cond_3

    .line 246
    iget-object v3, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    invoke-static {v3, v1, v2, p1}, Lcom/mob/commons/c$b;->a(Lcom/mob/commons/c$b;[[Ljava/lang/String;ILcom/mob/tools/utils/DH$DHResponse;)Landroid/util/SparseArray;

    move-result-object v3

    .line 247
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    iget-boolean v4, v4, Lcom/mob/commons/c$b;->a:Z

    if-eqz v4, :cond_0

    .line 248
    invoke-static {}, Lcom/mob/commons/a/l;->a()Lcom/mob/commons/a/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mob/commons/a/l;->d()V

    goto :goto_1

    .line 251
    :cond_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 252
    iget-object v4, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    invoke-static {v4, v3}, Lcom/mob/commons/c$b;->a(Lcom/mob/commons/c$b;Landroid/util/SparseArray;)I

    :cond_1
    if-ge v2, v0, :cond_2

    goto :goto_1

    .line 257
    :cond_2
    iget-object v2, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    invoke-static {v2, v1}, Lcom/mob/commons/c$b;->a(Lcom/mob/commons/c$b;[[Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    invoke-static {p1}, Lcom/mob/commons/c$b;->a(Lcom/mob/commons/c$b;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/mob/commons/c$b$1;->a:Lcom/mob/commons/c$b;

    invoke-static {v0}, Lcom/mob/commons/c$b;->a(Lcom/mob/commons/c$b;)V

    .line 261
    throw p1
.end method

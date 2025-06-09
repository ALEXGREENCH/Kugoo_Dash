.class Lcom/mob/tools/utils/MobPersistence$i$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$e;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/MobPersistence$g;

.field final synthetic b:[I

.field final synthetic c:[Ljava/lang/Object;

.field final synthetic d:[J

.field final synthetic e:[[B

.field final synthetic f:Lcom/mob/tools/utils/MobPersistence$i;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$g;[I[Ljava/lang/Object;[J[[B)V
    .locals 0

    .line 1014
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    iput-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->a:Lcom/mob/tools/utils/MobPersistence$g;

    iput-object p3, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->b:[I

    iput-object p4, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->c:[Ljava/lang/Object;

    iput-object p5, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->d:[J

    iput-object p6, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->e:[[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 4

    const/4 p1, 0x0

    .line 1018
    :try_start_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->d(Lcom/mob/tools/utils/MobPersistence$i;)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->i(Lcom/mob/tools/utils/MobPersistence$i;)Lcom/mob/tools/utils/MobPersistence$h;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->a:Lcom/mob/tools/utils/MobPersistence$g;

    invoke-static {v0, v2}, Lcom/mob/tools/utils/MobPersistence$h;->a(Lcom/mob/tools/utils/MobPersistence$h;Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$c;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1020
    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$c;->a(Lcom/mob/tools/utils/MobPersistence$c;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1021
    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$c;->b(Lcom/mob/tools/utils/MobPersistence$c;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->a:Lcom/mob/tools/utils/MobPersistence$g;

    invoke-virtual {v0, v2, p1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$g;Z)Z

    .line 1024
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->b:[I

    aput v1, v0, p1

    goto :goto_0

    .line 1027
    :cond_0
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->b:[I

    const/4 v3, 0x4

    aput v3, v2, p1

    .line 1028
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->c:[Ljava/lang/Object;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$c;->a(Lcom/mob/tools/utils/MobPersistence$c;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, p1

    .line 1032
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i;->f(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->a:Lcom/mob/tools/utils/MobPersistence$g;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/MobPersistence$i$a;

    if-eqz v0, :cond_3

    .line 1034
    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence$i$a;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1036
    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2, v0}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)V

    .line 1037
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->b:[I

    aput v1, v0, p1

    goto :goto_1

    .line 1039
    :cond_2
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->d:[J

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$i$a;->h(Lcom/mob/tools/utils/MobPersistence$i$a;)J

    move-result-wide v2

    aput-wide v2, v1, p1

    .line 1040
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->e:[[B

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2, v0}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)[B

    move-result-object v0

    aput-object v0, v1, p1

    .line 1041
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->b:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    goto :goto_1

    .line 1045
    :cond_3
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->b:[I

    const/4 v1, 0x1

    aput v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1048
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$4;->f:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$i;->a(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return p1
.end method

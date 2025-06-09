.class Lcom/mob/tools/utils/MobPersistence$i$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mob/commons/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobPersistence$i;->e()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mob/tools/utils/MobPersistence$i;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobPersistence$i;Ljava/util/List;)V
    .locals 0

    .line 1085
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->b:Lcom/mob/tools/utils/MobPersistence$i;

    iput-object p2, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mob/tools/utils/FileLocker;)Z
    .locals 3

    .line 1089
    :try_start_0
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->b:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i;->d(Lcom/mob/tools/utils/MobPersistence$i;)Z

    .line 1090
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->b:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i;->f(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/util/HashMap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1091
    iget-object p1, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->b:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {p1}, Lcom/mob/tools/utils/MobPersistence$i;->f(Lcom/mob/tools/utils/MobPersistence$i;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mob/tools/utils/MobPersistence$i$a;

    .line 1092
    iget-object v1, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->b:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-static {v2, v0}, Lcom/mob/tools/utils/MobPersistence$i;->c(Lcom/mob/tools/utils/MobPersistence$i;Lcom/mob/tools/utils/MobPersistence$i$a;)[B

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1096
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$i$5;->b:Lcom/mob/tools/utils/MobPersistence$i;

    invoke-virtual {v0}, Lcom/mob/tools/utils/MobPersistence$i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/mob/tools/utils/MobPersistence;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

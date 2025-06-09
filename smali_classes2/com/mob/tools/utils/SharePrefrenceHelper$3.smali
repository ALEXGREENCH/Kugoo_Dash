.class Lcom/mob/tools/utils/SharePrefrenceHelper$3;
.super Lcom/mob/tools/utils/MobPersistence$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcelMap(Ljava/lang/String;Ljava/util/Map;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$3;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 5

    .line 382
    invoke-virtual {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$3;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 385
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 386
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 387
    :cond_0
    instance-of v1, v0, Ljava/util/Hashtable;

    if-eqz v1, :cond_1

    .line 388
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    .line 389
    :cond_1
    instance-of v1, v0, Ljava/util/TreeMap;

    if-eqz v1, :cond_2

    .line 390
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 392
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    :goto_0
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v4, Lcom/mob/tools/utils/MobPersistence$b;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-direct {v4, v2}, Lcom/mob/tools/utils/MobPersistence$b;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {v4}, Lcom/mob/tools/utils/MobPersistence$b;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v1

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

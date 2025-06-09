.class Lcom/mob/tools/utils/SharePrefrenceHelper$5;
.super Lcom/mob/tools/utils/MobPersistence$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->putParcelList(Ljava/lang/String;Ljava/util/List;J)V
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

    .line 473
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$5;->a:Lcom/mob/tools/utils/SharePrefrenceHelper;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/mob/tools/utils/MobPersistence$j;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Object;
    .locals 4

    .line 476
    invoke-virtual {p0}, Lcom/mob/tools/utils/SharePrefrenceHelper$5;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 479
    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 480
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 481
    :cond_0
    instance-of v1, v0, Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    .line 482
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    .line 484
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 486
    :goto_0
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 487
    new-instance v3, Lcom/mob/tools/utils/MobPersistence$b;

    invoke-direct {v3, v2}, Lcom/mob/tools/utils/MobPersistence$b;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {v3}, Lcom/mob/tools/utils/MobPersistence$b;->b()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

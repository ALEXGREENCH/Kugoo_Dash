.class Lcom/mob/tools/utils/SharePrefrenceHelper$6;
.super Lcom/mob/tools/utils/MobPersistence$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/SharePrefrenceHelper;->getParcelListThrowable(Ljava/lang/String;Ljava/lang/Class;Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mob/tools/utils/MobPersistence$e<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/mob/tools/utils/SharePrefrenceHelper;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/SharePrefrenceHelper;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 518
    iput-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$6;->b:Lcom/mob/tools/utils/SharePrefrenceHelper;

    iput-object p3, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$6;->a:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/mob/tools/utils/MobPersistence$e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 518
    invoke-virtual {p0, p1}, Lcom/mob/tools/utils/SharePrefrenceHelper$6;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 522
    check-cast p1, Ljava/util/List;

    .line 524
    instance-of v0, p1, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 526
    :cond_0
    instance-of v0, p1, Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    .line 527
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    .line 529
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 531
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 532
    invoke-static {v1}, Lcom/mob/tools/utils/MobPersistence$b;->a(Ljava/util/HashMap;)Lcom/mob/tools/utils/MobPersistence$b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mob/tools/utils/MobPersistence$b;->a(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0

    .line 536
    :cond_3
    iget-object p1, p0, Lcom/mob/tools/utils/SharePrefrenceHelper$6;->a:Ljava/util/List;

    return-object p1
.end method

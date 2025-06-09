.class Lcom/mob/tools/utils/MobPersistence$h$1;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mob/tools/utils/MobPersistence$h;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Lcom/mob/tools/utils/MobPersistence$g;",
        "Lcom/mob/tools/utils/MobPersistence$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/tools/utils/MobPersistence$h;


# direct methods
.method constructor <init>(Lcom/mob/tools/utils/MobPersistence$h;IFZ)V
    .locals 0

    .line 1727
    iput-object p1, p0, Lcom/mob/tools/utils/MobPersistence$h$1;->a:Lcom/mob/tools/utils/MobPersistence$h;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/mob/tools/utils/MobPersistence$g;",
            "Lcom/mob/tools/utils/MobPersistence$c;",
            ">;)Z"
        }
    .end annotation

    .line 1730
    invoke-virtual {p0}, Lcom/mob/tools/utils/MobPersistence$h$1;->size()I

    move-result p1

    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$h$1;->a:Lcom/mob/tools/utils/MobPersistence$h;

    invoke-static {v0}, Lcom/mob/tools/utils/MobPersistence$h;->b(Lcom/mob/tools/utils/MobPersistence$h;)I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

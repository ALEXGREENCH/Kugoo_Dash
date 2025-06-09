.class final Lcom/mob/tools/utils/MobPersistence$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/MobPersistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation


# instance fields
.field private final a:I

.field private volatile b:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Lcom/mob/tools/utils/MobPersistence$g;",
            "Lcom/mob/tools/utils/MobPersistence$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 3

    .line 1725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1726
    iput p1, p0, Lcom/mob/tools/utils/MobPersistence$h;->a:I

    .line 1727
    new-instance v0, Lcom/mob/tools/utils/MobPersistence$h$1;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/mob/tools/utils/MobPersistence$h$1;-><init>(Lcom/mob/tools/utils/MobPersistence$h;IFZ)V

    iput-object v0, p0, Lcom/mob/tools/utils/MobPersistence$h;->b:Ljava/util/LinkedHashMap;

    return-void
.end method

.method synthetic constructor <init>(ILcom/mob/tools/utils/MobPersistence$1;)V
    .locals 0

    .line 1721
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$h;-><init>(I)V

    return-void
.end method

.method private a(Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$c;
    .locals 1

    .line 1736
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mob/tools/utils/MobPersistence$c;

    return-object p1
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$h;Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$c;
    .locals 0

    .line 1721
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$h;->a(Lcom/mob/tools/utils/MobPersistence$g;)Lcom/mob/tools/utils/MobPersistence$c;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method private a(Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$c;)V
    .locals 1

    .line 1740
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$h;)V
    .locals 0

    .line 1721
    invoke-direct {p0}, Lcom/mob/tools/utils/MobPersistence$h;->a()V

    return-void
.end method

.method static synthetic a(Lcom/mob/tools/utils/MobPersistence$h;Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$c;)V
    .locals 0

    .line 1721
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/MobPersistence$h;->a(Lcom/mob/tools/utils/MobPersistence$g;Lcom/mob/tools/utils/MobPersistence$c;)V

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$h;)I
    .locals 0

    .line 1721
    iget p0, p0, Lcom/mob/tools/utils/MobPersistence$h;->a:I

    return p0
.end method

.method private b(Lcom/mob/tools/utils/MobPersistence$g;)V
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/mob/tools/utils/MobPersistence$h;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic b(Lcom/mob/tools/utils/MobPersistence$h;Lcom/mob/tools/utils/MobPersistence$g;)V
    .locals 0

    .line 1721
    invoke-direct {p0, p1}, Lcom/mob/tools/utils/MobPersistence$h;->b(Lcom/mob/tools/utils/MobPersistence$g;)V

    return-void
.end method

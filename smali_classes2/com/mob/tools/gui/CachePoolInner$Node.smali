.class Lcom/mob/tools/gui/CachePoolInner$Node;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/gui/CachePoolInner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private cacheTime:J

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private size:I

.field final synthetic this$0:Lcom/mob/tools/gui/CachePoolInner;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/mob/tools/gui/CachePoolInner;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/mob/tools/gui/CachePoolInner$Node;->this$0:Lcom/mob/tools/gui/CachePoolInner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mob/tools/gui/CachePoolInner;Lcom/mob/tools/gui/CachePoolInner$1;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lcom/mob/tools/gui/CachePoolInner$Node;-><init>(Lcom/mob/tools/gui/CachePoolInner;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mob/tools/gui/CachePoolInner$Node;)J
    .locals 2

    .line 153
    iget-wide v0, p0, Lcom/mob/tools/gui/CachePoolInner$Node;->cacheTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/mob/tools/gui/CachePoolInner$Node;J)J
    .locals 0

    .line 153
    iput-wide p1, p0, Lcom/mob/tools/gui/CachePoolInner$Node;->cacheTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/mob/tools/gui/CachePoolInner$Node;)I
    .locals 0

    .line 153
    iget p0, p0, Lcom/mob/tools/gui/CachePoolInner$Node;->size:I

    return p0
.end method

.method static synthetic access$202(Lcom/mob/tools/gui/CachePoolInner$Node;I)I
    .locals 0

    .line 153
    iput p1, p0, Lcom/mob/tools/gui/CachePoolInner$Node;->size:I

    return p1
.end method

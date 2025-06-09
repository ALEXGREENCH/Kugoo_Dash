.class Lcom/mob/tools/utils/DH$RequestBuilder$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/utils/DH$RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/Object;


# direct methods
.method private varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/mob/tools/utils/DH$RequestBuilder$a;->a:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/mob/tools/utils/DH$RequestBuilder$a;->b:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/mob/tools/utils/DH$1;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/mob/tools/utils/DH$RequestBuilder$a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.class public Lcom/mob/tools/a/c$b$e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/tools/a/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method private varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "i2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>([Ljava/lang/Object;Lcom/mob/tools/a/c$1;)V
    .locals 0

    .line 806
    invoke-direct {p0, p1}, Lcom/mob/tools/a/c$b$e;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 806
    invoke-static {p0}, Lcom/mob/tools/a/c$b$e;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static varargs b([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 808
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "i1"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.class public Lcom/mob/commons/CSCenter$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/CSCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mob/commons/CSCenter;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/mob/commons/CSCenter;)V
    .locals 0

    .line 552
    iput-object p1, p0, Lcom/mob/commons/CSCenter$a;->a:Lcom/mob/commons/CSCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 553
    iput-boolean p1, p0, Lcom/mob/commons/CSCenter$a;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/mob/commons/CSCenter$a;Z)Z
    .locals 0

    .line 552
    iput-boolean p1, p0, Lcom/mob/commons/CSCenter$a;->b:Z

    return p1
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/mob/commons/CSCenter$a;->b:Z

    return v0
.end method

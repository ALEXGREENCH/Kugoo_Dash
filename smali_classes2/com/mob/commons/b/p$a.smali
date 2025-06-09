.class Lcom/mob/commons/b/p$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mob/commons/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/mob/commons/b/p;


# direct methods
.method public constructor <init>(Lcom/mob/commons/b/p;I)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 93
    iput p2, p0, Lcom/mob/commons/b/p$a;->a:I

    .line 94
    iput-object p1, p0, Lcom/mob/commons/b/p$a;->b:Lcom/mob/commons/b/p;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/mob/commons/b/p$a;->b:Lcom/mob/commons/b/p;

    if-eqz v0, :cond_0

    .line 99
    iget v1, p0, Lcom/mob/commons/b/p$a;->a:I

    invoke-static {v0, p1, v1}, Lcom/mob/commons/b/p;->a(Lcom/mob/commons/b/p;ZI)V

    :cond_0
    return-void
.end method

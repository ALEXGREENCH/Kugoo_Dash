.class public Lcom/mob/mgs/impl/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mob/mgs/OnAppActiveListener; = null

.field private static b:I = 0x1

.field private static volatile c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method static synthetic a(I)I
    .locals 0

    .line 22
    sput p0, Lcom/mob/mgs/impl/g;->b:I

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 1

    .line 62
    new-instance v0, Lcom/mob/mgs/impl/g$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/mob/mgs/impl/g$1;-><init>(Landroid/content/Intent;ZLandroid/content/Context;)V

    .line 202
    invoke-virtual {v0}, Lcom/mob/mgs/impl/g$1;->start()V

    return-void
.end method

.method public static a(Lcom/mob/mgs/OnAppActiveListener;)V
    .locals 0

    .line 206
    sput-object p0, Lcom/mob/mgs/impl/g;->a:Lcom/mob/mgs/OnAppActiveListener;

    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 22
    sget-boolean v0, Lcom/mob/mgs/impl/g;->c:Z

    return v0
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 22
    sput-boolean p0, Lcom/mob/mgs/impl/g;->c:Z

    return p0
.end method

.method static synthetic b()I
    .locals 1

    .line 22
    sget v0, Lcom/mob/mgs/impl/g;->b:I

    return v0
.end method

.method static synthetic c()Lcom/mob/mgs/OnAppActiveListener;
    .locals 1

    .line 22
    sget-object v0, Lcom/mob/mgs/impl/g;->a:Lcom/mob/mgs/OnAppActiveListener;

    return-object v0
.end method

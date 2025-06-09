.class public Lcom/kugoo/kugookirin/view/AutoDismissDialog;
.super Landroid/app/Dialog;
.source "AutoDismissDialog.java"


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/kugoo/kugookirin/view/AutoDismissDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onStart()V
    .locals 4

    .line 25
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 26
    iget-object v0, p0, Lcom/kugoo/kugookirin/view/AutoDismissDialog;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 28
    new-instance v1, Lcom/kugoo/kugookirin/view/AutoDismissDialog$1;

    invoke-direct {v1, p0}, Lcom/kugoo/kugookirin/view/AutoDismissDialog$1;-><init>(Lcom/kugoo/kugookirin/view/AutoDismissDialog;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

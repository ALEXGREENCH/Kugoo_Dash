.class Lcom/kugoo/kugookirin/user/EmailForgotActivity$4;
.super Landroid/os/Handler;
.source "EmailForgotActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/user/EmailForgotActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailForgotActivity;Landroid/os/Looper;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 145
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 146
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 147
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailForgotActivity$4;->this$0:Lcom/kugoo/kugookirin/user/EmailForgotActivity;

    invoke-static {p1}, Lcom/kugoo/kugookirin/user/EmailForgotActivity;->access$200(Lcom/kugoo/kugookirin/user/EmailForgotActivity;)V

    :cond_0
    return-void
.end method

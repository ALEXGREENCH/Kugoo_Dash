.class Lcom/kugoo/kugookirin/user/EmailLoginActivity$4;
.super Ljava/lang/Object;
.source "EmailLoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/EmailLoginActivity;->postLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/EmailLoginActivity;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$4;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 451
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$4;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->access$102(Lcom/kugoo/kugookirin/user/EmailLoginActivity;Z)Z

    .line 452
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/EmailLoginActivity$4;->this$0:Lcom/kugoo/kugookirin/user/EmailLoginActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/EmailLoginActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

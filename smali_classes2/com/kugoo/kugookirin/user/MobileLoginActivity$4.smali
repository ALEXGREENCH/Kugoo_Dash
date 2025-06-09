.class Lcom/kugoo/kugookirin/user/MobileLoginActivity$4;
.super Ljava/lang/Object;
.source "MobileLoginActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileLoginActivity;->postLogin(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileLoginActivity;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 322
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->access$102(Lcom/kugoo/kugookirin/user/MobileLoginActivity;Z)Z

    .line 323
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileLoginActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileLoginActivity;

    iget-object p1, p1, Lcom/kugoo/kugookirin/user/MobileLoginActivity;->progressBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

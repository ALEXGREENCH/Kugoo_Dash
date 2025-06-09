.class Lcom/kugoo/kugookirin/user/MobileSignUpActivity$4;
.super Ljava/lang/Object;
.source "MobileSignUpActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->postSignUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/MobileSignUpActivity;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 234
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/MobileSignUpActivity$4;->this$0:Lcom/kugoo/kugookirin/user/MobileSignUpActivity;

    const v0, 0x7f120238

    .line 235
    invoke-virtual {p1, v0}, Lcom/kugoo/kugookirin/user/MobileSignUpActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 234
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 235
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

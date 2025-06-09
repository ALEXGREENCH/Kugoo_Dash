.class Lcn/smssdk/gui/RegisterPage$2;
.super Ljava/lang/Object;
.source "RegisterPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/RegisterPage;->showVerifyResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/RegisterPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/RegisterPage;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 347
    iget-object p1, p0, Lcn/smssdk/gui/RegisterPage$2;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-virtual {p1}, Lcn/smssdk/gui/RegisterPage;->finish()V

    return-void
.end method

.class Lcn/smssdk/gui/RegisterPage$1;
.super Lcn/smssdk/EventHandler;
.source "RegisterPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/RegisterPage;->onCreate()V
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

    .line 140
    iput-object p1, p0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcn/smssdk/gui/RegisterPage$1;->this$0:Lcn/smssdk/gui/RegisterPage;

    new-instance v1, Lcn/smssdk/gui/RegisterPage$1$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lcn/smssdk/gui/RegisterPage$1$1;-><init>(Lcn/smssdk/gui/RegisterPage$1;IILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/RegisterPage;->runOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

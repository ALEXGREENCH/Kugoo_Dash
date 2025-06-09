.class Lcn/smssdk/gui/SmartVerifyPage$2;
.super Ljava/lang/Object;
.source "SmartVerifyPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/SmartVerifyPage;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/SmartVerifyPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/SmartVerifyPage;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcn/smssdk/gui/SmartVerifyPage$2;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcn/smssdk/gui/SmartVerifyPage$2;->this$0:Lcn/smssdk/gui/SmartVerifyPage;

    invoke-static {v0}, Lcn/smssdk/gui/SmartVerifyPage;->access$1000(Lcn/smssdk/gui/SmartVerifyPage;)V

    return-void
.end method

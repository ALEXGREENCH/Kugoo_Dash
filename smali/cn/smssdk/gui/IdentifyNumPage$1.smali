.class Lcn/smssdk/gui/IdentifyNumPage$1;
.super Lcn/smssdk/EventHandler;
.source "IdentifyNumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/IdentifyNumPage;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/IdentifyNumPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/IdentifyNumPage;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 119
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1, p2, p3}, Lcn/smssdk/gui/IdentifyNumPage;->access$000(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 122
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1, p2, p3}, Lcn/smssdk/gui/IdentifyNumPage;->access$100(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 125
    iget-object p1, p0, Lcn/smssdk/gui/IdentifyNumPage$1;->this$0:Lcn/smssdk/gui/IdentifyNumPage;

    invoke-static {p1, p2, p3}, Lcn/smssdk/gui/IdentifyNumPage;->access$200(Lcn/smssdk/gui/IdentifyNumPage;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

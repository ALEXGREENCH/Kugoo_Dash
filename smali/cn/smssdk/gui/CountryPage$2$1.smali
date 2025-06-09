.class Lcn/smssdk/gui/CountryPage$2$1;
.super Lcn/smssdk/EventHandler;
.source "CountryPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/CountryPage$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/smssdk/gui/CountryPage$2;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/CountryPage$2;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 90
    iget-object p1, p0, Lcn/smssdk/gui/CountryPage$2$1;->this$1:Lcn/smssdk/gui/CountryPage$2;

    iget-object p1, p1, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    new-instance v0, Lcn/smssdk/gui/CountryPage$2$1$1;

    invoke-direct {v0, p0, p2, p3}, Lcn/smssdk/gui/CountryPage$2$1$1;-><init>(Lcn/smssdk/gui/CountryPage$2$1;ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcn/smssdk/gui/CountryPage;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

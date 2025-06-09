.class Lcn/smssdk/gui/CountryPage$2;
.super Ljava/lang/Object;
.source "CountryPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/CountryPage;->afterPrepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/CountryPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/CountryPage;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 78
    new-instance v0, Lcn/smssdk/gui/layout/CountryListPageLayout;

    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$100(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/smssdk/gui/layout/CountryListPageLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0}, Lcn/smssdk/gui/layout/CountryListPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v1, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v1}, Lcn/smssdk/gui/CountryPage;->access$200(Lcn/smssdk/gui/CountryPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$300(Lcn/smssdk/gui/CountryPage;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$300(Lcn/smssdk/gui/CountryPage;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 141
    :cond_1
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$500(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$500(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$500(Lcn/smssdk/gui/CountryPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 144
    :cond_2
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$1100(Lcn/smssdk/gui/CountryPage;)V

    goto :goto_1

    .line 86
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    new-instance v1, Lcn/smssdk/gui/CountryPage$2$1;

    invoke-direct {v1, p0}, Lcn/smssdk/gui/CountryPage$2$1;-><init>(Lcn/smssdk/gui/CountryPage$2;)V

    invoke-static {v0, v1}, Lcn/smssdk/gui/CountryPage;->access$402(Lcn/smssdk/gui/CountryPage;Lcn/smssdk/EventHandler;)Lcn/smssdk/EventHandler;

    .line 137
    iget-object v0, p0, Lcn/smssdk/gui/CountryPage$2;->this$0:Lcn/smssdk/gui/CountryPage;

    invoke-static {v0}, Lcn/smssdk/gui/CountryPage;->access$400(Lcn/smssdk/gui/CountryPage;)Lcn/smssdk/EventHandler;

    move-result-object v0

    invoke-static {v0}, Lcn/smssdk/SMSSDK;->registerEventHandler(Lcn/smssdk/EventHandler;)V

    .line 139
    invoke-static {}, Lcn/smssdk/SMSSDK;->getSupportedCountries()V

    :goto_1
    return-void
.end method

.class Lcn/smssdk/gui/ContactsPage$2;
.super Ljava/lang/Object;
.source "ContactsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->afterPrepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/ContactsPage;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/ContactsPage;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/smssdk/gui/ContactsPage;->access$102(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 81
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcn/smssdk/gui/ContactsPage;->access$202(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 83
    new-instance v0, Lcn/smssdk/gui/layout/ContactListPageLayout;

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$300(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/smssdk/gui/layout/ContactListPageLayout;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v0}, Lcn/smssdk/gui/layout/ContactListPageLayout;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-virtual {v0}, Lcn/smssdk/gui/layout/ContactListPageLayout;->getUserInfoSubmitListenerInstance()Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/smssdk/gui/ContactsPage;->access$402(Lcn/smssdk/gui/ContactsPage;Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;)Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;

    if-eqz v1, :cond_0

    .line 88
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$500(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$600(Lcn/smssdk/gui/ContactsPage;)V

    .line 90
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$2;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$700(Lcn/smssdk/gui/ContactsPage;)V

    :cond_0
    return-void
.end method

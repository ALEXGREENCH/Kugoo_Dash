.class Lcn/smssdk/gui/layout/ContactListPageLayout$1;
.super Ljava/lang/Object;
.source "ContactListPageLayout.java"

# interfaces
.implements Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/layout/ContactListPageLayout;->getUserInfoSubmitListenerInstance()Lcn/smssdk/gui/ContactsPage$OnUserInfoSubmitListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/layout/ContactListPageLayout;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/layout/ContactListPageLayout;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/smssdk/gui/layout/ContactListPageLayout$1;->this$0:Lcn/smssdk/gui/layout/ContactListPageLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubmitted(Lcn/smssdk/gui/entity/Profile;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcn/smssdk/gui/layout/ContactListPageLayout$1;->this$0:Lcn/smssdk/gui/layout/ContactListPageLayout;

    invoke-static {v0}, Lcn/smssdk/gui/layout/ContactListPageLayout;->access$000(Lcn/smssdk/gui/layout/ContactListPageLayout;)Lcn/smssdk/gui/PersonalInfoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/smssdk/gui/layout/ContactListPageLayout$1;->this$0:Lcn/smssdk/gui/layout/ContactListPageLayout;

    invoke-static {v0}, Lcn/smssdk/gui/layout/ContactListPageLayout;->access$000(Lcn/smssdk/gui/layout/ContactListPageLayout;)Lcn/smssdk/gui/PersonalInfoView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/smssdk/gui/PersonalInfoView;->updateUI(Lcn/smssdk/gui/entity/Profile;)V

    :cond_0
    return-void
.end method

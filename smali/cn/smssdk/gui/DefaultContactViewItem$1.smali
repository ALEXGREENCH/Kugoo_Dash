.class Lcn/smssdk/gui/DefaultContactViewItem$1;
.super Ljava/lang/Object;
.source "DefaultContactViewItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/DefaultContactViewItem;->getView(Ljava/util/HashMap;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/smssdk/gui/DefaultContactViewItem;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$user:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcn/smssdk/gui/DefaultContactViewItem;Ljava/util/HashMap;Landroid/view/ViewGroup;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->this$0:Lcn/smssdk/gui/DefaultContactViewItem;

    iput-object p2, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    iput-object p3, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 128
    iget-object p1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    const-string v0, "fia"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "smssdk_i_know"

    invoke-static {v0, v1}, Lcom/mob/tools/utils/ResHelper;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 133
    new-instance v5, Lcn/smssdk/gui/DefaultContactViewItem$1$1;

    invoke-direct {v5, p0}, Lcn/smssdk/gui/DefaultContactViewItem$1$1;-><init>(Lcn/smssdk/gui/DefaultContactViewItem$1;)V

    .line 139
    iget-object p1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p1, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static/range {v1 .. v10}, Lcn/smssdk/gui/PopupDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Ljava/lang/String;Landroid/view/View$OnClickListener;ZZZ)Lcn/smssdk/gui/PopupDialog;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcn/smssdk/gui/PopupDialog;->show()V

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Lcn/smssdk/gui/ContactDetailPage;

    invoke-direct {p1}, Lcn/smssdk/gui/ContactDetailPage;-><init>()V

    .line 143
    iget-object v0, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$user:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcn/smssdk/gui/ContactDetailPage;->setContact(Ljava/util/HashMap;)V

    .line 144
    iget-object v0, p0, Lcn/smssdk/gui/DefaultContactViewItem$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcn/smssdk/gui/ContactDetailPage;->show(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.class Lcn/smssdk/gui/ContactsPage$5;
.super Ljava/lang/Object;
.source "ContactsPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->refreshContactList()V
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

    .line 417
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 419
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$900(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$900(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$900(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance v1, Lcn/smssdk/gui/ContactsAdapter;

    iget-object v2, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v2}, Lcn/smssdk/gui/ContactsPage;->access$1700(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsListView;

    move-result-object v2

    iget-object v3, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v3}, Lcn/smssdk/gui/ContactsPage;->access$100(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v4}, Lcn/smssdk/gui/ContactsPage;->access$200(Lcn/smssdk/gui/ContactsPage;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcn/smssdk/gui/ContactsAdapter;-><init>(Lcn/smssdk/gui/ContactsListView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcn/smssdk/gui/ContactsPage;->access$1602(Lcn/smssdk/gui/ContactsPage;Lcn/smssdk/gui/ContactsAdapter;)Lcn/smssdk/gui/ContactsAdapter;

    .line 424
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$1600(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$1800(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactItemMaker;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsAdapter;->setContactItemMaker(Lcn/smssdk/gui/ContactItemMaker;)V

    .line 425
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$1700(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsListView;

    move-result-object v0

    iget-object v1, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v1}, Lcn/smssdk/gui/ContactsPage;->access$1600(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/gui/ContactsAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/smssdk/gui/ContactsListView;->setAdapter(Lcn/smssdk/gui/ContactsListView$GroupAdapter;)V

    .line 428
    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$5;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {v0}, Lcn/smssdk/gui/ContactsPage;->access$1300(Lcn/smssdk/gui/ContactsPage;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

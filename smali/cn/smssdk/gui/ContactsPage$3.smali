.class Lcn/smssdk/gui/ContactsPage$3;
.super Lcn/smssdk/EventHandler;
.source "ContactsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->initData()V
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

    .line 141
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 147
    check-cast p3, Ljava/util/ArrayList;

    if-nez p3, :cond_0

    .line 149
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lcn/smssdk/gui/ContactsPage;->access$202(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 151
    :cond_0
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcn/smssdk/gui/ContactsPage;->access$202(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 153
    :goto_0
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {p1}, Lcn/smssdk/gui/ContactsPage;->access$800(Lcn/smssdk/gui/ContactsPage;)V

    goto :goto_1

    :cond_1
    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    .line 156
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    check-cast p3, Ljava/util/ArrayList;

    invoke-static {p1, p3}, Lcn/smssdk/gui/ContactsPage;->access$102(Lcn/smssdk/gui/ContactsPage;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 157
    invoke-static {p1}, Lcn/smssdk/SMSSDK;->getContacts(Z)V

    goto :goto_1

    .line 160
    :cond_2
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage$3;->this$0:Lcn/smssdk/gui/ContactsPage;

    new-instance p2, Lcn/smssdk/gui/ContactsPage$3$1;

    invoke-direct {p2, p0, p3}, Lcn/smssdk/gui/ContactsPage$3$1;-><init>(Lcn/smssdk/gui/ContactsPage$3;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lcn/smssdk/gui/ContactsPage;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method

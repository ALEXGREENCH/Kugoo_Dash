.class Lcn/smssdk/gui/ContactsPage$4;
.super Lcn/smssdk/EventHandler;
.source "ContactsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/smssdk/gui/ContactsPage;->bindProfile()V
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

    .line 297
    iput-object p1, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-direct {p0}, Lcn/smssdk/EventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public afterEvent(IILjava/lang/Object;)V
    .locals 6

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 302
    check-cast p3, Ljava/util/HashMap;

    const-string p1, "country"

    .line 303
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    const-string p1, "phone"

    .line 304
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    .line 307
    invoke-static {}, Lcn/smssdk/gui/util/GUISPDB;->getProfile()Lcn/smssdk/gui/entity/Profile;

    move-result-object p1

    if-nez p1, :cond_0

    .line 309
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 310
    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 311
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 312
    new-instance p1, Lcn/smssdk/gui/entity/Profile;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcn/smssdk/gui/entity/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-virtual {p1, v2}, Lcn/smssdk/gui/entity/Profile;->setPhoneNum(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v4}, Lcn/smssdk/gui/entity/Profile;->setCountry(Ljava/lang/String;)V

    .line 321
    :goto_0
    new-instance p2, Lcn/smssdk/gui/AvatarPage;

    invoke-direct {p2}, Lcn/smssdk/gui/AvatarPage;-><init>()V

    .line 322
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    const-string v0, "extra_profile"

    .line 323
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 324
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {p1}, Lcn/smssdk/gui/ContactsPage;->access$1400(Lcn/smssdk/gui/ContactsPage;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-virtual {p2, p1, p3, v0}, Lcn/smssdk/gui/AvatarPage;->showForResult(Landroid/content/Context;Landroid/content/Intent;Lcom/mob/tools/FakeActivity;)V

    .line 326
    iget-object p1, p0, Lcn/smssdk/gui/ContactsPage$4;->this$0:Lcn/smssdk/gui/ContactsPage;

    invoke-static {p1}, Lcn/smssdk/gui/ContactsPage;->access$1500(Lcn/smssdk/gui/ContactsPage;)Lcn/smssdk/EventHandler;

    move-result-object p1

    invoke-static {p1}, Lcn/smssdk/SMSSDK;->unregisterEventHandler(Lcn/smssdk/EventHandler;)V

    :cond_1
    return-void
.end method

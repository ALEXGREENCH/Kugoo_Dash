.class Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;
.super Ljava/lang/Object;
.source "ForYouAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;I)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 315
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$1900(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 316
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$2000(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$2100(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->val$finalPos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;

    .line 319
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getNickName()Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getPortraitUrl()Ljava/lang/String;

    .line 321
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/ForYouBean$PostBean;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 323
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$2500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 324
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;->access$2500(Lcom/kugoo/kugookirin/social/adapter/ForYouAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

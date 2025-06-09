.class Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;
.super Ljava/lang/Object;
.source "DynamicDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$detailHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

.field final synthetic val$orgdynamics:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;->val$orgdynamics:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 227
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 228
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;->val$orgdynamics:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dynamicID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;->val$orgdynamics:Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;

    invoke-virtual {v0}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity$OrgdynamicsBean;->getUid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dynamicUID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/kugoo/kugookirin/social/DynamicDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "infoBundler"

    .line 231
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 232
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

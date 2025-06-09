.class Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$1;
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


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 146
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/DynDetailInfo$DynamicArrEntity;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/DynamicDetailAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

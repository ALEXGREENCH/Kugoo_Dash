.class Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;
.super Ljava/lang/Object;
.source "SearchUserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$UserHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;I)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 86
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    invoke-static {v1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$600(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.class Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;
.super Ljava/lang/Object;
.source "FriendFollowerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$infoAdapter;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;I)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 75
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;->val$position:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;

    .line 76
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/FriendInfo$ResultList;->getUid()Ljava/lang/String;

    move-result-object p1

    .line 77
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter$2;->val$position:I

    invoke-static {v0, v1, p1, v2}, Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/FriendFollowerAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

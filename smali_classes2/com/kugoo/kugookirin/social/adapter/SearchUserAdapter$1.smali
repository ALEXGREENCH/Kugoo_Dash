.class Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;
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

    .line 73
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 76
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$300(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;

    .line 77
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchUserInfo$UserArrList;->getId()Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "position=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testFollow002"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$400(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter$1;->val$position:I

    invoke-static {v0, v1, p1, v2}, Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;->access$500(Lcom/kugoo/kugookirin/social/adapter/SearchUserAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

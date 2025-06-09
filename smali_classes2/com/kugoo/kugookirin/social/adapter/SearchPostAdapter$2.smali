.class Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;
.super Ljava/lang/Object;
.source "SearchPostAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$PostViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;I)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 186
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->access$1700(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 187
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->access$1800(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->access$1900(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->val$finalPos:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;

    .line 190
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/SearchPostInfo$PostBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 191
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter$2;->val$finalPos:I

    invoke-static {v0, p1, v1}, Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;->access$2000(Lcom/kugoo/kugookirin/social/adapter/SearchPostAdapter;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

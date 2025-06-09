.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;
.super Ljava/lang/Object;
.source "HomePagePostsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$PageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

.field final synthetic val$finalPos:I


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;I)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 172
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$1500(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$1600(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$1700(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->val$finalPos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    .line 176
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$2;->val$finalPos:I

    invoke-static {v0, p1, v1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$1800(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.class Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;
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

.field final synthetic val$postBean:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;I)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->val$postBean:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    iput p4, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 299
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$1500(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2300(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->val$uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->val$postBean:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 303
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    const-string v1, "dynamic"

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->val$finalPos:I

    invoke-static {v0, v1, p1, v2}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2400(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->val$postBean:Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/HomePagePostsBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 307
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {v0, p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$2500(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter$6;->this$0:Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;->access$1600(Lcom/kugoo/kugookirin/social/adapter/HomePagePostsAdapter;)V

    :goto_0
    return-void
.end method

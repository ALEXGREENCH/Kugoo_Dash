.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;
.super Ljava/lang/Object;
.source "DiscoverPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$PageViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

.field final synthetic val$finalPos:I

.field final synthetic val$postBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

.field final synthetic val$uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;I)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$uid:Ljava/lang/String;

    iput-object p3, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$postBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    iput p4, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 311
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$1800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 312
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2600(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 314
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$postBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 315
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    const-string v1, "dynamic"

    iget v2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$finalPos:I

    invoke-static {v0, v1, p1, v2}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2700(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$postBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 319
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->val$postBean:Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V

    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$7;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$1900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V

    :goto_0
    return-void
.end method

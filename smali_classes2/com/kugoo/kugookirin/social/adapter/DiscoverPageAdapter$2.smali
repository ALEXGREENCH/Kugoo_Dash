.class Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;
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


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;I)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iput p2, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->val$finalPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$1800(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Landroid/content/SharedPreferences;

    move-result-object p1

    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_ISLOGIN:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$1900(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    invoke-static {p1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2000(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    iget v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->val$finalPos:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;

    .line 196
    invoke-virtual {p1}, Lcom/kugoo/kugookirin/social/bean/DiscoverBean$PostBean;->getId()Ljava/lang/String;

    move-result-object p1

    .line 197
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->this$0:Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;

    iget v1, p0, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter$2;->val$finalPos:I

    invoke-static {v0, p1, v1}, Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;->access$2100(Lcom/kugoo/kugookirin/social/adapter/DiscoverPageAdapter;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

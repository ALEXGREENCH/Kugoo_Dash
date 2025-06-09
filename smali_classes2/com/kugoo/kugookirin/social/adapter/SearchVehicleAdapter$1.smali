.class Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;
.super Ljava/lang/Object;
.source "SearchVehicleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->onBindViewHolder(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$VehicleInfoHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

.field final synthetic val$searchResultBean:Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

    iput-object p2, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;->val$searchResultBean:Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 52
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/social/HomePageActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    sget-object v0, Lcom/kugoo/kugookirin/utils/Constants;->HOME_PAGE_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;->val$searchResultBean:Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;

    invoke-virtual {v1}, Lcom/kugoo/kugookirin/social/bean/SearchVehicleInfo$ResultBean;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    iget-object v0, p0, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter$1;->this$0:Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;->access$000(Lcom/kugoo/kugookirin/social/adapter/SearchVehicleAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

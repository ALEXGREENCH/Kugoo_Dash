.class Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;
.super Ljava/lang/Object;
.source "TrajectoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

.field final synthetic val$distance:D

.field final synthetic val$endLoc:Ljava/lang/String;

.field final synthetic val$locationData:Ljava/lang/String;

.field final synthetic val$spendTime:Ljava/lang/String;

.field final synthetic val$startLoc:Ljava/lang/String;

.field final synthetic val$suspendArr:Ljava/lang/String;

.field final synthetic val$topSpeed:D


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    iput-wide p2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$distance:D

    iput-wide p4, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$topSpeed:D

    iput-object p6, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$spendTime:Ljava/lang/String;

    iput-object p7, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$startLoc:Ljava/lang/String;

    iput-object p8, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$endLoc:Ljava/lang/String;

    iput-object p9, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$locationData:Ljava/lang/String;

    iput-object p10, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$suspendArr:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 159
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 160
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->access$1000(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/kugoo/kugookirin/more/ShowTrackActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    sget-object v0, Lcom/kugoo/kugookirin/utils/MyApplication;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_INSPORTS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 162
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_DISTANCE:Ljava/lang/String;

    iget-wide v3, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$distance:D

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 164
    iget-wide v3, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$topSpeed:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%.1f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 165
    sget-object v2, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_TOP_SPEED:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_SPEND_TIME:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$spendTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_START_LOC:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$startLoc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_END_LOC:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$endLoc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_TRACK_LOCATION_ARR:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$locationData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/kugoo/kugookirin/utils/Constants;->PREFERENCES_PAUSE_LOCATION_ARR:Ljava/lang/String;

    iget-object v2, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->val$suspendArr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter$2;->this$0:Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;

    invoke-static {v0}, Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;->access$1000(Lcom/kugoo/kugookirin/vehicle/adapter/TrajectoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

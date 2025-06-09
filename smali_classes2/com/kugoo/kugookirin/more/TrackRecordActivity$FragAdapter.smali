.class Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "TrackRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/more/TrackRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FragAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;


# direct methods
.method public constructor <init>(Lcom/kugoo/kugookirin/more/TrackRecordActivity;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    .line 292
    invoke-direct {p0, p2}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$300(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$400(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)[Landroidx/fragment/app/Fragment;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/kugoo/kugookirin/more/TrackRecordActivity$FragAdapter;->this$0:Lcom/kugoo/kugookirin/more/TrackRecordActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/more/TrackRecordActivity;->access$300(Lcom/kugoo/kugookirin/more/TrackRecordActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

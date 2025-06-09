.class Lcom/kugoo/kugookirin/user/country/CountryActivity$1;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Lcom/kugoo/kugookirin/user/country/SideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kugoo/kugookirin/user/country/CountryActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kugoo/kugookirin/user/country/CountryActivity;


# direct methods
.method constructor <init>(Lcom/kugoo/kugookirin/user/country/CountryActivity;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity$1;->this$0:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity$1;->this$0:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->access$000(Lcom/kugoo/kugookirin/user/country/CountryActivity;)Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v0, p1}, Lcom/kugoo/kugookirin/user/country/CountrySortAdapter;->getPositionForSection(I)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity$1;->this$0:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    invoke-static {v0}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->access$100(Lcom/kugoo/kugookirin/user/country/CountryActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

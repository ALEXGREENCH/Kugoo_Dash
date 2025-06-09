.class Lcom/kugoo/kugookirin/user/country/CountryActivity$2;
.super Ljava/lang/Object;
.source "CountryActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 141
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity$2;->this$0:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "currentPos=="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "   name=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity$2;->this$0:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    invoke-static {p2}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->access$200(Lcom/kugoo/kugookirin/user/country/CountryActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kugoo/kugookirin/user/country/CountrySortModel;

    invoke-virtual {p2}, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->getCountryName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "currentPos"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryActivity$2;->this$0:Lcom/kugoo/kugookirin/user/country/CountryActivity;

    invoke-static {p1, p3}, Lcom/kugoo/kugookirin/user/country/CountryActivity;->access$300(Lcom/kugoo/kugookirin/user/country/CountryActivity;I)V

    return-void
.end method

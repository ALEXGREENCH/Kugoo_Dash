.class public Lcom/kugoo/kugookirin/user/country/CountrySortModel;
.super Ljava/lang/Object;
.source "CountrySortModel.java"


# instance fields
.field public contactPhoto:Landroid/graphics/drawable/Drawable;

.field public countryName:Ljava/lang/String;

.field public countryNumber:Ljava/lang/String;

.field public countrySortKey:Ljava/lang/String;

.field public image_dress:I

.field public is_select:Z

.field public simpleCountryNumber:Ljava/lang/String;

.field public sortLetters:Ljava/lang/String;

.field public sortToken:Lcom/kugoo/kugookirin/user/country/CountrySortToken;


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/kugoo/kugookirin/user/country/CountrySortToken;

    invoke-direct {v0}, Lcom/kugoo/kugookirin/user/country/CountrySortToken;-><init>()V

    iput-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->sortToken:Lcom/kugoo/kugookirin/user/country/CountrySortToken;

    .line 87
    iput p2, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->image_dress:I

    .line 88
    iput-object p3, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    .line 89
    iput-object p4, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryNumber:Ljava/lang/String;

    .line 90
    iput-object p5, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countrySortKey:Ljava/lang/String;

    .line 91
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->is_select:Z

    if-eqz p4, :cond_0

    const-string p1, "\\-|\\s"

    const-string p2, ""

    .line 94
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->simpleCountryNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContactPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->contactPhoto:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryNumber()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrySortKey()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countrySortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_dress()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->image_dress:I

    return v0
.end method

.method public getSimpleCountryNumber()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->simpleCountryNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_select()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->is_select:Z

    return v0
.end method

.method public setContactPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->contactPhoto:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryName:Ljava/lang/String;

    return-void
.end method

.method public setCountryNumber(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countryNumber:Ljava/lang/String;

    return-void
.end method

.method public setCountrySortKey(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->countrySortKey:Ljava/lang/String;

    return-void
.end method

.method public setImage_dress(I)V
    .locals 0

    .line 61
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->image_dress:I

    return-void
.end method

.method public setIs_select(Z)V
    .locals 0

    .line 77
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->is_select:Z

    return-void
.end method

.method public setSimpleCountryNumber(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountrySortModel;->simpleCountryNumber:Ljava/lang/String;

    return-void
.end method

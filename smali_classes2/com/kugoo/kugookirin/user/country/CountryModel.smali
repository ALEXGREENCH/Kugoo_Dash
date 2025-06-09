.class public Lcom/kugoo/kugookirin/user/country/CountryModel;
.super Ljava/lang/Object;
.source "CountryModel.java"


# instance fields
.field public contactPhoto:Landroid/graphics/drawable/Drawable;

.field public countryName:Ljava/lang/String;

.field public countryNumber:Ljava/lang/String;

.field public countrySortKey:Ljava/lang/String;

.field public image_dress:I

.field public is_select:Z

.field public simpleCountryNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p2, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->image_dress:I

    .line 83
    iput-object p3, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countryName:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countryNumber:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countrySortKey:Ljava/lang/String;

    .line 86
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->is_select:Z

    if-eqz p4, :cond_0

    const-string p1, "\\-|\\s"

    const-string p2, ""

    .line 89
    invoke-virtual {p4, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->simpleCountryNumber:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getContactPhoto()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->contactPhoto:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCountryName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countryName:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryNumber()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countryNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCountrySortKey()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countrySortKey:Ljava/lang/String;

    return-object v0
.end method

.method public getImage_dress()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->image_dress:I

    return v0
.end method

.method public getSimpleCountryNumber()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->simpleCountryNumber:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_select()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->is_select:Z

    return v0
.end method

.method public setContactPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->contactPhoto:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setCountryName(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countryName:Ljava/lang/String;

    return-void
.end method

.method public setCountryNumber(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countryNumber:Ljava/lang/String;

    return-void
.end method

.method public setCountrySortKey(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->countrySortKey:Ljava/lang/String;

    return-void
.end method

.method public setImage_dress(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->image_dress:I

    return-void
.end method

.method public setIs_select(Z)V
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->is_select:Z

    return-void
.end method

.method public setSimpleCountryNumber(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/kugoo/kugookirin/user/country/CountryModel;->simpleCountryNumber:Ljava/lang/String;

    return-void
.end method

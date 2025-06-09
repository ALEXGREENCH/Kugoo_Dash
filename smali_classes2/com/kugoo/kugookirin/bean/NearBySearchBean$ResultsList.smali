.class public Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;
.super Ljava/lang/Object;
.source "NearBySearchBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kugoo/kugookirin/bean/NearBySearchBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultsList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;,
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;,
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;,
        Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;
    }
.end annotation


# instance fields
.field private business_status:Ljava/lang/String;

.field private geometry:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;

.field private icon:Ljava/lang/String;

.field private icon_background_color:Ljava/lang/String;

.field private icon_mask_base_uri:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private opening_hours:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;

.field private photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;",
            ">;"
        }
    .end annotation
.end field

.field private place_id:Ljava/lang/String;

.field private plus_code:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;

.field private rating:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private user_ratings_total:Ljava/lang/String;

.field private vicinity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusiness_status()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->business_status:Ljava/lang/String;

    return-object v0
.end method

.method public getGeometry()Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->geometry:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_background_color()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->icon_background_color:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon_mask_base_uri()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->icon_mask_base_uri:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOpening_hours()Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->opening_hours:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;

    return-object v0
.end method

.method public getPhotos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->photos:Ljava/util/List;

    return-object v0
.end method

.method public getPlace_id()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->place_id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlus_code()Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->plus_code:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;

    return-object v0
.end method

.method public getRating()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->rating:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->types:Ljava/util/List;

    return-object v0
.end method

.method public getUser_ratings_total()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->user_ratings_total:Ljava/lang/String;

    return-object v0
.end method

.method public getVicinity()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->vicinity:Ljava/lang/String;

    return-object v0
.end method

.method public setBusiness_status(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->business_status:Ljava/lang/String;

    return-void
.end method

.method public setGeometry(Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->geometry:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$GeometryList;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->icon:Ljava/lang/String;

    return-void
.end method

.method public setIcon_background_color(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->icon_background_color:Ljava/lang/String;

    return-void
.end method

.method public setIcon_mask_base_uri(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->icon_mask_base_uri:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->name:Ljava/lang/String;

    return-void
.end method

.method public setOpening_hours(Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->opening_hours:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$OpeningHoursList;

    return-void
.end method

.method public setPhotos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PhotosList;",
            ">;)V"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->photos:Ljava/util/List;

    return-void
.end method

.method public setPlace_id(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->place_id:Ljava/lang/String;

    return-void
.end method

.method public setPlus_code(Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->plus_code:Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList$PlusCodeList;

    return-void
.end method

.method public setRating(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->rating:Ljava/lang/String;

    return-void
.end method

.method public setReference(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->reference:Ljava/lang/String;

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->scope:Ljava/lang/String;

    return-void
.end method

.method public setTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->types:Ljava/util/List;

    return-void
.end method

.method public setUser_ratings_total(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->user_ratings_total:Ljava/lang/String;

    return-void
.end method

.method public setVicinity(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/kugoo/kugookirin/bean/NearBySearchBean$ResultsList;->vicinity:Ljava/lang/String;

    return-void
.end method

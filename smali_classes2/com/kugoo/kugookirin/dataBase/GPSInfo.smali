.class public Lcom/kugoo/kugookirin/dataBase/GPSInfo;
.super Ljava/lang/Object;
.source "GPSInfo.java"


# instance fields
.field private avgspeed:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private gpsinfoid:Ljava/lang/Integer;

.field private location:Ljava/lang/String;

.field private spendTime:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private topspeed:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->gpsinfoid:Ljava/lang/Integer;

    .line 27
    iput-object p2, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->location:Ljava/lang/String;

    .line 28
    iput-object p3, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->startTime:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->distance:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->spendTime:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->topspeed:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->avgspeed:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->location:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->startTime:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->distance:Ljava/lang/String;

    .line 18
    iput-object p4, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->spendTime:Ljava/lang/String;

    .line 19
    iput-object p5, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->topspeed:Ljava/lang/String;

    .line 20
    iput-object p6, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->avgspeed:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvgspeed()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->avgspeed:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->gpsinfoid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getSpendTime()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->spendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTopspeed()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->topspeed:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgspeed(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->avgspeed:Ljava/lang/String;

    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->distance:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->gpsinfoid:Ljava/lang/Integer;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->location:Ljava/lang/String;

    return-void
.end method

.method public setSpendTime(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->spendTime:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTopspeed(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->topspeed:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPSInfo [gpsinfoid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->gpsinfoid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->location:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->distance:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", spendTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->spendTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", topspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->topspeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", avgspeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kugoo/kugookirin/dataBase/GPSInfo;->avgspeed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

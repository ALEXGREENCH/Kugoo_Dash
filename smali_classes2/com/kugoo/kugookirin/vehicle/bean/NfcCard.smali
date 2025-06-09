.class public Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;
.super Ljava/lang/Object;
.source "NfcCard.java"


# instance fields
.field private name:Ljava/lang/String;

.field private proof:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->proof:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProof()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->proof:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->name:Ljava/lang/String;

    return-void
.end method

.method public setProof(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/kugoo/kugookirin/vehicle/bean/NfcCard;->proof:Ljava/lang/String;

    return-void
.end method

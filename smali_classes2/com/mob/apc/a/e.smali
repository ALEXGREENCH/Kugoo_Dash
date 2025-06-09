.class public Lcom/mob/apc/a/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/mob/apc/a;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Lcom/mob/apc/APCException;

.field public e:J


# direct methods
.method public constructor <init>(Lcom/mob/apc/a;Ljava/lang/String;J)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/mob/apc/a/e;->d:Lcom/mob/apc/APCException;

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Lcom/mob/apc/a/e;->e:J

    .line 22
    iput-object p1, p0, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    .line 23
    iput-object p2, p0, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/mob/apc/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    .line 25
    iput-wide p3, p0, Lcom/mob/apc/a/e;->e:J

    return-void
.end method

.method public static a(Landroid/os/Parcel;)Lcom/mob/apc/a/e;
    .locals 4

    .line 44
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 45
    new-instance v2, Lcom/mob/apc/a/e;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Lcom/mob/apc/a/e;-><init>(Lcom/mob/apc/a;Ljava/lang/String;J)V

    .line 46
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 48
    new-instance v0, Lcom/mob/apc/a;

    invoke-direct {v0}, Lcom/mob/apc/a;-><init>()V

    invoke-virtual {v0, p0}, Lcom/mob/apc/a;->a(Landroid/os/Parcel;)Lcom/mob/apc/a;

    move-result-object v0

    iput-object v0, v2, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    .line 49
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 52
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 56
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    :cond_2
    return-object v2
.end method


# virtual methods
.method public a(Landroid/os/Parcel;I)V
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/mob/apc/a/e;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 30
    iget-object v0, p0, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget-object v0, p0, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    invoke-virtual {v0, p1, p2}, Lcom/mob/apc/a;->a(Landroid/os/Parcel;I)V

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/4 p2, 0x2

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object p2, p0, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-static {}, Lcom/mob/apc/b;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    const/4 p2, 0x3

    .line 39
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object p2, p0, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InnerMessage{apcMessage="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mob/apc/a/e;->a:Lcom/mob/apc/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", businessID=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/apc/a/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', pkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/apc/a/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

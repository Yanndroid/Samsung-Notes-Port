.class public Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private opId:Ljava/lang/String;

.field private startSubOpTimeMills:J

.field private startSubOpTimestamp:Ljava/lang/String;

.field private subOpDataSize:J

.field private subOpElapsedTime:J

.field private subOpId:Ljava/lang/String;

.field private subOpItemCount:J

.field private subOpName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation$1;

    invoke-direct {v0}, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation$1;-><init>()V

    sput-object v0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpItemCount:J

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpDataSize:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimeMills:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimestamp:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpElapsedTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpItemCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpDataSize:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpItemCount:J

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpDataSize:J

    iput-object p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->opId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimeMills:J

    invoke-static {p1, p2}, Lcom/sec/android/diagmonagent/dma/aperf/utils/aPerfUtil;->localToUTC(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimestamp:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpElapsedTime:J

    return-void
.end method


# virtual methods
.method public calculateOpElapsedTime()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimeMills:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpElapsedTime:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->opId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartSubOpTimeMills()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimeMills:J

    return-wide v0
.end method

.method public getStartSubOpTimestamp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimestamp:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOpDataSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpDataSize:J

    return-wide v0
.end method

.method public getSubOpElapsedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpElapsedTime:J

    return-wide v0
.end method

.method public getSubOpId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubOpItemCount()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpItemCount:J

    return-wide v0
.end method

.method public getSubOpName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpName:Ljava/lang/String;

    return-object v0
.end method

.method public setSubOpCountSize(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpItemCount:J

    iput-wide p3, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpDataSize:J

    return-void
.end method

.method public setSubOpElapsedTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpElapsedTime:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimeMills:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->startSubOpTimestamp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpElapsedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpItemCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sec/android/diagmonagent/dma/aperf/SubOperation;->subOpDataSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

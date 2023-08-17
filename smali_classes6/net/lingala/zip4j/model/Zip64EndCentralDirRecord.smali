.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private extensibleDataSector:[B

.field private noOfThisDisk:I

.field private noOfThisDiskStartOfCentralDir:I

.field private offsetStartCenDirWRTStartDiskNo:J

.field private signature:J

.field private sizeOfCentralDir:J

.field private sizeOfZip64EndCentralDirRec:J

.field private totNoOfEntriesInCentralDir:J

.field private totNoOfEntriesInCentralDirOnThisDisk:J

.field private versionMadeBy:I

.field private versionNeededToExtract:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtensibleDataSector()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->extensibleDataSector:[B

    return-object v0
.end method

.method public getNoOfThisDisk()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    return v0
.end method

.method public getNoOfThisDiskStartOfCentralDir()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    return v0
.end method

.method public getOffsetStartCenDirWRTStartDiskNo()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    return-wide v0
.end method

.method public getSignature()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->signature:J

    return-wide v0
.end method

.method public getSizeOfCentralDir()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfCentralDir:J

    return-wide v0
.end method

.method public getSizeOfZip64EndCentralDirRec()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    return-wide v0
.end method

.method public getTotNoOfEntriesInCentralDir()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    return-wide v0
.end method

.method public getTotNoOfEntriesInCentralDirOnThisDisk()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:J

    return-wide v0
.end method

.method public getVersionMadeBy()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionMadeBy:I

    return v0
.end method

.method public getVersionNeededToExtract()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionNeededToExtract:I

    return v0
.end method

.method public setExtensibleDataSector([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->extensibleDataSector:[B

    return-void
.end method

.method public setNoOfThisDisk(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDisk:I

    return-void
.end method

.method public setNoOfThisDiskStartOfCentralDir(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    return-void
.end method

.method public setOffsetStartCenDirWRTStartDiskNo(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->offsetStartCenDirWRTStartDiskNo:J

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->signature:J

    return-void
.end method

.method public setSizeOfCentralDir(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfCentralDir:J

    return-void
.end method

.method public setSizeOfZip64EndCentralDirRec(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->sizeOfZip64EndCentralDirRec:J

    return-void
.end method

.method public setTotNoOfEntriesInCentralDir(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDir:J

    return-void
.end method

.method public setTotNoOfEntriesInCentralDirOnThisDisk(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:J

    return-void
.end method

.method public setVersionMadeBy(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionMadeBy:I

    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;->versionNeededToExtract:I

    return-void
.end method

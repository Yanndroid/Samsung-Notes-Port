.class public Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private noOfDiskStartOfZip64EndOfCentralDirRec:I

.field private offsetZip64EndOfCentralDirRec:J

.field private signature:J

.field private totNumberOfDiscs:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNoOfDiskStartOfZip64EndOfCentralDirRec()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->noOfDiskStartOfZip64EndOfCentralDirRec:I

    return v0
.end method

.method public getOffsetZip64EndOfCentralDirRec()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->offsetZip64EndOfCentralDirRec:J

    return-wide v0
.end method

.method public getSignature()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->signature:J

    return-wide v0
.end method

.method public getTotNumberOfDiscs()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->totNumberOfDiscs:I

    return v0
.end method

.method public setNoOfDiskStartOfZip64EndOfCentralDirRec(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->noOfDiskStartOfZip64EndOfCentralDirRec:I

    return-void
.end method

.method public setOffsetZip64EndOfCentralDirRec(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->offsetZip64EndOfCentralDirRec:J

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->signature:J

    return-void
.end method

.method public setTotNumberOfDiscs(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;->totNumberOfDiscs:I

    return-void
.end method

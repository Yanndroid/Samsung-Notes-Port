.class public Lnet/lingala/zip4j/model/EndCentralDirRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private comment:Ljava/lang/String;

.field private commentBytes:[B

.field private commentLength:I

.field private noOfThisDisk:I

.field private noOfThisDiskStartOfCentralDir:I

.field private offsetOfStartOfCentralDir:J

.field private signature:J

.field private sizeOfCentralDir:I

.field private totNoOfEntriesInCentralDir:I

.field private totNoOfEntriesInCentralDirOnThisDisk:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentBytes()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentBytes:[B

    return-object v0
.end method

.method public getCommentLength()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentLength:I

    return v0
.end method

.method public getNoOfThisDisk()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDisk:I

    return v0
.end method

.method public getNoOfThisDiskStartOfCentralDir()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    return v0
.end method

.method public getOffsetOfStartOfCentralDir()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->offsetOfStartOfCentralDir:J

    return-wide v0
.end method

.method public getSignature()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->signature:J

    return-wide v0
.end method

.method public getSizeOfCentralDir()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->sizeOfCentralDir:I

    return v0
.end method

.method public getTotNoOfEntriesInCentralDir()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDir:I

    return v0
.end method

.method public getTotNoOfEntriesInCentralDirOnThisDisk()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:I

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->comment:Ljava/lang/String;

    return-void
.end method

.method public setCommentBytes([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentBytes:[B

    return-void
.end method

.method public setCommentLength(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->commentLength:I

    return-void
.end method

.method public setNoOfThisDisk(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDisk:I

    return-void
.end method

.method public setNoOfThisDiskStartOfCentralDir(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->noOfThisDiskStartOfCentralDir:I

    return-void
.end method

.method public setOffsetOfStartOfCentralDir(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->offsetOfStartOfCentralDir:J

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->signature:J

    return-void
.end method

.method public setSizeOfCentralDir(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->sizeOfCentralDir:I

    return-void
.end method

.method public setTotNoOfEntriesInCentralDir(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDir:I

    return-void
.end method

.method public setTotNoOfEntriesInCentralDirOnThisDisk(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/EndCentralDirRecord;->totNoOfEntriesInCentralDirOnThisDisk:I

    return-void
.end method

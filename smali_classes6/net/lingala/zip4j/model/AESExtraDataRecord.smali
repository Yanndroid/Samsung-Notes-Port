.class public Lnet/lingala/zip4j/model/AESExtraDataRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aesStrength:I

.field private compressionMethod:I

.field private dataSize:I

.field private signature:J

.field private vendorID:Ljava/lang/String;

.field private versionNumber:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->signature:J

    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->versionNumber:I

    const/4 v1, 0x0

    iput-object v1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    iput v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    return-void
.end method


# virtual methods
.method public getAesStrength()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    return v0
.end method

.method public getCompressionMethod()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    return v0
.end method

.method public getDataSize()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    return v0
.end method

.method public getSignature()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->signature:J

    return-wide v0
.end method

.method public getVendorID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->versionNumber:I

    return v0
.end method

.method public setAesStrength(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->aesStrength:I

    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->compressionMethod:I

    return-void
.end method

.method public setDataSize(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->dataSize:I

    return-void
.end method

.method public setSignature(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->signature:J

    return-void
.end method

.method public setVendorID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->vendorID:Ljava/lang/String;

    return-void
.end method

.method public setVersionNumber(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/AESExtraDataRecord;->versionNumber:I

    return-void
.end method

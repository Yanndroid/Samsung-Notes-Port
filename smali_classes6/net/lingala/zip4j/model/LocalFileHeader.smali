.class public Lnet/lingala/zip4j/model/LocalFileHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

.field private compressedSize:J

.field private compressionMethod:I

.field private crc32:J

.field private crcBuff:[B

.field private dataDescriptorExists:Z

.field private encryptionMethod:I

.field private extraDataRecords:Ljava/util/ArrayList;

.field private extraField:[B

.field private extraFieldLength:I

.field private fileName:Ljava/lang/String;

.field private fileNameLength:I

.field private fileNameUTF8Encoded:Z

.field private generalPurposeFlag:[B

.field private isEncrypted:Z

.field private lastModFileTime:I

.field private offsetStartOfData:J

.field private password:[C

.field private signature:I

.field private uncompressedSize:J

.field private versionNeededToExtract:I

.field private writeComprSizeInZip64ExtraRecord:Z

.field private zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    iput-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    return-void
.end method


# virtual methods
.method public getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-object v0
.end method

.method public getCompressedSize()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressedSize:J

    return-wide v0
.end method

.method public getCompressionMethod()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressionMethod:I

    return v0
.end method

.method public getCrc32()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    return-wide v0
.end method

.method public getCrcBuff()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crcBuff:[B

    return-object v0
.end method

.method public getEncryptionMethod()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    return v0
.end method

.method public getExtraDataRecords()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraDataRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getExtraField()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    return-object v0
.end method

.method public getExtraFieldLength()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraFieldLength:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileNameLength()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameLength:I

    return v0
.end method

.method public getGeneralPurposeFlag()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->generalPurposeFlag:[B

    return-object v0
.end method

.method public getLastModFileTime()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->lastModFileTime:I

    return v0
.end method

.method public getOffsetStartOfData()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    return-wide v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->password:[C

    return-object v0
.end method

.method public getSignature()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->signature:I

    return v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    return-wide v0
.end method

.method public getVersionNeededToExtract()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->versionNeededToExtract:I

    return v0
.end method

.method public getZip64ExtendedInfo()Lnet/lingala/zip4j/model/Zip64ExtendedInfo;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-object v0
.end method

.method public isDataDescriptorExists()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->dataDescriptorExists:Z

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted:Z

    return v0
.end method

.method public isFileNameUTF8Encoded()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameUTF8Encoded:Z

    return v0
.end method

.method public isWriteComprSizeInZip64ExtraRecord()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    return v0
.end method

.method public setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->aesExtraDataRecord:Lnet/lingala/zip4j/model/AESExtraDataRecord;

    return-void
.end method

.method public setCompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressedSize:J

    return-void
.end method

.method public setCompressionMethod(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->compressionMethod:I

    return-void
.end method

.method public setCrc32(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crc32:J

    return-void
.end method

.method public setCrcBuff([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->crcBuff:[B

    return-void
.end method

.method public setDataDescriptorExists(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->dataDescriptorExists:Z

    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->isEncrypted:Z

    return-void
.end method

.method public setEncryptionMethod(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->encryptionMethod:I

    return-void
.end method

.method public setExtraDataRecords(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraDataRecords:Ljava/util/ArrayList;

    return-void
.end method

.method public setExtraField([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraField:[B

    return-void
.end method

.method public setExtraFieldLength(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->extraFieldLength:I

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFileNameLength(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameLength:I

    return-void
.end method

.method public setFileNameUTF8Encoded(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->fileNameUTF8Encoded:Z

    return-void
.end method

.method public setGeneralPurposeFlag([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->generalPurposeFlag:[B

    return-void
.end method

.method public setLastModFileTime(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->lastModFileTime:I

    return-void
.end method

.method public setOffsetStartOfData(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->offsetStartOfData:J

    return-void
.end method

.method public setPassword([C)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->password:[C

    return-void
.end method

.method public setSignature(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->signature:I

    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->uncompressedSize:J

    return-void
.end method

.method public setVersionNeededToExtract(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->versionNeededToExtract:I

    return-void
.end method

.method public setWriteComprSizeInZip64ExtraRecord(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->writeComprSizeInZip64ExtraRecord:Z

    return-void
.end method

.method public setZip64ExtendedInfo(Lnet/lingala/zip4j/model/Zip64ExtendedInfo;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/LocalFileHeader;->zip64ExtendedInfo:Lnet/lingala/zip4j/model/Zip64ExtendedInfo;

    return-void
.end method

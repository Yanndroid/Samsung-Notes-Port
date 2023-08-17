.class public Lnet/lingala/zip4j/io/CipherOutputStream;
.super Lnet/lingala/zip4j/io/BaseOutputStream;
.source "SourceFile"


# instance fields
.field private bytesWrittenForThisFile:J

.field public crc:Ljava/util/zip/CRC32;

.field private encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

.field public fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field public localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field public outputStream:Ljava/io/OutputStream;

.field private pendingBuffer:[B

.field private pendingBufferLength:I

.field private sourceFile:Ljava/io/File;

.field private totalBytesRead:J

.field private totalBytesWritten:J

.field public zipModel:Lnet/lingala/zip4j/model/ZipModel;

.field public zipParameters:Lnet/lingala/zip4j/model/ZipParameters;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 1

    invoke-direct {p0}, Lnet/lingala/zip4j/io/BaseOutputStream;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-direct {p0, p2}, Lnet/lingala/zip4j/io/CipherOutputStream;->initZipModel(Lnet/lingala/zip4j/model/ZipModel;)V

    new-instance p1, Ljava/util/zip/CRC32;

    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    return-void
.end method

.method private createFileHeader()V
    .locals 12

    new-instance v0, Lnet/lingala/zip4j/model/FileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/FileHeader;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const v1, 0x2014b50

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setSignature(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setVersionMadeBy(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setVersionNeededToExtract(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-direct {p0, v2}, Lnet/lingala/zip4j/io/CipherOutputStream;->generateAESExtraDataRecord(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/FileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/FileHeader;->setCompressionMethod(I)V

    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/FileHeader;->setEncrypted(Z)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setEncryptionMethod(I)V

    :cond_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->javaToDosTime(J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileNameInZip is null or empty"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getLastModifiedFileTime(Ljava/io/File;Ljava/util/TimeZone;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->javaToDosTime(J)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->getRootFolderInZip()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getDefaultFolderPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getRelativeFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/FileHeader;->setFileName(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->getEncodedStringLength(Ljava/lang/String;)I

    move-result v4

    :goto_2
    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setFileNameLength(I)V

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v4, v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    check-cast v3, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v3}, Lnet/lingala/zip4j/io/SplitOutputStream;->getCurrSplitFileCounter()I

    move-result v3

    invoke-virtual {v4, v3}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3, v5}, Lnet/lingala/zip4j/model/FileHeader;->setDiskNumberStart(I)V

    :goto_3
    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-direct {p0, v3}, Lnet/lingala/zip4j/io/CipherOutputStream;->getFileAttributes(Ljava/io/File;)I

    move-result v3

    goto :goto_4

    :cond_6
    move v3, v5

    :goto_4
    const/4 v4, 0x4

    new-array v4, v4, [B

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/model/FileHeader;->setExternalFileAttr([B)V

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v3}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "\\"

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v5

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    invoke-virtual {v3, v0}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    goto :goto_6

    :cond_8
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-virtual {v0, v3}, Lnet/lingala/zip4j/model/FileHeader;->setDirectory(Z)V

    :goto_6
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->isDirectory()Z

    move-result v0

    const/16 v3, 0x8

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    goto :goto_a

    :cond_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-static {v0}, Lnet/lingala/zip4j/util/Zip4jUtil;->getFileLengh(Ljava/io/File;)J

    move-result-wide v8

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    const-wide/16 v6, 0xc

    add-long/2addr v6, v8

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v0

    if-eq v0, v2, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    const/16 v0, 0x10

    goto :goto_7

    :cond_b
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    move v0, v3

    :goto_7
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    int-to-long v6, v0

    add-long/2addr v6, v8

    const-wide/16 v10, 0xa

    add-long/2addr v6, v10

    const-wide/16 v10, 0x2

    add-long/2addr v6, v10

    invoke-virtual {v1, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    :goto_8
    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    :goto_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v8, v9}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    :cond_e
    :goto_a
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->getSourceFileCRC()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v0, v6, v7}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    :cond_f
    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v1

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v4}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lnet/lingala/zip4j/io/CipherOutputStream;->generateGeneralPurposeBitArray(ZI)[I

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Raw;->bitArrayToByte([I)B

    move-result v1

    aput-byte v1, v0, v5

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result v1

    const-string v4, "UTF8"

    if-eqz v1, :cond_10

    iget-object v6, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/ZipModel;->getFileNameCharset()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_11

    :cond_10
    if-nez v1, :cond_12

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/lingala/zip4j/util/Zip4jUtil;->detectCharSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    aput-byte v3, v0, v2

    goto :goto_b

    :cond_12
    aput-byte v5, v0, v2

    :goto_b
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1, v0}, Lnet/lingala/zip4j/model/FileHeader;->setGeneralPurposeFlag([B)V

    return-void

    :cond_13
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "fileName is null or empty. unable to create file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createLocalFileHeader()V
    .locals 3

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;-><init>()V

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    const v1, 0x4034b50

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setSignature(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getVersionNeededToExtract()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setVersionNeededToExtract(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressionMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressionMethod(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getLastModFileTime()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setLastModFileTime(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getUncompressedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getFileNameLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileNameLength(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setFileName(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncrypted(Z)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setEncryptionMethod(I)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setAesExtraDataRecord(Lnet/lingala/zip4j/model/AESExtraDataRecord;)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getCrc32()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getCompressedSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/FileHeader;->getGeneralPurposeFlag()[B

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/LocalFileHeader;->setGeneralPurposeFlag([B)V

    return-void

    :cond_0
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "file header is null, cannot create local file header"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private encryptAndWrite([BII)V
    .locals 2

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lnet/lingala/zip4j/crypto/IEncrypter;->encryptData([BII)I
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    add-long/2addr p1, v0

    iput-wide p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    return-void
.end method

.method private generateAESExtraDataRecord(Lnet/lingala/zip4j/model/ZipParameters;)Lnet/lingala/zip4j/model/AESExtraDataRecord;
    .locals 3

    if-eqz p1, :cond_2

    new-instance v0, Lnet/lingala/zip4j/model/AESExtraDataRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/AESExtraDataRecord;-><init>()V

    const-wide/32 v1, 0x9901

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setSignature(J)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setDataSize(I)V

    const-string v1, "AE"

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVendorID(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setVersionNumber(I)V

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setAesStrength(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getCompressionMethod()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->setCompressionMethod(I)V

    return-object v0

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid AES key strength, cannot generate AES Extra data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "zip parameters are null, cannot generate AES Extra Data record"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private generateGeneralPurposeBitArray(ZI)[I
    .locals 4

    const/16 v0, 0x8

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    aput v2, v1, v3

    goto :goto_0

    :cond_0
    aput v3, v1, v3

    :goto_0
    if-eq p2, v0, :cond_1

    aput v3, v1, v2

    const/4 p1, 0x2

    aput v3, v1, p1

    :cond_1
    const/4 p1, 0x3

    aput v2, v1, p1

    return-object v1
.end method

.method private getFileAttributes(Ljava/io/File;)I
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x12

    return p1

    :cond_1
    const/16 p1, 0x10

    return p1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    return p1

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x2

    return p1

    :cond_5
    return v1

    :cond_6
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "input file is null, cannot get file attributes"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initEncrypter()V
    .locals 4

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    return-void

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x63

    if-ne v0, v1, :cond_1

    new-instance v0, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/ZipParameters;->getAesKeyStrength()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/AESEncrpyter;-><init>([CI)V

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid encprytion method"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v1}, Lnet/lingala/zip4j/model/ZipParameters;->getPassword()[C

    move-result-object v1

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v2}, Lnet/lingala/zip4j/model/LocalFileHeader;->getLastModFileTime()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    invoke-direct {v0, v1, v2}, Lnet/lingala/zip4j/crypto/StandardEncrypter;-><init>([CI)V

    :goto_0
    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    return-void
.end method

.method private initZipModel(Lnet/lingala/zip4j/model/ZipModel;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Lnet/lingala/zip4j/model/ZipModel;

    invoke-direct {p1}, Lnet/lingala/zip4j/model/ZipModel;-><init>()V

    :cond_0
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v0, Lnet/lingala/zip4j/model/EndCentralDirRecord;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/EndCentralDirRecord;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V

    :cond_1
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v0, Lnet/lingala/zip4j/model/CentralDirectory;

    invoke-direct {v0}, Lnet/lingala/zip4j/model/CentralDirectory;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V

    :cond_2
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/CentralDirectory;->setFileHeaders(Ljava/util/ArrayList;)V

    :cond_3
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getLocalFileHeaderList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setLocalFileHeaderList(Ljava/util/List;)V

    :cond_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v0, p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_5

    check-cast p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->isSplitZipFile()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipModel;->setSplitArchive(Z)V

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {v0}, Lnet/lingala/zip4j/io/SplitOutputStream;->getSplitLength()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/ZipModel;->setSplitLength(J)V

    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object p1

    const-wide/32 v0, 0x6054b50

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setSignature(J)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    :cond_0
    return-void
.end method

.method public closeEntry()V
    .locals 8

    iget v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    iput v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    instance-of v2, v0, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    check-cast v0, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {v0}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->getFinalMac()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/lingala/zip4j/exception/ZipException;

    const-string v1, "invalid encrypter for AES encrypted file"

    invoke-direct {v0, v1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCompressedSize(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setUncompressedSize(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/LocalFileHeader;->getUncompressedSize()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setUncompressedSize(J)V

    :cond_3
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->isEncrypted()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/FileHeader;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v1, :cond_4

    move-wide v2, v4

    :cond_4
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0, v4, v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setCrc32(J)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v0, v2, v3}, Lnet/lingala/zip4j/model/LocalFileHeader;->setCrc32(J)V

    :goto_1
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getLocalFileHeaderList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object v0

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    iget-wide v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v6, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v3, v6}, Lnet/lingala/zip4j/core/HeaderWriter;->writeExtendedLocalHeader(Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v1, v6

    iput-wide v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    iput-wide v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    iput-wide v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    return-void
.end method

.method public decrementCompressedFileSize(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    :cond_1
    return-void
.end method

.method public finish()V
    .locals 3

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipModel;->getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;

    move-result-object v0

    iget-wide v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/EndCentralDirRecord;->setOffsetOfStartOfCentralDir(J)V

    new-instance v0, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {v0}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/core/HeaderWriter;->finalizeZipFile(Lnet/lingala/zip4j/model/ZipModel;Ljava/io/OutputStream;)V

    return-void
.end method

.method public getSourceFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    return-object v0
.end method

.method public putNextEntry(Ljava/io/File;Lnet/lingala/zip4j/model/ZipParameters;)V
    .locals 5

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file is null"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->checkFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input file does not exist"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    :try_start_0
    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lingala/zip4j/model/ZipParameters;

    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->isSourceExternalStream()Z

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    :goto_2
    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setCompressionMethod(I)V

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/lingala/zip4j/util/Zip4jUtil;->isStringNotNullAndNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->getFileNameInZip()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\\"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v1}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptFiles(Z)V

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1, v0}, Lnet/lingala/zip4j/model/ZipParameters;->setEncryptionMethod(I)V

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    goto :goto_2

    :cond_6
    :goto_3
    invoke-direct {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->createFileHeader()V

    invoke-direct {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->createLocalFileHeader()V

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->isSplitArchive()Z

    move-result p1

    const-wide/16 v2, 0x4

    if-eqz p1, :cond_8

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipModel;->getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;

    move-result-object p1

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/CentralDirectory;->getFileHeaders()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_8

    :cond_7
    const/4 p1, 0x4

    new-array p1, p1, [B

    const v0, 0x8074b50

    invoke-static {p1, v1, v0}, Lnet/lingala/zip4j/util/Raw;->writeIntLittleEndian([BII)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    :cond_8
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v0, p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    :goto_4
    invoke-virtual {p1, v2, v3}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    check-cast p1, Lnet/lingala/zip4j/io/SplitOutputStream;

    invoke-virtual {p1}, Lnet/lingala/zip4j/io/SplitOutputStream;->getFilePointer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    goto :goto_5

    :cond_a
    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_b

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {p1, v0, v1}, Lnet/lingala/zip4j/model/FileHeader;->setOffsetLocalHeader(J)V

    :goto_5
    new-instance p1, Lnet/lingala/zip4j/core/HeaderWriter;

    invoke-direct {p1}, Lnet/lingala/zip4j/core/HeaderWriter;-><init>()V

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipModel:Lnet/lingala/zip4j/model/ZipModel;

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    iget-object v4, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, v2, v3, v4}, Lnet/lingala/zip4j/core/HeaderWriter;->writeLocalFileHeader(Lnet/lingala/zip4j/model/ZipModel;Lnet/lingala/zip4j/model/LocalFileHeader;Ljava/io/OutputStream;)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {p1}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lnet/lingala/zip4j/io/CipherOutputStream;->initEncrypter()V

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast p1, Lnet/lingala/zip4j/crypto/StandardEncrypter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->getHeaderBytes()[B

    move-result-object p1

    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    array-length p2, p1

    int-to-long v2, p2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    array-length p1, p1

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    goto :goto_6

    :cond_c
    invoke-virtual {p2}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result p1

    const/16 p2, 0x63

    if-ne p1, p2, :cond_d

    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast p1, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {p1}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->getSaltBytes()[B

    move-result-object p1

    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->encrypter:Lnet/lingala/zip4j/crypto/IEncrypter;

    check-cast p2, Lnet/lingala/zip4j/crypto/AESEncrpyter;

    invoke-virtual {p2}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->getDerivedPasswordVerifier()[B

    move-result-object p2

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesWritten:J

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    int-to-long p1, p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->bytesWrittenForThisFile:J

    :cond_d
    :goto_6
    iget-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p1}, Ljava/util/zip/CRC32;->reset()V

    return-void

    :cond_e
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "file name is empty for external stream"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    new-instance p2, Lnet/lingala/zip4j/exception/ZipException;

    invoke-direct {p2, p1}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setSourceFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->sourceFile:Ljava/io/File;

    return-void
.end method

.method public updateTotalBytesRead(I)V
    .locals 4

    if-lez p1, :cond_0

    iget-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->totalBytesRead:J

    :cond_0
    return-void
.end method

.method public write(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/CipherOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->isEncryptFiles()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->zipParameters:Lnet/lingala/zip4j/model/ZipParameters;

    invoke-virtual {v0}, Lnet/lingala/zip4j/model/ZipParameters;->getEncryptionMethod()I

    move-result v0

    const/16 v1, 0x63

    if-ne v0, v1, :cond_3

    iget v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    rsub-int/lit8 v2, v0, 0x10

    if-lt p3, v2, :cond_1

    iget-object v2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    rsub-int/lit8 v3, v0, 0x10

    invoke-static {p1, p2, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    array-length v0, p2

    invoke-direct {p0, p2, v1, v0}, Lnet/lingala/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    iget p2, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    rsub-int/lit8 p2, p2, 0x10

    sub-int/2addr p3, p2

    iput v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    add-int/2addr p1, p3

    iput p1, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    return-void

    :cond_2
    :goto_0
    if-eqz p3, :cond_3

    rem-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_3

    add-int v2, p3, p2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBuffer:[B

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Lnet/lingala/zip4j/io/CipherOutputStream;->pendingBufferLength:I

    sub-int/2addr p3, v0

    :cond_3
    if-eqz p3, :cond_4

    invoke-direct {p0, p1, p2, p3}, Lnet/lingala/zip4j/io/CipherOutputStream;->encryptAndWrite([BII)V

    :cond_4
    return-void
.end method

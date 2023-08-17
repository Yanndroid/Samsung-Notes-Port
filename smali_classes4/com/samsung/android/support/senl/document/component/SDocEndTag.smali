.class public Lcom/samsung/android/support/senl/document/component/SDocEndTag;
.super Lcom/samsung/android/support/senl/document/component/SDocComponent;
.source "SourceFile"


# static fields
.field public static final DATA_FILE_NAME_END_TAG:Ljava/lang/String; = "endtag.dat"

.field private static final FIELD_FLAG_DOCUMENT_TYPE:I = 0x2

.field private static final FIELD_FLAG_ENCRYPTION_INFO:I = 0x1

.field private static final FIELD_FLAG_REMINDER_DATA:I = 0x4

.field private static final MINIMUM_FORMAT_VERSION:I = 0xc

.field private static final PROPERTY_FLAG_FAVORITE:I = 0x2

.field private static final PROPERTY_FLAG_LOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SDocEndTag"


# instance fields
.field private mCreatedTime:J

.field private mDocumentType:I

.field private mEncryptionIv:[B

.field private mEncryptionKey:[B

.field private mEncryptionSalt:[B

.field private mEncryptionSize:I

.field private mFavoriteFlag:Z

.field private mFieldCheckFlag:I

.field private mFilePath:Ljava/lang/String;

.field private mFileRevision:I

.field private mMinimumFormatVersion:I

.field private mModifiedTime:J

.field private mPropertyFlag:I

.field private mReminderDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ReminderData;",
            ">;"
        }
    .end annotation
.end field

.field private mSetCreatedTime:Z

.field private mSetModifiedTime:Z

.field private mSizeOfEndTag:I

.field private mStartPosition:J

.field private mTitle:Ljava/lang/String;

.field private mUncompressedSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetModifiedTime:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetCreatedTime:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSizeOfEndTag:I

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mPropertyFlag:I

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    iput-wide v2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mModifiedTime:J

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mMinimumFormatVersion:I

    iput-wide v2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mCreatedTime:J

    iput-wide v2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mUncompressedSize:J

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mTitle:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFavoriteFlag:Z

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSize:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "endtag.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private getFieldCheckFlag()I
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    :cond_2
    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    return v0
.end method

.method private getPropertyFlag()I
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mPropertyFlag:I

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFavoriteFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mPropertyFlag:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mPropertyFlag:I

    return v0
.end method

.method public static makeFile([BILjava/lang/String;)V
    .locals 7

    add-int/lit8 v0, p1, -0x19

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_0

    aget-byte v3, p0, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Document for SAMSUNG Note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v0, 0x400

    add-int/lit16 v1, p1, -0x400

    const/4 v3, 0x0

    if-gez v1, :cond_1

    add-int/lit16 v0, v1, 0x400

    :goto_1
    move v1, v3

    :cond_1
    const/4 v4, -0x1

    if-le v1, v4, :cond_4

    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v5, p0, v1, v0, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v4, :cond_2

    add-int/2addr v1, v5

    move v0, v1

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    move v0, v4

    goto :goto_2

    :cond_3
    sub-int/2addr v1, v0

    if-gez v1, :cond_1

    add-int/2addr v0, v1

    goto :goto_1

    :cond_4
    move v0, v3

    :goto_2
    if-ltz v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;

    const-string p1, "Fail to load sdoc file. It is invalid file type."

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    add-int/lit8 v1, v0, -0x4

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v3, v1, 0x2

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    sub-int/2addr v0, v1

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sub-int/2addr p1, v0

    :try_start_0
    invoke-virtual {v1, p0, v0, p1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw p0
.end method

.method private parse(Ljava/io/RandomAccessFile;Z)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse() - check ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SDocEndTag"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSizeOfEndTag:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_b

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mPropertyFlag:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iput v5, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    :cond_0
    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iput-boolean v5, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFavoriteFlag:Z

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFavoriteFlag:Z

    :goto_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mModifiedTime:J

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mMinimumFormatVersion:I

    if-ne p2, v5, :cond_2

    const/16 p2, 0x12

    if-ge p2, v3, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse() - current code version[18] can not support this file["

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mMinimumFormatVersion:I

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget p2, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/16 v3, 0x8

    if-lt p2, v3, :cond_3

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mCreatedTime:J

    :cond_3
    iget p2, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/16 v3, 0x9

    if-lt p2, v3, :cond_4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mUncompressedSize:J

    :cond_4
    iget p2, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/16 v3, 0xb

    if-lt p2, v3, :cond_5

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mTitle:Ljava/lang/String;

    :cond_5
    iget-wide v6, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    int-to-long v8, v0

    add-long/2addr v6, v8

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    and-int/2addr p2, v5

    if-eqz p2, :cond_8

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSize:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const-string v3, "], actually ["

    if-eq v0, p2, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFile() - E1 read fail. expected ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, p2, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFile() - E2 read fail. expected ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, p2, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFile() - E3 read fail. expected ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_9

    add-int/2addr p2, v5

    iput p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    :cond_9
    iget p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFieldCheckFlag:I

    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_a

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    :goto_1
    if-ge v4, p2, :cond_a

    new-instance v0, Lcom/samsung/android/support/senl/document/data/ReminderData;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/data/ReminderData;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/support/senl/document/data/ReminderData;->reminderUuid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/samsung/android/support/senl/document/data/ReminderData;->time:J

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v0, v1

    add-long/2addr v5, v0

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    const-string p1, "readFile() end"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported format version["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private searchStringOfFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J
    .locals 12

    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    new-array v4, v3, [B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    int-to-long v7, v3

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    move-wide v5, v7

    :cond_0
    :goto_0
    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v9, 0x0

    invoke-virtual {p1, v4, v9, v3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v9

    const/4 v10, -0x1

    if-le v9, v10, :cond_4

    new-instance v9, Ljava/lang/String;

    sget-object v11, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v9, v4, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v9, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v9, v10, :cond_2

    cmp-long p1, v5, v7

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v7, v5

    :goto_1
    int-to-long p1, v9

    add-long v0, v7, p1

    goto :goto_2

    :cond_2
    cmp-long v9, v5, v7

    if-gtz v9, :cond_3

    goto :goto_2

    :cond_3
    rsub-int v9, v2, 0x400

    add-int/lit8 v9, v9, 0x1

    int-to-long v9, v9

    sub-long/2addr v5, v9

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    move-wide v5, v7

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchStringofFile()"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDocEndTag"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-wide v0
.end method

.method private writeBytes(Ljava/io/RandomAccessFile;)V
    .locals 9

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getPropertyFlag()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->getFieldCheckFlag()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetModifiedTime:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetModifiedTime:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mModifiedTime:J

    :goto_0
    iget-wide v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mModifiedTime:J

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-boolean v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetCreatedTime:Z

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    if-le v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mModifiedTime:J

    iput-wide v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mCreatedTime:J

    goto :goto_2

    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetCreatedTime:Z

    :goto_2
    iget-wide v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mCreatedTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-wide v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mUncompressedSize:J

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSize:I

    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_3
    iget v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    if-eqz v3, :cond_4

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/document/data/ReminderData;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/ReminderData;->reminderUuid:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-wide v7, v4, Lcom/samsung/android/support/senl/document/data/ReminderData;->time:J

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v4, v7, v5

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-string v0, "Document for SAMSUNG Note"

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSizeOfEndTag:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    long-to-int v0, v1

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public changeCacheDir(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SDocEndTag"

    const-string v0, "changeCacheDir() - newPath is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "endtag.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mCreatedTime:J

    return-wide v0
.end method

.method public getDocumentType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    return v0
.end method

.method public getEncryptionIv()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    return-object v0
.end method

.method public getEncryptionKey()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    return-object v0
.end method

.method public getEncryptionSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    return-object v0
.end method

.method public getEncryptionSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSize:I

    return v0
.end method

.method public getFileNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFileRevision()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    return v0
.end method

.method public getMinimumFormatVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mMinimumFormatVersion:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mModifiedTime:J

    return-wide v0
.end method

.method public getReminderData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ReminderData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReminderData() start! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getCurrentFormatVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocEndTag"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSizeOfEndTag:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mUncompressedSize:J

    return-wide v0
.end method

.method public increaseFileRevision()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public isEncrypted()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFavorite()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFavoriteFlag:Z

    return v0
.end method

.method public parse(Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "Document for SAMSUNG Note"

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x19

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->searchStringOfFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;

    const-string p2, "Fail to load sdoc file. It is invalid file type."

    invoke-direct {p1, p2}, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, v4

    :goto_1
    const-wide/16 v4, 0x4

    sub-long v4, v2, v4

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    int-to-long v4, p1

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->parse(Ljava/io/RandomAccessFile;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public readFile()V
    .locals 5

    const-string v0, "SDocEndTag"

    const-string v1, "readFile() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFilePath:Ljava/lang/String;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x19

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x19

    if-ge v2, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Document for SAMSUNG Note"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->parse(Ljava/io/RandomAccessFile;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Fail to load end tag data file. It is invalid."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    throw v1
.end method

.method public removeEncryptionInfo()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    return-void
.end method

.method public resetFileRevision()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFileRevision:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public resetStartPosition(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Document for SAMSUNG Note"

    const-string v1, "SDocEndTag"

    const-string v2, "resetStartPosition() start"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x19

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x19

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v4

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->searchStringOfFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;

    const-string v0, "Fail to load sdoc file. It is invalid file type."

    invoke-direct {p1, v0}, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    sub-long/2addr v3, v5

    :goto_1
    const-wide/16 v5, 0x4

    sub-long v5, v3, v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    int-to-long v5, p1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const-string p1, "resetStartPosition() end"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public setCreatedTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetCreatedTime:Z

    iput-wide p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mCreatedTime:J

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setDocumentType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mDocumentType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setEncryptionInfo(I[B[B[B)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSize:I

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionSalt:[B

    iput-object p3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionIv:[B

    iput-object p4, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mEncryptionKey:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setFavorite(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFavoriteFlag:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFavoriteFlag:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setModifiedTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mSetModifiedTime:Z

    iput-wide p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mModifiedTime:J

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setReminderData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ReminderData;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setReminderData() start! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->getCurrentFormatVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocEndTag"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mReminderDataSet:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SDocEndTag"

    const-string v1, "setTitle() start!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mTitle:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setUncompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mUncompressedSize:J

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 6

    const-string v0, "SDocEndTag"

    const-string v1, "update() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->writeBytes(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const-string p1, "update() end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public writeBytes(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "SDocEndTag"

    const-string v1, "writeBytes() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->writeBytes(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const-string p1, "writeBytes() end"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public writeFile()V
    .locals 5

    const-string v0, "SDocEndTag"

    const-string v1, "writeFile() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->mStartPosition:J

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/support/senl/document/component/SDocEndTag;->writeBytes(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const-string v1, "writeFile() end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

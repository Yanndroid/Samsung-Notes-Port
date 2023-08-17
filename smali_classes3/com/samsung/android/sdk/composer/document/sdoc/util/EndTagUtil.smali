.class public Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;
.super Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;
.source "SourceFile"


# static fields
.field public static final DATA_FILE_NAME_END_TAG:Ljava/lang/String; = "endtag.dat"

.field private static final FIELD_FLAG_DOCUMENT_TYPE:I = 0x2

.field private static final FIELD_FLAG_ENCRYPTION_INFO:I = 0x1

.field private static final FIELD_FLAG_REMINDER_DATA:I = 0x4

.field private static final FIELD_FLAG_TITLE_SPAN:I = 0x10

.field private static final FIELD_FLAG_TITLE_SPAN_INVALID:I = 0x8

.field private static final MINIMUM_FORMAT_VERSION:I = 0x13

.field private static final OS_TYPE_ANDROID:I = 0x1

.field private static final OS_TYPE_UWP:I = 0x2

.field private static final OS_TYPE_WIN32:I = 0x0

.field private static final PROPERTY_FLAG_FAVORITE:I = 0x2

.field private static final PROPERTY_FLAG_LOCK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SDocEndTag"


# instance fields
.field private mAppVersion:Ljava/lang/String;

.field private mCreatedTime:J

.field private mDocumentType:I

.field private mEncryptionIv:[B

.field private mEncryptionKey:[B

.field private mEncryptionSalt:[B

.field private mEncryptionSize:I

.field private mFavoriteFlag:Z

.field private mFieldCheckFlag:I

.field private mFileCreatedTime:J

.field private mFileModifiedTime:J

.field private mFilePath:Ljava/lang/String;

.field private mFileRevision:I

.field private mMadeOsType:I

.field private mMinimumFormatVersion:I

.field private mModifiedTime:J

.field private mPropertyFlag:I

.field private mReminderDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;",
            ">;"
        }
    .end annotation
.end field

.field private mSetCreatedTime:Z

.field private mSetFileModifiedTime:Z

.field private mSetModifiedTime:Z

.field private mSizeOfEndTag:I

.field private mStartPosition:J

.field private mTitle:Ljava/lang/String;

.field private mTitleAlignment:I

.field private mTitleSpanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mUncompressedSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetModifiedTime:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetCreatedTime:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetFileModifiedTime:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFavoriteFlag:Z

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSizeOfEndTag:I

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mPropertyFlag:I

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileRevision:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mModifiedTime:J

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mMinimumFormatVersion:I

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mCreatedTime:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mUncompressedSize:J

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitle:Ljava/lang/String;

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileCreatedTime:J

    iput-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileModifiedTime:J

    const/4 v2, 0x1

    iput v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mMadeOsType:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleAlignment:I

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mAppVersion:Ljava/lang/String;

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSize:I

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    iput v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "endtag.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method private getFieldCheckFlag()I
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    :cond_3
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    return v0
.end method

.method private getPropertyFlag()I
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mPropertyFlag:I

    iget-boolean v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFavoriteFlag:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mPropertyFlag:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mPropertyFlag:I

    return v0
.end method

.method private isSameSpanInList(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->isSame(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
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
    new-instance p0, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;

    const-string p1, "Fail to load sdoc file. It is invalid file type."

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;-><init>(Ljava/lang/String;)V

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
    .locals 8

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

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSizeOfEndTag:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/4 v3, 0x6

    if-lt v0, v3, :cond_f

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mPropertyFlag:I

    and-int/lit8 v4, v3, 0x1

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    iput v5, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    :cond_0
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFavoriteFlag:Z

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileRevision:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mModifiedTime:J

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mMinimumFormatVersion:I

    const/16 v4, 0x1f

    if-ne p2, v5, :cond_3

    if-lt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current code version[31] can not support this file["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mMinimumFormatVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedVersionException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/16 v3, 0x8

    if-lt p2, v3, :cond_4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mCreatedTime:J

    :cond_4
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/16 v3, 0x9

    if-lt p2, v3, :cond_5

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mUncompressedSize:J

    :cond_5
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/16 v3, 0xb

    if-lt p2, v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitle:Ljava/lang/String;

    :cond_6
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/16 v3, 0x18

    if-lt p2, v3, :cond_7

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileCreatedTime:J

    :cond_7
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    if-lt p2, v3, :cond_8

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileModifiedTime:J

    :cond_8
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/16 v3, 0x1a

    if-lt p2, v3, :cond_9

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mMadeOsType:I

    :cond_9
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/16 v3, 0x1e

    if-lt p2, v3, :cond_a

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleAlignment:I

    :cond_a
    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    if-lt p2, v4, :cond_b

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mAppVersion:Ljava/lang/String;

    :cond_b
    iget-wide v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    int-to-long v6, v0

    add-long/2addr v3, v6

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    and-int/2addr p2, v5

    if-eqz p2, :cond_e

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    iput p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSize:I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const-string v3, "], actually ["

    if-eq v0, p2, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile() - E1 read fail. expected ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, p2, :cond_d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile() - E2 read fail. expected ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, p2, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile() - E3 read fail. expected ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->readDocumentType(Ljava/io/RandomAccessFile;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->readReminderData(Ljava/io/RandomAccessFile;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->readTitleSpanData(Ljava/io/RandomAccessFile;)V

    const-string p1, "readFile() end"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported format version["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private readDocumentType(Ljava/io/RandomAccessFile;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mCurrentFormatVersion:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    :cond_0
    return-void
.end method

.method private readReminderData(Ljava/io/RandomAccessFile;)V
    .locals 8

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;

    invoke-direct {v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;-><init>()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v5

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;->reminderUuid:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;->time:J

    iget-object v6, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readTitleSpanData(Ljava/io/RandomAccessFile;)V
    .locals 6

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFieldCheckFlag:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFile() titleSpan count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDocEndTag"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFile() titleSpan type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-direct {v4, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;-><init>(I)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->readBinary(Ljava/io/RandomAccessFile;)Z

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
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

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-wide v0
.end method

.method private writeBytes(Ljava/io/RandomAccessFile;)V
    .locals 9

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getPropertyFlag()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->getFieldCheckFlag()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileRevision:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetModifiedTime:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetModifiedTime:Z

    goto :goto_0

    :cond_0
    iput-wide v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mModifiedTime:J

    :goto_0
    iget-wide v5, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mModifiedTime:J

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    const/16 v3, 0x13

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-boolean v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetCreatedTime:Z

    const-wide/16 v5, 0x0

    if-ne v3, v4, :cond_1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetCreatedTime:Z

    goto :goto_1

    :cond_1
    iget-wide v7, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mCreatedTime:J

    cmp-long v3, v7, v5

    if-gtz v3, :cond_2

    iput-wide v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mCreatedTime:J

    :cond_2
    :goto_1
    iget-wide v7, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mCreatedTime:J

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-wide v7, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mUncompressedSize:J

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileCreatedTime:J

    cmp-long v3, v7, v5

    if-gtz v3, :cond_3

    iput-wide v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileCreatedTime:J

    :cond_3
    iget-wide v5, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileCreatedTime:J

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-boolean v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetFileModifiedTime:Z

    if-ne v3, v4, :cond_4

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetFileModifiedTime:Z

    goto :goto_2

    :cond_4
    iput-wide v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileModifiedTime:J

    :goto_2
    iget-wide v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileModifiedTime:J

    invoke-virtual {p1, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mMadeOsType:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleAlignment:I

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mAppVersion:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSize:I

    if-lez v3, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    if-eqz v4, :cond_5

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    array-length v3, v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->write([B)V

    :cond_5
    iget v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    if-eqz v3, :cond_6

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v7, v4, Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;->reminderUuid:Ljava/lang/String;

    invoke-virtual {p0, p1, v7}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-wide v7, v4, Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;->time:J

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->writeLong(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v4, v7, v5

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeFile() titleSpanSize : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SDocEndTag"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v7

    const/16 v8, 0x12

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v7

    const/16 v8, 0x11

    if-eq v7, v8, :cond_8

    invoke-virtual {v6}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v7

    const/16 v8, 0x14

    if-ne v7, v8, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {v6}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getBinarySize()I

    move-result v7

    if-lez v7, :cond_8

    invoke-virtual {p1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v6, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->writeBinary(Ljava/io/RandomAccessFile;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_b
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const-string v0, "Document for SAMSUNG Note"

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    invoke-virtual {p1, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSizeOfEndTag:I

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    const/16 v0, 0x1f

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

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

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

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public getCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mCreatedTime:J

    return-wide v0
.end method

.method public getDocumentType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    return v0
.end method

.method public getEncryptionIv()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    return-object v0
.end method

.method public getEncryptionKey()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    return-object v0
.end method

.method public getEncryptionSalt()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    return-object v0
.end method

.method public getEncryptionSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSize:I

    return v0
.end method

.method public getFileCreatedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileCreatedTime:J

    return-wide v0
.end method

.method public getFileModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileModifiedTime:J

    return-wide v0
.end method

.method public getFileNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getFileRevision()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileRevision:I

    return v0
.end method

.method public getMinimumFormatVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mMinimumFormatVersion:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mModifiedTime:J

    return-wide v0
.end method

.method public getReminderData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReminderData() start! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->getCurrentFormatVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocEndTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSizeOfEndTag:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleAlignment()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleAlignment:I

    return v0
.end method

.method public getTitleSpan()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getUncompressedSize()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mUncompressedSize:J

    return-wide v0
.end method

.method public increaseFileRevision()V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileRevision:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileRevision:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public isEncrypted()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSize:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

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

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFavoriteFlag:Z

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

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->searchStringOfFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;

    const-string p2, "Fail to load sdoc file. It is invalid file type."

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;-><init>(Ljava/lang/String;)V

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

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/io/RandomAccessFile;Z)V
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFilePath:Ljava/lang/String;

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

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->parse(Ljava/io/RandomAccessFile;Z)V
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

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    iput-object v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    return-void
.end method

.method public resetFileRevision()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileRevision:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public resetStartPosition(Ljava/lang/String;)V
    .locals 7

    const-string v0, "Document for SAMSUNG Note"

    const-string v1, "SDocEndTag"

    const-string v2, "resetStartPosition() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->searchStringOfFile(Ljava/io/RandomAccessFile;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;

    const-string v0, "Fail to load sdoc file. It is invalid file type."

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenSDocUnsupportedFileException;-><init>(Ljava/lang/String;)V

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

    iput-wide v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const-string p1, "resetStartPosition() end"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetCreatedTime:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mCreatedTime:J

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public setDocumentType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mDocumentType:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public setEncryptionInfo(I[B[B[B)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSize:I

    iput-object p2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionSalt:[B

    iput-object p3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionIv:[B

    iput-object p4, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mEncryptionKey:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public setFavorite(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFavoriteFlag:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFavoriteFlag:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public setFileModifiedTime(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetFileModifiedTime:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFileModifiedTime:J

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

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

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mSetModifiedTime:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mModifiedTime:J

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public setReminderData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/util/ReminderDataUtil;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setReminderData() start! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->getCurrentFormatVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SDocEndTag"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mReminderDataSet:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SDocEndTag"

    const-string/jumbo v1, "setTitle() start!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitle:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return-void
.end method

.method public setTitleAlignment(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleAlignment:I

    return-void
.end method

.method public setTitleSpan(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-direct {p0, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->isSameSpanInList(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v1, v3, :cond_5

    return v0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v3, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getType()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;-><init>(I)V

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->copy(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;)Z

    iget-object v1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mTitleSpanList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iput-boolean v0, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/ComponentUtil;->mIsChanged:Z

    return v0
.end method

.method public setUncompressedSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mUncompressedSize:J

    return-void
.end method

.method public update(Ljava/lang/String;)V
    .locals 6

    const-string v0, "SDocEndTag"

    const-string/jumbo v1, "update() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    :cond_0
    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->writeBytes(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const-string/jumbo p1, "update() end"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public writeBytes(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "SDocEndTag"

    const-string/jumbo v1, "writeBytes() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    iput-wide p1, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    :try_start_0
    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->writeBytes(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const-string/jumbo p1, "writeBytes() end"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw p1
.end method

.method public writeFile()V
    .locals 5

    const-string v0, "SDocEndTag"

    const-string/jumbo v1, "writeFile() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->mStartPosition:J

    :try_start_0
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/composer/document/sdoc/util/EndTagUtil;->writeBytes(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    const-string/jumbo v1, "writeFile() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

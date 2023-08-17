.class public abstract Lcom/samsung/android/support/senl/document/component/SDocComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BASE_FORMAT_VERSION:I = 0x6

.field public static final END_FILE_TAG_DATA:Ljava/lang/String; = "EOF"

.field public static final END_FILE_TAG_DATA_SIZE:I = 0x3

.field public static final END_FILE_TAG_SDOC:Ljava/lang/String; = "Document for SAMSUNG Note"

.field public static final END_FILE_TAG_SDOC_SIZE:I = 0x19

.field public static final FORMAT_VERSION:I = 0x12

.field private static final TAG:Ljava/lang/String; = "SDocComponent"


# instance fields
.field public mCurrentFormatVersion:I

.field public mIsChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    iput v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    return-void
.end method


# virtual methods
.method public abstract changeCacheDir(Ljava/lang/String;)V
.end method

.method public getCurrentFormatVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    return v0
.end method

.method public abstract getFileNames()[Ljava/lang/String;
.end method

.method public isChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return v0
.end method

.method public abstract readFile()V
.end method

.method public readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    const/16 v2, 0x402

    new-array v2, v2, [B

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v4, 0x2

    mul-int/2addr v0, v4

    :goto_0
    const/16 v5, 0x400

    const/4 v6, 0x0

    if-le v0, v5, :cond_1

    invoke-virtual {p1, v2, v6, v5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v7

    add-int/lit16 v0, v0, -0x400

    const/16 v8, 0x3fe

    aget-byte v8, v2, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/2addr v8, v4

    const/16 v9, 0x36

    if-ne v8, v9, :cond_0

    if-lt v0, v4, :cond_0

    invoke-virtual {p1, v2, v5, v4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v5

    add-int/2addr v7, v5

    sub-int/2addr v0, v5

    :cond_0
    new-instance v5, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-lez v0, :cond_3

    invoke-virtual {p1, v2, v6, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    new-instance v0, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v6, p1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    move-object v3, v1

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public resetIsChanged()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public abstract writeFile()V
.end method

.method public writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-lez v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

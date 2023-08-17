.class public Lcom/samsung/android/support/senl/document/component/SDocDocument;
.super Lcom/samsung/android/support/senl/document/component/SDocComponent;
.source "SourceFile"


# static fields
.field private static final DATA_FILE_NAME_DOCUMENT:Ljava/lang/String; = "doc.dat"

.field private static final FLEXIBLE_EXTRADATA_BYTE_ARR:I = 0x4

.field private static final FLEXIBLE_EXTRADATA_INT:I = 0x1

.field private static final FLEXIBLE_EXTRADATA_REMINDER:I = 0x8

.field private static final FLEXIBLE_EXTRADATA_STR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDocDocument"


# instance fields
.field private mByteArrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mCursorPosition:I

.field private mDBVersion:I

.field private mFilePath:Ljava/lang/String;

.field private mIntMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mStrMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mFilePath:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mPropertyFlag:I

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mCursorPosition:I

    iput v1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mDBVersion:I

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mReminderDataSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "doc.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mFilePath:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    return-void
.end method

.method private getFieldCheckFlag()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    return v0
.end method

.method private readExtraData(Ljava/io/RandomAccessFile;I)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v1

    :goto_1
    if-ge v5, v3, :cond_0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_7

    :cond_1
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v5, v1

    :goto_3
    if-ge v5, v3, :cond_2

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p2

    move v0, v1

    :goto_4
    if-ge v0, p2, :cond_6

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    :goto_5
    if-ge v4, v2, :cond_4

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readChar()C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    new-array v4, v2, [B

    move v5, v1

    :goto_6
    if-ge v5, v2, :cond_5

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v6

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :goto_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Read Extra Data!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDocDocument"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private writeExtraData(Ljava/io/RandomAccessFile;I)V
    .locals 4

    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeChars(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, v0

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    array-length v1, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-byte v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Write Extra Data!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SDocDocument"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public changeCacheDir(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SDocDocument"

    const-string v0, "changeCacheDir() - newPath is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "doc.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public getCursorPosition()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mCursorPosition:I

    return v0
.end method

.method public getDBVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mDBVersion:I

    return v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getFileNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getPropertyFlag()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mPropertyFlag:I

    return v0
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

    const-string v1, "SDocDocument"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mReminderDataSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFile()V
    .locals 13

    const-string v0, "SDocDocument"

    const-string v1, "readFile() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mReminderDataSet:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mFilePath:Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EOF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    iput v7, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mPropertyFlag:I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mCursorPosition:I

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    iput v8, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mDBVersion:I

    int-to-long v8, v6

    add-long/2addr v8, v4

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-direct {p0, v1, v7}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->readExtraData(Ljava/io/RandomAccessFile;I)V

    iget v6, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/16 v8, 0xf

    if-ge v6, v8, :cond_1

    const/16 v6, 0x8

    and-int/2addr v7, v6

    if-ne v7, v6, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    :goto_1
    if-ge v3, v6, :cond_1

    new-instance v7, Lcom/samsung/android/support/senl/document/data/ReminderData;

    invoke-direct {v7}, Lcom/samsung/android/support/senl/document/data/ReminderData;-><init>()V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v7, Lcom/samsung/android/support/senl/document/data/ReminderData;->reminderUuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v11

    iput-wide v11, v7, Lcom/samsung/android/support/senl/document/data/ReminderData;->time:J

    iget-object v11, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mReminderDataSet:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v10, v10

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    int-to-long v2, v2

    add-long/2addr v4, v2

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const-string v1, "readFile() end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    new-instance v0, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported format version["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Fail to load document data file. It is invalid."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public setCursorPosition(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mCursorPosition:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setDBVersion(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mDBVersion:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mByteArrMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    :cond_0
    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mIntMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mStrMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    :cond_0
    return-void
.end method

.method public writeFile()V
    .locals 9

    const-string v0, "SDocDocument"

    const-string v1, "writeFile() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v4, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mPropertyFlag:I

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->getFieldCheckFlag()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v5, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mCursorPosition:I

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v5, p0, Lcom/samsung/android/support/senl/document/component/SDocDocument;->mDBVersion:I

    invoke-virtual {v1, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/support/senl/document/component/SDocDocument;->writeExtraData(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    const-string v4, "EOF"

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long/2addr v7, v2

    long-to-int v4, v7

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    sub-long/2addr v5, v2

    long-to-int v2, v5

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const-string v1, "writeFile() end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

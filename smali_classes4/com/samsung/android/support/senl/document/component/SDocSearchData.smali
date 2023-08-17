.class public Lcom/samsung/android/support/senl/document/component/SDocSearchData;
.super Lcom/samsung/android/support/senl/document/component/SDocComponent;
.source "SourceFile"


# static fields
.field private static final DATA_FILE_NAME_SEARCH_DATA:Ljava/lang/String; = "searchData.dat"

.field private static final TAG:Ljava/lang/String; = "SDocSearchData"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mSearchDataSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/SearchData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mSearchDataSet:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "searchData.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeCacheDir(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SDocSearchData"

    const-string v0, "changeCacheDir() - newPath is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "searchData.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public getFileNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getSearchData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/SearchData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mSearchDataSet:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFile()V
    .locals 14

    const-string v0, "SDocSearchData"

    const-string v1, "readFile() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mSearchDataSet:Ljava/util/ArrayList;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mFilePath:Ljava/lang/String;

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

    if-eqz v2, :cond_5

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_4

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_3

    new-instance v5, Lcom/samsung/android/support/senl/document/data/SearchData;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/document/data/SearchData;-><init>()V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    iget-object v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    iget-object v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->text:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    iput v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->pageWidth:I

    iget v9, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/16 v10, 0xe

    if-lt v9, v10, :cond_1

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readBoolean()Z

    move-result v9

    iput-boolean v9, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->hasVisualCue:Z

    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    if-lez v9, :cond_2

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->customData:Ljava/util/HashMap;

    move v10, v3

    :goto_2
    if-ge v10, v9, :cond_2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v11

    invoke-virtual {p0, v1}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v5, Lcom/samsung/android/support/senl/document/data/SearchData;->customData:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mSearchDataSet:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    const-string v1, "readFile() end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
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

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Fail to load text data file. It is invalid."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public setSearchData(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/SearchData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mSearchDataSet:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public writeFile()V
    .locals 9

    const-string v0, "SDocSearchData"

    const-string v1, "writeFile() start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mFilePath:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mSearchDataSet:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/document/component/SDocSearchData;->mSearchDataSet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/support/senl/document/data/SearchData;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v5

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    if-eqz v7, :cond_1

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->rect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    :goto_1
    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->text:Ljava/lang/String;

    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->filePath:Ljava/lang/String;

    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->pageWidth:I

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-boolean v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->hasVisualCue:Z

    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeBoolean(Z)V

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->customData:Ljava/util/HashMap;

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->customData:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    invoke-virtual {v1, v7}, Ljava/io/RandomAccessFile;->writeInt(I)V

    if-lez v7, :cond_3

    iget-object v4, v4, Lcom/samsung/android/support/senl/document/data/SearchData;->customData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v1, v7}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v4, v7, v5

    long-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :cond_4
    :goto_4
    const-string v2, "EOF"

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
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

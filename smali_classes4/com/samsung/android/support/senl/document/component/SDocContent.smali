.class public Lcom/samsung/android/support/senl/document/component/SDocContent;
.super Lcom/samsung/android/support/senl/document/component/SDocComponent;
.source "SourceFile"


# static fields
.field private static final DATA_FILE_NAME_CONTENT:Ljava/lang/String; = "content.dat"

.field private static final DATA_FILE_NAME_TEXT:Ljava/lang/String; = "text.dat"

.field private static final FIELD_FLAG_EXPAND:I = -0x80000000

.field private static final FIELD_FLAG_EXTRA_MAP:I = 0x40

.field private static final FIELD_FLAG_OBJECT_FILE_ID:I = 0x2

.field private static final FIELD_FLAG_OBJECT_RECT:I = 0x4

.field private static final FIELD_FLAG_SPAN:I = 0x1

.field private static final FIELD_FLAG_WEB_BODY:I = 0x10

.field private static final FIELD_FLAG_WEB_TITLE:I = 0x8

.field private static final FIELD_FLAG_WEB_URI:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SDocContent"


# instance fields
.field private mContentDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ContentData;",
            ">;"
        }
    .end annotation
.end field

.field private mContentFilePath:Ljava/lang/String;

.field private mTextFilePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/component/SDocComponent;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTextFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTitle:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "text.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTextFilePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "content.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeCacheDir(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p1, "SDocContent"

    const-string v0, "changeCacheDir() - newPath is null"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "text.dat"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTextFilePath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "content.dat"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentFilePath:Ljava/lang/String;

    return-void
.end method

.method public getContentData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ContentData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFileNames()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTextFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentFilePath:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFile()V
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "EOF"

    const-string v2, "r"

    const-string v3, "SDocContent"

    const-string v4, "readFile() start"

    invoke-static {v3, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    iget-object v6, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTextFilePath:Ljava/lang/String;

    invoke-direct {v5, v6, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v6, Ljava/io/RandomAccessFile;

    iget-object v7, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentFilePath:Ljava/lang/String;

    invoke-direct {v6, v7, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x3

    sub-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_0
    const/4 v8, 0x3

    if-ge v7, v8, :cond_0

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-wide/16 v11, 0x0

    invoke-virtual {v5, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v6, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v9

    int-to-char v9, v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v6, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "]!!"

    const-string v7, "Unsupported format version["

    const/4 v8, 0x6

    if-lt v0, v8, :cond_10

    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v0, :cond_b

    new-instance v10, Lcom/samsung/android/support/senl/document/data/ContentData;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/document/data/ContentData;-><init>()V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v13

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v14

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v15

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    iput v4, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->contentType:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    iput v4, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->contentId:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    iput v4, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->thumbnailId:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    iput v4, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->taskId:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    iput v4, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->taskState:I

    move/from16 v17, v9

    int-to-long v8, v14

    add-long/2addr v8, v11

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    and-int/lit8 v8, v15, 0x1

    if-eqz v8, :cond_4

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->spans:Ljava/util/ArrayList;

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_4

    new-instance v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;

    invoke-direct {v14}, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;-><init>()V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v18

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    move/from16 v20, v0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->spanType:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->startPosition:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->endPosition:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->intervalType:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->spanVersion:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->arg1:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->arg2:I

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    if-lez v0, :cond_3

    move/from16 v21, v8

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->customData:Ljava/util/HashMap;

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v0, :cond_2

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v22

    move/from16 v23, v0

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v24, v2

    iget-object v2, v14, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->customData:Ljava/util/HashMap;

    move-object/from16 v25, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    move/from16 v0, v23

    move-object/from16 v2, v24

    move-object/from16 v7, v25

    goto :goto_4

    :cond_2
    move-object/from16 v24, v2

    move-object/from16 v25, v7

    goto :goto_5

    :cond_3
    move-object/from16 v24, v2

    move-object/from16 v25, v7

    move/from16 v21, v8

    :goto_5
    iget-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->spans:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v7, v4

    add-long v7, v18, v7

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v0, v20

    move/from16 v8, v21

    move-object/from16 v2, v24

    move-object/from16 v7, v25

    goto/16 :goto_3

    :cond_4
    move/from16 v20, v0

    move-object/from16 v24, v2

    move-object/from16 v25, v7

    and-int/lit8 v0, v15, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectFileId:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_5

    iget-object v4, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectFileId:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_5
    and-int/lit8 v0, v15, 0x4

    if-eqz v0, :cond_6

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v2

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    :cond_6
    and-int/lit8 v0, v15, 0x8

    if-eqz v0, :cond_7

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->title:Ljava/lang/String;

    :cond_7
    and-int/lit8 v0, v15, 0x10

    if-eqz v0, :cond_8

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->body:Ljava/lang/String;

    :cond_8
    and-int/lit8 v0, v15, 0x20

    if-eqz v0, :cond_9

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->uri:Ljava/lang/String;

    :cond_9
    and-int/lit8 v0, v15, 0x40

    if-eqz v0, :cond_a

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    if-lez v0, :cond_a

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->extraMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_a

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    invoke-virtual {v1, v6}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->extraMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v7, v13

    add-long/2addr v11, v7

    invoke-virtual {v6, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    add-int/lit8 v9, v17, 0x1

    move/from16 v0, v20

    move-object/from16 v2, v24

    move-object/from16 v7, v25

    const/4 v8, 0x6

    goto/16 :goto_2

    :cond_b
    move-object/from16 v24, v2

    move-object/from16 v25, v7

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    const/4 v2, 0x6

    if-lt v0, v2, :cond_f

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iget-object v2, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_8
    if-ge v4, v0, :cond_e

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    move/from16 v8, v16

    :goto_9
    if-ge v8, v2, :cond_d

    iget-object v9, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/support/senl/document/data/ContentData;

    iget v10, v9, Lcom/samsung/android/support/senl/document/data/ContentData;->contentId:I

    if-ne v10, v7, :cond_c

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->readString(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/samsung/android/support/senl/document/data/ContentData;->text:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v16, v8

    goto :goto_8

    :cond_e
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    const-string v0, "readFile() end"

    invoke-static {v3, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    :try_start_4
    new-instance v0, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v25

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v24

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move-object v4, v2

    move-object v3, v7

    new-instance v0, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mCurrentFormatVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/document/exception/UnsupportedFileException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Fail to load span data file. It is invalid."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Fail to load text data file. It is invalid."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v6, v4

    :goto_b
    move-object v4, v5

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v6, v4

    :goto_c
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    :cond_13
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    :cond_14
    throw v0
.end method

.method public setContentData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ContentData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SDocContent"

    const-string v1, "setContentData() start!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SDocContent"

    const-string v1, " setTitle() start!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTitle:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/component/SDocComponent;->mIsChanged:Z

    return-void
.end method

.method public writeFile()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "EOF"

    const-string v2, "rw"

    const-string v3, ".bak"

    const-string v4, "SDocContent"

    const-string v5, "writeFile() start"

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTextFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v7, Ljava/io/RandomAccessFile;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentFilePath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v2, 0x12

    :try_start_2
    invoke-virtual {v6, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    move-object v10, v0

    move-object/from16 v16, v4

    goto/16 :goto_7

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, v1, Lcom/samsung/android/support/senl/document/component/SDocContent;->mContentDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/support/senl/document/data/ContentData;

    iget-object v11, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->text:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget v11, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->contentId:I

    invoke-virtual {v6, v11}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v11, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->text:Ljava/lang/String;

    invoke-virtual {v1, v6, v11}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    :cond_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v11

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v13, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->contentType:I

    invoke-virtual {v7, v13}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v13, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->contentId:I

    invoke-virtual {v7, v13}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v13, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->thumbnailId:I

    invoke-virtual {v7, v13}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v13, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->taskId:I

    invoke-virtual {v7, v13}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v13, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->taskState:I

    invoke-virtual {v7, v13}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v13

    iget-object v15, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->spans:Ljava/util/ArrayList;

    if-eqz v15, :cond_5

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v15, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->spans:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;

    move-object/from16 v16, v4

    move/from16 v18, v5

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    move-object/from16 v19, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->spanType:I

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->startPosition:I

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->endPosition:I

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->intervalType:I

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->spanVersion:I

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->arg1:I

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->arg2:I

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->customData:Ljava/util/HashMap;

    if-nez v2, :cond_2

    move-object/from16 v20, v15

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_3

    :cond_2
    move-object/from16 v20, v15

    const/4 v15, 0x0

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v2, v3, Lcom/samsung/android/support/senl/document/data/ContentData$SpanData;->customData:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v7, v3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    const/4 v15, 0x0

    goto :goto_2

    :cond_3
    :goto_3
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    invoke-virtual {v7, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    sub-long v4, v2, v4

    long-to-int v4, v4

    invoke-virtual {v7, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v4, v16

    move/from16 v5, v18

    move-object/from16 v2, v19

    move-object/from16 v15, v20

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move/from16 v18, v5

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move/from16 v18, v5

    const/4 v2, 0x0

    :goto_4
    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectFileId:Ljava/util/ArrayList;

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectFileId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/io/RandomAccessFile;->writeInt(I)V

    goto :goto_5

    :cond_6
    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    if-eqz v3, :cond_7

    or-int/lit8 v2, v2, 0x4

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->objectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeFloat(F)V

    :cond_7
    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->title:Ljava/lang/String;

    if-eqz v3, :cond_8

    or-int/lit8 v2, v2, 0x8

    invoke-virtual {v1, v7, v3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_8
    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->body:Ljava/lang/String;

    if-eqz v3, :cond_9

    or-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v7, v3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_9
    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->uri:Ljava/lang/String;

    if-eqz v3, :cond_a

    or-int/lit8 v2, v2, 0x20

    invoke-virtual {v1, v7, v3}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    :cond_a
    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->extraMap:Ljava/util/HashMap;

    if-eqz v3, :cond_b

    or-int/lit8 v2, v2, 0x40

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v7, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v3, v10, Lcom/samsung/android/support/senl/document/data/ContentData;->extraMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v7, v4}, Lcom/samsung/android/support/senl/document/component/SDocComponent;->writeString(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    invoke-virtual {v7, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object v10, v0

    sub-long v0, v3, v11

    long-to-int v0, v0

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    sub-long/2addr v13, v11

    long-to-int v0, v13

    invoke-virtual {v7, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v7, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    move-object/from16 v1, p0

    move-object v0, v10

    move-object/from16 v4, v16

    move/from16 v5, v18

    move-object/from16 v2, v19

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_c
    move-object v10, v0

    move-object/from16 v16, v4

    move v3, v5

    :goto_7
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {v6, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    invoke-virtual {v6, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v6, v10}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    const-string v0, "writeFile() end"

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v7, v5

    :goto_8
    move-object v5, v6

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v7, v5

    :goto_9
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    :cond_d
    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    :cond_e
    throw v0
.end method

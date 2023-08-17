.class public Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CATEGORY_KEY:Ljava/lang/String; = "CATEGORY"

.field private static final FILE_KEY:Ljava/lang/String; = "FILE"

.field private static final MEMO_KEY:Ljava/lang/String; = "MEMO"

.field private static final SYNC_FIFLE:Ljava/lang/String; = "/content.sync"

.field private static final TAG:Ljava/lang/String; = "JSONParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertCategoryToSDoc(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const-string p0, "JSONParser"

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "convertCategoryToSDoc() categoryDirPath is null!!"

    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/content.sync"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "convertCategoryToSDoc() no syncFile"

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v0, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "CATEGORY"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    sget-object v1, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->CATEGORY_COLUMNS:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$CategoryData;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$CategoryData;-><init>()V

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$CategoryData;->uuid:Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$CategoryData;->dpName:Ljava/lang/String;

    :cond_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    const/4 p0, 0x1

    return p0
.end method

.method public static convertToSDoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->loadSpenSDK(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/content.sync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "JSONParser"

    if-nez p1, :cond_0

    const-string p0, "convertMemoToSDoc() syncDirPath is null!!"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertMemoToSDoc()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getSDocDataFromMemoJSON(Lorg/json/JSONObject;)Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;

    move-result-object v2

    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getFavoriteFromMemoExtJSON(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->favorite:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getFileDataArrayFromMemoJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, v2, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->createSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;

    invoke-direct {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;-><init>()V

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    iput-object p3, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->category:Ljava/lang/String;

    :cond_1
    iget-object p3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->uuid:Ljava/lang/String;

    iput-object p3, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->prevUUID:Ljava/lang/String;

    iget-object p3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->strippedContent:Ljava/lang/String;

    iput-object p3, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->strippedContent:Ljava/lang/String;

    iget-object p3, v2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    iput-object p3, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->lastModifiedTime:Ljava/lang/String;

    iput-object v1, p2, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;->favorite:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->updateSDocDB(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocDBData;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "JSONParser"

    const-string v5, "JSONException in fromJSON(). "

    invoke-static {v4, v5, v3}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static getFavoriteFromMemoExtJSON(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "MEMO"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->MEMO_COLUMNS_SEC:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method private static getFileDataArrayFromMemoJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;",
            ">;"
        }
    .end annotation

    const-string v0, "FILE"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object v5, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->FILE_COLUMNS:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;-><init>()V

    aget-object v7, v5, v0

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->uuid:Ljava/lang/String;

    aget-object v7, v5, v3

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->memoUUID:Ljava/lang/String;

    const/4 v7, 0x2

    aget-object v7, v5, v7

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->mime_type:Ljava/lang/String;

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->display_name:Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v7, v5, v7

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->size:Ljava/lang/String;

    const/4 v7, 0x5

    aget-object v7, v5, v7

    invoke-virtual {v4, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->orientation:Ljava/lang/String;

    const/4 v7, 0x6

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->data:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / uuid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v6, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->uuid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JSONParser"

    invoke-static {v5, v4}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_2
    return-object v2
.end method

.method private static getJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    sget-object v2, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not exists"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMemoMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .locals 6

    const-string v0, "0"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/content.sync"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "JSONParser"

    if-nez p0, :cond_0

    const-string p0, "getMemoMetaData() syncDirPath is null!!"

    invoke-static {v2, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getSDocDataFromMemoJSON(Lorg/json/JSONObject;)Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;

    move-result-object v3

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getJSONObjectFromFile(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getFavoriteFromMemoExtJSON(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    new-instance v4, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    invoke-direct {v4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;-><init>()V

    iget-object v5, v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setCategoryName(Ljava/lang/String;)V

    iget-object p2, v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->strippedContent:Ljava/lang/String;

    invoke-virtual {v4, p2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setContent(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "title : "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / strippedContent : "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->strippedContent:Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setIsFavorite(Z)V

    :cond_2
    iget-object p1, v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setLastModifiedAt(Ljava/lang/String;)V

    iget-object p1, v3, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->createdAt:Ljava/lang/String;

    invoke-virtual {v4, p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setCreatedAt(Ljava/lang/String;)V

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->getFileDataArrayFromMemoJSON(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    move p1, p2

    :goto_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->mime_type:Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v1, p2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getHasImage()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "image"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasImage(Z)V

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setImageFile(Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;)V

    goto :goto_3

    :cond_3
    const-string v3, "audio"

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v4, v2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasVoice(Z)V

    iget-object v0, v0, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getVoiceRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setVoiceRuntime(Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private static getSDocDataFromMemoJSON(Lorg/json/JSONObject;)Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;
    .locals 3

    const-string v0, "MEMO"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/support/senl/document/memoconverter/core/ConverterUtils;->MEMO_COLUMNS:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/document/memoconverter/JSONConverter;->fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->uuid:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->createdAt:Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->categoryUUID:Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->strippedContent:Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v2, v0, v2

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->data:Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->lastModifiedAt:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "title : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / content : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter$SDocData;->content:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/SDocUtil;->logPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "JSONParser"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

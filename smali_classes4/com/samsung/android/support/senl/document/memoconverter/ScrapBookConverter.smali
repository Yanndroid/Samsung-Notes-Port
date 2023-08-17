.class public Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JSON_CONTENT_COLUMNS:[Ljava/lang/String;

.field public static final SCC_CONTENT_COLUMNS:[Ljava/lang/String;

.field public static final SCC_META_JSONKEY:Ljava/lang/String; = "metaObjs"

.field private static final TAG:Ljava/lang/String; = "ScrapBookConverter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxTextureSize:I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "type"

    const-string v1, "crop_time"

    const-string v2, "crop_image_path"

    const-string v3, "crop_image_width"

    const-string v4, "crop_image_height"

    const-string v5, "crop_text4"

    const-string v6, "crop_shape"

    const-string v7, "focus_rect"

    const-string v8, "original_contents"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->SCC_CONTENT_COLUMNS:[Ljava/lang/String;

    const-string v1, "category_id"

    const-string v2, "type"

    const-string v3, "crop_time"

    const-string v4, "crop_image_path"

    const-string v5, "crop_image_width"

    const-string v6, "crop_image_height"

    const-string v7, "crop_shape"

    const-string v8, "focus_rect"

    const-string v9, "metaObjs"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->JSON_CONTENT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mMaxTextureSize:I

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->initSpenSdk(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ScrapBookConverter() : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrapBookConverter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private extractContent(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTypeForScrapBook()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "line.separator"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    const/4 v6, 0x4

    if-eq v1, v5, :cond_3

    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_2

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t support scrap booktype : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTypeForScrapBook()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScrapBookConverter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getScrapBookBodyText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v5, v2

    :goto_0
    array-length v6, v1

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_1

    new-instance v6, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-direct {v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;-><init>()V

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-direct {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;-><init>()V

    aget-object v1, v1, v5

    goto :goto_1

    :cond_2
    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;

    invoke-direct {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->makeWebCardData(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)V

    goto :goto_2

    :cond_3
    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    invoke-direct {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getAudioPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->attachFile(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getVoiceRuntime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->setPlayTime(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setState(I)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;

    invoke-direct {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;-><init>()V

    :goto_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getHasImage()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getImageFile()Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getRefinedImagePath(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setThumbnailPath(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getScrapbookOriImagePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v4, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;

    invoke-direct {v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;-><init>()V

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getRefinedImagePath(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getContent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_7

    aget-object v4, v1, v2

    new-instance v5, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    invoke-direct {v5}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;-><init>()V

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getScrapbookDrawingMemoPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    new-instance v1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;

    invoke-direct {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentImage;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getRefinedImagePath(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setThumbnailPath(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    return-object v0
.end method

.method private extractDBMetaData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    const-string v0, "crop_image_path"

    const-string v1, "crop_time"

    const-string v2, "extractDBMetaData - "

    const/4 v3, 0x0

    const-string v4, "ScrapBookConverter"

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;-><init>()V

    :try_start_0
    sget-object v5, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->JSON_CONTENT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "video"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string p1, "do not support video"

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setCreatedAt(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setLastModifiedAt(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;-><init>()V

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasImage(Z)V

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setImageFile(Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;)V

    :cond_2
    const-string v0, "1"

    if-eqz p3, :cond_3

    goto :goto_0

    :cond_3
    move-object p3, v0

    :goto_0
    invoke-virtual {v2, p3}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setCategoryName(Ljava/lang/String;)V

    invoke-direct {p0, v6, p1, v2, p2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractDataByType(Ljava/lang/String;Lorg/json/JSONObject;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v3

    :cond_4
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private extractDataByType(Ljava/lang/String;Lorg/json/JSONObject;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Ljava/lang/String;)V
    .locals 11

    const-string v0, "metaObjs"

    const-string v1, "ScrapBookConverter"

    :try_start_0
    const-string v2, "image"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-nez v2, :cond_0

    invoke-virtual {p3, v7}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTypeForScrapBook(I)V

    goto :goto_0

    :cond_0
    const-string v2, "youtube"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p3, v5}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTypeForScrapBook(I)V

    goto :goto_0

    :cond_1
    const-string v2, "music"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3, v4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTypeForScrapBook(I)V

    goto :goto_0

    :cond_2
    const-string v2, "web"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p3, v6}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTypeForScrapBook(I)V

    goto :goto_0

    :cond_3
    const-string v2, "text"

    invoke-virtual {p1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {p3, v3}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTypeForScrapBook(I)V

    :goto_0
    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTypeForScrapBook()I

    move-result p1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v7, :cond_f

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractDataByType :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_f

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extractDataByType metaObj("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "meta_key"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "meta_value"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "title"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    const-string v10, "user_memo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setContent(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v10, "favorite"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_7

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    move v8, v7

    goto :goto_2

    :cond_6
    move v8, v0

    :goto_2
    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setIsFavorite(Z)V

    goto/16 :goto_3

    :cond_7
    const-string v10, "file_path_drawing_memo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_8

    invoke-direct {p0, p4, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setScrapBookDrawingMemoPath(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const-string v10, "file_path_image"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_9

    if-ne p1, v7, :cond_e

    invoke-direct {p0, p4, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->isGIF(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setScrapBookOriImagePath(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string v10, "url"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_b

    if-eq p1, v5, :cond_a

    if-ne p1, v6, :cond_e

    :cond_a
    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setURL(Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    const-string v10, "file_path_audio"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_c

    if-ne p1, v4, :cond_e

    invoke-virtual {p3, v7}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasVoice(Z)V

    invoke-direct {p0, p4, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/support/senl/document/memoconverter/core/Converter;->getVoiceRuntime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v9}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setVoiceRuntime(Ljava/lang/String;)V

    invoke-direct {p0, p4, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setAudioPath(Ljava/lang/String;)V

    goto :goto_3

    :cond_c
    const-string v10, "file_path_mhtml"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_d

    if-ne p1, v6, :cond_e

    invoke-direct {p0, p4, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setScrapBookHTMLPath(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const-string v10, "plain_text"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_e

    if-ne p1, v3, :cond_e

    invoke-virtual {p3, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setScrapBookBodyText(Ljava/lang/String;)V

    :cond_e
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_f
    return-void

    :cond_10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not supported type! - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extractDataByType - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private extractMetaData(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractSCCMetaData(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractDBMetaData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private extractSCCMetaData(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;",
            ">;"
        }
    .end annotation

    const-string v0, "crop_image_path"

    const-string v1, "crop_time"

    const/4 v2, 0x0

    const-string v3, "ScrapBookConverter"

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v5, "contents"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentObj("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string p1, "extractSCCMetaData - Thread Interrupted!"

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    new-instance v6, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;-><init>()V

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    sget-object v8, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->SCC_CONTENT_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v8, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "video"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v6, "do not support video"

    invoke-static {v3, v6}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setUuid(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setCreatedAt(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setLastModifiedAt(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;

    invoke-direct {v10}, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;-><init>()V

    invoke-virtual {v8, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v8}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v10, Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;->curFullPath:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setHasImage(Z)V

    invoke-virtual {v6, v10}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->setImageFile(Lcom/samsung/android/support/senl/document/data/ConverterFileDataAdapter;)V

    :cond_3
    invoke-direct {p0, v9, v7, v6, p2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractDataByType(Ljava/lang/String;Lorg/json/JSONObject;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extractMetaData metaData cnt : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extractSCCMetaData"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extractSCCMetaData - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private fromJSON(Lorg/json/JSONObject;[Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    :try_start_0
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "meta_extra_data"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getImageFilePathWithExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-le v1, v2, :cond_1

    return-object p1

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    return-object p1

    :cond_2
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v2, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v2, :cond_3

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageFilePathWithExtension newName : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ScrapBookConverter"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method private getLocalFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMetaInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v0, 0x400

    new-array v0, v0, [C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "META-INF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "pinboard.json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {p1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-lez v4, :cond_0

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_1

    :catchall_2
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    throw p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v1
.end method

.method private getRefinedImagePath(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getImageFilePathWithExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mMaxTextureSize:I

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/ImageUtil;->getResizedImagePathFitingToScreen(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private static initSpenSdk(Landroid/content/Context;)V
    .locals 3

    const-string v0, "ScrapBookConverter"

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    :try_start_0
    const-string v2, "initSpenSdk() start"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xc8

    invoke-virtual {v1, p0, v2}, Lcom/samsung/android/sdk/pen/Spen;->initialize(Landroid/content/Context;I)V

    const-string p0, "initSpenSdk() end"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/SsdkUnsupportedException;->getType()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vendor is not SAMSUNG"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device is not supported"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private isGIF(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "gif"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private makeSDocWithMetaData(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Z)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeSDocWithMetaData "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ScrapBookConverter"

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v1, v2, v5}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractContent(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v6

    iget-object v7, v1, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->newUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getNoteFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    const-string v10, "yyyyMMdd_HHmmss"

    invoke-direct {v8, v10, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "].sdoc"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v9, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;

    iget-object v8, v1, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-direct {v9, v8, v7, v3, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v9}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->getTitle()Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentText;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->setText(Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getIsFavorite()Z

    move-result v3

    invoke-virtual {v9, v3}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->setFavorite(Z)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    :try_start_1
    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->appendContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedImageLimitException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/composer/document/sdoc/exception/SpenExceedTextLimitException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string v3, "makeSDocWithMetaData - "

    if-eqz p2, :cond_4

    invoke-direct {v1, v6, v9, v7, v2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->updateDb(Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)V

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCreatedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getLastModifiedAt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    move-object v10, v7

    invoke-virtual/range {v9 .. v15}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->save(Ljava/lang/String;[Ljava/lang/String;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_3
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    return-object v7

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeSDocWithMetaData() - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-object v3
.end method

.method private newSDocFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newSDocFile - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScrapBookConverter"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getMetaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string p1, "newSDocFile - metaDataStr is null"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v5, p1, v0, v3}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractMetaData(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newSDocFile - Thread Interrupted! : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    invoke-direct {p0, v6, v0}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->makeSDocWithMetaData(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-object v4

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private updateDb(Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Ljava/lang/String;Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)V
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->isExistingNote(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCategoryName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->createBuilderInstance()Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setSPenSDoc(Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCloseDocAfterSave(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setDocFilePath(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getCreatedAt()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCreatedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-virtual {p4}, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;->getLastModifiedAt()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p1, p3}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setLastModifiedAtTime(Ljava/lang/Long;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;->isFavorite()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setFavorite(Ljava/lang/Boolean;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setUpdateStrokeInWorkerThread(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setCategoryUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;->setNew(Z)Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentSaveSDoc;->saveSDoc(Landroid/content/Context;Lcom/samsung/android/support/senl/document/contract/DocumentSaveParamBuilder;)Z

    return-void
.end method


# virtual methods
.method public convertToSDoc(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;)Ljava/lang/String;
    .locals 2

    const-string v0, "ScrapBookConverter"

    const-string v1, "convertToSDoc 2"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->makeSDocWithMetaData(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public convertToSDoc(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToSDoc - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrapBookConverter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractMetaData(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->makeSDocWithMetaData(Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;Z)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public convertToSDocFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToSDocFile("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrapBookConverter"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "convertToSDocFile - path is null"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "convertToSDocFile - zipFile.exists() == false"

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/unzip_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2, v3, v4, v4}, Lcom/samsung/android/support/senl/document/util/ZipUtil;->unzipByZipInputStream(Ljava/io/File;Ljava/io/File;ZZ)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->newSDocFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToSDocFile - fail to unzip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object v0
.end method

.method public getMemoCount(Ljava/lang/String;)I
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMemoCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ScrapBookConverter"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    const-string p1, "getMemoCount - zipFile.exists() == false"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/unzip_"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "META-INF"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "pinboard.json"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5, v3, v3}, Lcom/samsung/android/support/senl/document/util/ZipUtil;->unzipParticularEntry(Ljava/io/File;Ljava/io/File;Ljava/lang/String;ZZ)V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->getMetaInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "getMemoCount - metaDataStr is null"

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "contents"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    move v3, p1

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMemoCount - fail to unzip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v3
.end method

.method public getMetaData(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/document/memoconverter/ScrapBookConverter;->extractMetaData(Lorg/json/JSONObject;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/document/data/MemoMetaDataItem;

    return-object p1
.end method

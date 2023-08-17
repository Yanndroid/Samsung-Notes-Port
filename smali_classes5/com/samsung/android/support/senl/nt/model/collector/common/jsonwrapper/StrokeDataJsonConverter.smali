.class public Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NAME_FIRST_CHAR_RECT_BOTTOM:Ljava/lang/String; = "firstCharRectBottom"

.field private static final NAME_FIRST_CHAR_RECT_LEFT:Ljava/lang/String; = "firstCharRectLeft"

.field private static final NAME_FIRST_CHAR_RECT_RIGHT:Ljava/lang/String; = "firstCharRectRight"

.field private static final NAME_FIRST_CHAR_RECT_TOP:Ljava/lang/String; = "firstCharRectTop"

.field private static final NAME_HANDLE_LIST:Ljava/lang/String; = "handleList"

.field private static final NAME_LAST_CHAR_RECT_BOTTOM:Ljava/lang/String; = "lastCharRectBottom"

.field private static final NAME_LAST_CHAR_RECT_LEFT:Ljava/lang/String; = "lastCharRectLeft"

.field private static final NAME_LAST_CHAR_RECT_RIGHT:Ljava/lang/String; = "lastCharRectRight"

.field private static final NAME_LAST_CHAR_RECT_TOP:Ljava/lang/String; = "lastCharRectTop"

.field private static final NAME_LINK_STR:Ljava/lang/String; = "linkStr"

.field private static final NAME_LINK_TYPE:Ljava/lang/String; = "linkType"

.field private static final NAME_PAGE_WIDTH:Ljava/lang/String; = "pageWidth"

.field private static final NAME_REP_OBJECT_UUID:Ljava/lang/String; = "repObjectUuid"

.field private static final NAME_STROKE_RECT_BOTTOM:Ljava/lang/String; = "strokeRectBottom"

.field private static final NAME_STROKE_RECT_LEFT:Ljava/lang/String; = "strokeRectLeft"

.field private static final NAME_STROKE_RECT_RIGHT:Ljava/lang/String; = "strokeRectRight"

.field private static final NAME_STROKE_RECT_TOP:Ljava/lang/String; = "strokeRectTop"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "StrokeDataJsonConverter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionLinkDataFromJsonStr(Ljava/lang/String;I)Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/JsonFactory;->createJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "linkStr"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->linkStr:Ljava/lang/String;

    const-string v1, "linkType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->linkType:I

    iput p1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->pageWidth:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getStrokeRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getFirstCharRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getLastCharRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentHandWriting$ActionLinkData;->handleList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getHandleList(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSdocLinkDataFromJsonStr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static getActionLinkDataFromJsonStr(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/JsonFactory;->createJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "linkType"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkType:I

    const-string v1, "linkStr"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkStr:Ljava/lang/String;

    const-string v1, "pageWidth"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->pageWidth:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getStrokeRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getFirstCharRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getLastCharRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->handleList:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->getHandleList(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSdocLinkDataFromJsonStr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static getFirstCharRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    const-string v1, "firstCharRectLeft"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "firstCharRectTop"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "firstCharRectRight"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "firstCharRectBottom"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static getHandleList(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "handleList"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getJsonStrFromActionLinkData(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "linkType"

    iget v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "linkStr"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->linkStr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pageWidth"

    iget v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->pageWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "repObjectUuid"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->repObjectUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "strokeRectLeft"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "strokeRectRight"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "strokeRectTop"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "strokeRectBottom"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->strokeRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "firstCharRectLeft"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "firstCharRectRight"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "firstCharRectTop"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "firstCharRectBottom"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->firstCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastCharRectLeft"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastCharRectRight"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastCharRectTop"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lastCharRectBottom"

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->lastCharRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->handleList:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->handleList:Ljava/util/ArrayList;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage$ActionLinkData;->handleList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string p0, "handleList"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/jsonwrapper/StrokeDataJsonConverter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getJson, exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getLastCharRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    const-string v1, "lastCharRectLeft"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "lastCharRectTop"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "lastCharRectRight"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "lastCharRectBottom"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private static getStrokeRect(Lorg/json/JSONObject;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    const-string v1, "strokeRectLeft"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "strokeRectTop"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "strokeRectRight"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "strokeRectBottom"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_VOICE_BOOKMARK_IDENTIFIER:Ljava/lang/String; = "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

.field private static final TAG:Ljava/lang/String; = "SPDToSDocXConverter"

.field private static final TYPE_IMAGE_CARD:I = 0x27

.field private static final VOICE_MEMO_FILE_PREFIX:Ljava/lang/String; = "/"

.field private static final VOICE_MEMO_TYPE:I = 0x17


# instance fields
.field private mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

.field private mConverters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter<",
            "*>;>;"
        }
    .end annotation
.end field

.field private mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

.field private mTempFoldePath:Ljava/lang/String;

.field private mVoiceMemoPathMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVoiceMemoTable:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mTempFoldePath:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/TextBoxConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/HandWritingConverter;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/HandWritingConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/WebConverter;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/WebConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;)Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    return-object p0
.end method

.method private convertImageBackgroundModeTile(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "SPDToSDocXConverter"

    if-nez p1, :cond_0

    const-string p1, "convertImageBackgroundModeTile : context null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_1

    return-object p3

    :cond_1
    const-string v1, "/"

    invoke-virtual {p3, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mTempFoldePath:Ljava/lang/String;

    const-string v4, "_temp"

    const/4 v5, 0x0

    if-nez v3, :cond_4

    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mTempFoldePath:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mTempFoldePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {p3, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->removeAllObject()V

    iget-object v2, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    if-nez v2, :cond_7

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeSpenCapturePage(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->capturePage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "convertImageBackgroundModeTile : capture page fail"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3

    :cond_8
    return-object v1
.end method

.method private convertVoiceTag(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 3

    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SPDToSDocXConverter"

    if-eqz v1, :cond_0

    const-string p1, "convert voice tag failed : filePath is empty"

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoPathMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoTable:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setResizeOption(I)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoTable:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoPathMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->attachFile(Ljava/lang/String;)V

    const-string v1, "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    :goto_1
    const-string p1, "convert voice tag failed : list voiceMemoPathMap or voiceMemoTable is null"

    goto :goto_0
.end method

.method private isBoxObject(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isImageCard(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 3
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const-string v0, "Type"

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result p1

    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isMagicPenStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 2
    .param p1    # Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getPenName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.sdk.pen.pen.preload.MagicPen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private runConverter(Ljava/lang/Integer;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "not supported object : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SPDToSDocXConverter"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;->convert(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized convert(Landroid/content/Context;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V
    .locals 17
    .param p2    # Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getPageCount()I

    move-result v5

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getWidth()I

    move-result v6

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getHeight()I

    move-result v7

    new-instance v8, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-direct {v8, v0, v6, v7}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;-><init>(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;II)V

    iput-object v8, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    new-instance v8, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter$1;

    invoke-direct {v8, v1, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter$1;-><init>(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;)V

    iget-object v9, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->setBodyTextFontSizeDelta()V

    iget-object v9, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->setTitle(Ljava/lang/String;)V

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getVoicePathMap()Landroid/util/ArrayMap;

    move-result-object v9

    iput-object v9, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoPathMap:Landroid/util/ArrayMap;

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getVoiceMemoTable()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoTable:Ljava/util/ArrayList;

    sget v9, Lcom/samsung/android/support/senl/cm/base/R$color;->base_background_color_white:I

    invoke-interface {v2, v9}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IResourceGetter;->getColor(I)I

    move-result v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v10, v5, :cond_6

    move-object/from16 v12, p2

    invoke-interface {v12, v10}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->getHeight()I

    move-result v9

    iget-object v11, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-virtual {v11, v7, v9}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getObjectCountInPage()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-virtual {v11, v6}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->transferObject(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    iget-object v11, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-virtual {v11}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->getObjectList()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v13}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_0

    const-string v15, "Type"

    invoke-virtual {v13, v15}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getExtraDataInt(Ljava/lang/String;)I

    move-result v15

    move/from16 v16, v5

    const/16 v5, 0x17

    if-ne v15, v5, :cond_1

    invoke-direct {v1, v13}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->convertVoiceTag(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_2
    invoke-direct {v1, v5, v13, v8}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->runConverter(Ljava/lang/Integer;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/IConvertParams;)V

    goto :goto_3

    :cond_0
    move/from16 v16, v5

    :cond_1
    invoke-direct {v1, v13}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->isImageCard(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {v1, v13}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->isMagicPenStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-direct {v1, v14}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->isBoxObject(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_2

    :cond_3
    :goto_3
    move/from16 v5, v16

    goto :goto_1

    :cond_4
    move/from16 v16, v5

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getBackgroundImagePathPage()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/ISpenNoteDocManager;->getBackgroundImageMode()I

    move-result v11

    if-eqz v5, :cond_5

    const/4 v13, 0x3

    if-ne v11, v13, :cond_5

    const/4 v11, 0x2

    move-object/from16 v13, p1

    invoke-direct {v1, v13, v6, v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->convertImageBackgroundModeTile(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_5
    move-object/from16 v13, p1

    :goto_4
    iget-object v6, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-virtual {v6, v2, v5, v11}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->setBackgroundForPage(ILjava/lang/String;I)V

    add-int/lit8 v10, v10, 0x1

    move v6, v7

    move v7, v9

    move-object v9, v5

    move/from16 v5, v16

    goto/16 :goto_0

    :cond_6
    new-instance v5, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenDocumentInitializer;

    invoke-direct {v5}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenDocumentInitializer;-><init>()V

    invoke-virtual {v5, v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/common/SpenDocumentInitializer;->setPageVerticalPadding(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    iget-object v0, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->appendPage(II)Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    iget-object v0, v1, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    invoke-virtual {v0, v2, v9, v11}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->setBackgroundForPage(ILjava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-string v0, "SPDToSDocXConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entire converting time : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/converters/AbsObjectConverter;->release()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mConverters:Ljava/util/Map;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;->release()V

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mComposer:Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/notecomposer/MultiPageNoteComposer;

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoTable:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mVoiceMemoPathMap:Landroid/util/ArrayMap;

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->setPageDoc(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mSpenCapturePage:Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;->close()V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mTempFoldePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/external/spd/model/SPDToSDocXConverter;->mTempFoldePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_0
    invoke-static {v0}, Lcom/samsung/android/support/senl/document/util/FileUtil;->deleteFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, "SPDToSDocXConverter"

    const-string v1, "fail to delete temp folder"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

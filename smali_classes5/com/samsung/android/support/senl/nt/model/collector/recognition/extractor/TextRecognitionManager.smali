.class Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SPEN_RECOGNIZER_PLUGIN_PACKAGE:Ljava/lang/String; = "com.samsung.android.sdk.pen.recogengine.preload.SpenRecognizerPlugin"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentLanguage:Ljava/lang/String;

.field private mIsLanguageInit:Z

.field private mIsPossible:Z

.field private mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

.field private mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

.field private mTextRecognitionPlugIn:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "TextRecognitionManager"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/model/common/log/CollectLogger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsPossible:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mCurrentLanguage:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsLanguageInit:Z

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mTextRecognitionPlugIn:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    const-string v2, "TextRecognitionManager"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsPossible:Z

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mContext:Landroid/content/Context;

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/RecogEngineConstructor;->makeRecognizerManager(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->getInfoList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "TextRecognitionManager, list is null."

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    const-string v4, "com.samsung.android.sdk.pen.recogengine.preload.SpenRecognizerPlugin"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->createRecognizer(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->initSpenRecognizer()V

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->initTextRecognitionLanguage(Landroid/content/Context;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TextRecognitionManager, mCurrentLanguage: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsPossible:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->close()V

    :goto_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;)Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private calcRect(Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;Ljava/lang/String;I)[Landroid/graphics/RectF;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;",
            "Ljava/lang/String;",
            "I)[",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v5, v2, :cond_7

    add-int v9, p7, v5

    move-object/from16 v10, p1

    invoke-interface {v10, v9}, Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;->getStrokeIndex(I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v12, v11, :cond_2

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-gez v14, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v15

    if-lt v5, v15, :cond_1

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v15

    if-ge v5, v15, :cond_1

    invoke-direct {v0, v1, v13, v14}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getUnionRectF(Ljava/util/ArrayList;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v13

    move-object/from16 v15, p3

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/Integer;

    move-object/from16 v3, p4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {v0, v1, v8, v14}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getUnionRectF(Ljava/util/ArrayList;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v4

    move-object v8, v4

    goto :goto_3

    :cond_1
    :goto_2
    move-object/from16 v15, p3

    move-object/from16 v3, p4

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v15, p3

    move-object/from16 v3, p4

    if-eqz v13, :cond_6

    if-eqz v6, :cond_3

    iget v4, v6, Landroid/graphics/RectF;->left:F

    iget v9, v13, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v9

    if-gtz v4, :cond_4

    :cond_3
    move-object v6, v13

    :cond_4
    if-eqz v7, :cond_5

    iget v4, v7, Landroid/graphics/RectF;->left:F

    iget v9, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v4, v4, v9

    if-ltz v4, :cond_6

    :cond_5
    move-object v7, v13

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/RectF;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v7, v1, v2

    const/4 v2, 0x2

    aput-object v8, v1, v2

    return-object v1
.end method

.method private getLinkType(Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->getHyperTextType()I

    move-result p1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0
.end method

.method private getResultFromSpenRecognizerResult(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;"
        }
    .end annotation

    new-instance v6, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;

    invoke-direct {v6}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;->getResultCount()I

    move-result v8

    const/4 v9, 0x0

    move v0, v9

    :goto_0
    if-ge v0, v8, :cond_0

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;->getResult(I)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRecognition done split: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / strokeList size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / resultCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v9

    :goto_1
    const/4 v0, 0x0

    if-ge p1, v8, :cond_3

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;

    invoke-interface {v3}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface;->getResultType()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;->TEXT:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;

    if-ne v1, v2, :cond_2

    if-eqz p4, :cond_1

    invoke-interface {v3, v9}, Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;->getResultString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v9}, Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;->getResultString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v9}, Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;->getResultString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    move-object v4, v0

    move-object v0, v1

    :goto_2
    invoke-direct {p0, p2, v3, v0, v6}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getResultTextInformation(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;[Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getResultHyperLinkTextInformation(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;[Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;)V

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, v6, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultString:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    return-object v6

    :cond_4
    return-object v0
.end method

.method private getResultHyperLinkTextInformation(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;[Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;",
            "[",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    if-eqz v9, :cond_3

    iget-object v0, v8, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mTextRecognitionPlugIn:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;

    if-eqz v0, :cond_3

    array-length v11, v9

    const/4 v12, 0x0

    move v13, v12

    move v14, v13

    :goto_0
    if-ge v13, v11, :cond_3

    aget-object v15, v9, v13

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v8, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mTextRecognitionPlugIn:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;

    iget-object v1, v8, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v15}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;->parseHyperText(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v16, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;->getHyperTextType()I

    move-result v0

    invoke-direct {v8, v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->isSupportedHyperTextType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getStart()I

    move-result v0

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/textspan/SpenTextSpanBase;->getEnd()I

    move-result v1

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v10, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultLinkString:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v5}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getLinkType(Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;)I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    move/from16 v18, v3

    move-object/from16 v3, p2

    move-object/from16 v19, v4

    move-object v4, v7

    move-object v6, v15

    move-object/from16 v20, v7

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->calcRect(Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/document/textspan/SpenHyperTextSpan;Ljava/lang/String;I)[Landroid/graphics/RectF;

    move-result-object v0

    aget-object v1, v0, v12

    aget-object v2, v0, v16

    const/4 v3, 0x2

    aget-object v0, v0, v3

    iget-object v3, v10, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->repObjectUuid:Ljava/util/List;

    move-object/from16 v4, v19

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultStrokeIndex:Ljava/util/List;

    move-object/from16 v5, v20

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->linkType:Ljava/util/List;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultStrokeRectF:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->lastCharRect:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v10, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->leftCharRect:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestRecognition, actionLink repObjectUuid : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRecognition, actionLink rect : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " linkType : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "   lastCharRect : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/RectF;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRecognition, actionLink stroke sub list : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_0
    move-object v5, v7

    :cond_1
    :goto_2
    move-object v7, v5

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v14, v0

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private getResultTextInformation(Ljava/util/ArrayList;Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;[Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;",
            "[",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    array-length v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_6

    aget-object v8, v2, v6

    iget-object v9, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultString:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x0

    move-object v12, v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_3

    add-int v13, v7, v11

    invoke-interface {v1, v13}, Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;->getStrokeIndex(I)Ljava/util/List;

    move-result-object v13

    if-nez v13, :cond_1

    :cond_0
    move-object/from16 v15, p0

    goto :goto_3

    :cond_1
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-gez v15, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    move-object/from16 v15, p0

    invoke-direct {v15, v0, v12, v14}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getUnionRectF(Ljava/util/ArrayList;Landroid/graphics/RectF;I)Landroid/graphics/RectF;

    move-result-object v12

    goto :goto_2

    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v15, p0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isEngMode()Z

    move-result v9

    if-eqz v9, :cond_5

    sget-object v9, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestRecognition, searchText rect : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/graphics/RectF;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestRecognition, resultSplit.length "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v9, v2

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v9, :cond_5

    aget-object v11, v2, v10

    sget-object v13, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestRecognition, resultSplit "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    iget-object v5, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultRectF:Ljava/util/List;

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v7}, Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultTextInterface;->getStrokeIndex(I)Ljava/util/List;

    move-result-object v5

    iget-object v9, v3, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;->resultStringColor:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getColor()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v7, v5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v15, p0

    return-void
.end method

.method private getSpenRecognizerResult(Ljava/util/ArrayList;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;",
            ")",
            "Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-direct {p0, v0, p3, p4}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->startRecognitionMonitor(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)V

    sget-object p4, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRecognition, try recognize, recognizeSleepTime/message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p3, 0x0

    :try_start_0
    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {p4}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->clearStrokes()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectStroke()Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {p4, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->recognize(I)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    const-string p4, "requestRecognition"

    invoke-static {p2, p4, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, p3

    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    const-string p4, "requestRecognition, try recognize done"

    invoke-static {p2, p4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestRecognition, result "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;->getResultCount()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;->getResultCount()I

    move-result p2

    if-gtz p2, :cond_1

    goto :goto_2

    :cond_1
    move-object p3, p1

    :goto_2
    return-object p3
.end method

.method private getUnionRectF(Ljava/util/ArrayList;Landroid/graphics/RectF;I)Landroid/graphics/RectF;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Landroid/graphics/RectF;",
            "I)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getDrawnRect()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    :goto_0
    return-object p2
.end method

.method private initLanguage()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsLanguageInit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mCurrentLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setLanguage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    sget-object v1, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;->TEXT_EXTRACTOR:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setRecognizerType(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$RecognizerType;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsLanguageInit:Z

    :cond_0
    return-void
.end method

.method private initSpenRecognizer()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;->setDisplayMetrics(FF)V

    return-void
.end method

.method private initTextRecognitionLanguage(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->initTextRecognitionLanguage(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionLanguage;->getFirstLanguageForTextRecognition()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mCurrentLanguage:Ljava/lang/String;

    return-void
.end method

.method private isSupportedHyperTextType(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private startRecognitionMonitor(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    const-string v0, "startRecognitionMonitor"

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;

    invoke-direct {v0, p2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager$1;-><init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;Ljava/util/concurrent/CountDownLatch;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/cm/base/common/thread/SenlThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->destroyRecognizer(Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;)V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizer:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;->close()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mRecognizerManager:Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizerManager;

    :cond_1
    return-void
.end method

.method public isPossible()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPossible : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsPossible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mIsPossible:Z

    return v0
.end method

.method public declared-synchronized requestRecognition(Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;ZI",
            "Ljava/lang/String;",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;",
            ")",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->initLanguage()V

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getSpenRecognizerResult(Ljava/util/ArrayList;ILjava/lang/String;Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;

    move-result-object p4

    if-nez p4, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->TAG:Ljava/lang/String;

    const-string p2, "requestRecognition result null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->getResultFromSpenRecognizerResult(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultSpenRecognizer;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTextRecognitionPlugIn(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionManager;->mTextRecognitionPlugIn:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionPlugInContract;

    return-void
.end method

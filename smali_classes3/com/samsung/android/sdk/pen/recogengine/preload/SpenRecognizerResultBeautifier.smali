.class public Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;
.super Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultBeautifierInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenRecognizerResultBeautifier"


# instance fields
.field private final DEFAULT_PEN_NAME:Ljava/lang/String;

.field private final mLineTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mObjectContainer:Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;


# direct methods
.method public constructor <init>(J)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    sget-object v3, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;->BEAUTIFIER:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;-><init>(JLcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;)V

    const-string v3, "com.samsung.android.sdk.pen.pen.preload.Marker"

    iput-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->DEFAULT_PEN_NAME:Ljava/lang/String;

    new-instance v4, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;-><init>()V

    iput-object v4, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->mObjectContainer:Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->mLineTextList:Ljava/util/List;

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultBeautifierInterface_GetHwrDataSize(J)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Beautifier result : HwrData count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SpenRecognizerResultBeautifier"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    move v7, v5

    :goto_0
    if-ge v7, v4, :cond_3

    invoke-static {v1, v2, v7}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultBeautifierInterface_GetHwrData_StrokeSize(JI)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Beautifier result : Stroke count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v5

    :goto_1
    if-ge v9, v8, :cond_1

    invoke-static {v1, v2, v7, v9}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultBeautifierInterface_GetHwrData_StrokePoints(JII)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Beautifier result : Point count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-array v12, v11, [Landroid/graphics/PointF;

    new-array v13, v11, [F

    new-array v14, v11, [I

    move v15, v5

    :goto_2
    if-ge v15, v11, :cond_0

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [F

    move/from16 v17, v4

    new-instance v4, Landroid/graphics/PointF;

    move-object/from16 v18, v6

    aget v6, v16, v5

    const/16 v19, 0x1

    aget v5, v16, v19

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v12, v15

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v13, v15

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    long-to-int v4, v4

    aput v4, v14, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v17

    move-object/from16 v6, v18

    const/4 v5, 0x0

    goto :goto_2

    :cond_0
    move/from16 v17, v4

    move-object/from16 v18, v6

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->mObjectContainer:Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    new-instance v5, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-direct {v5, v3, v12, v13, v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    move/from16 v17, v4

    move-object/from16 v18, v6

    invoke-static {v1, v2, v7}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultBeautifierInterface_GetHwrData_LineText(JI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v4, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->mLineTextList:Ljava/util/List;

    const-string v5, "[Non-Text]"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    iget-object v5, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->mLineTextList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v17

    move-object/from16 v6, v18

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getLineTextList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "SpenRecognizerResultBeautifier"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->mLineTextList:Ljava/util/List;

    return-object v0
.end method

.method public getStrokes()Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
    .locals 1

    const-string v0, "SpenRecognizerResultBeautifier"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultBeautifier;->mObjectContainer:Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    return-object v0
.end method

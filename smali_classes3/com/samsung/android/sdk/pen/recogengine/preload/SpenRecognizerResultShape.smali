.class public Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;
.super Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recogengine/interfaces/SpenRecognizerResultShapeInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "SenRecognizerResultShape"


# instance fields
.field private mCandidateShape:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateShapeName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecognizedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRelevance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokeIndex:[I


# direct methods
.method public constructor <init>(J)V
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    sget-object v3, Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;->SHAPE:Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;-><init>(JLcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultInterface$ResultType;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mCandidateShapeName:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mCandidateShape:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mRelevance:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mRecognizedPoints:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetCandidateShapeCount(J)I

    move-result v3

    invoke-static/range {p1 .. p2}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetStrokeIndex(J)[I

    move-result-object v4

    iput-object v4, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mStrokeIndex:[I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Shape candidate count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SenRecognizerResultShape"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_5

    invoke-static {v1, v2, v6}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetCandidateShapeName(JI)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mCandidateShapeName:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v8, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;-><init>()V

    invoke-static {v1, v2, v6}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetCandidateShape_GetStrokeSize(JI)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " : shape name = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", stroke count = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_2

    invoke-static {v1, v2, v6, v10}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetCandidateShape_GetPoints(JII)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " : point count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v14, v13, [Landroid/graphics/PointF;

    new-array v15, v13, [F

    new-array v11, v13, [I

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v13, :cond_0

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [F

    move/from16 v19, v3

    new-instance v3, Landroid/graphics/PointF;

    move/from16 v20, v9

    const/16 v17, 0x0

    aget v9, v18, v17

    move-object/from16 v21, v12

    const/16 v16, 0x1

    aget v12, v18, v16

    invoke-direct {v3, v9, v12}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v14, v4

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v15, v4

    move v3, v13

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    long-to-int v9, v12

    aput v9, v11, v4

    add-int/lit8 v4, v4, 0x1

    move v13, v3

    move/from16 v3, v19

    move/from16 v9, v20

    move-object/from16 v12, v21

    goto :goto_2

    :cond_0
    move/from16 v19, v3

    move/from16 v20, v9

    new-instance v3, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-direct {v3, v7, v14, v15, v11}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I)V

    invoke-virtual {v8, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_3

    :cond_1
    move/from16 v19, v3

    move/from16 v20, v9

    const-string v3, "pointList is wrong - null or zero size"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v19

    move/from16 v9, v20

    goto/16 :goto_1

    :cond_2
    move/from16 v19, v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->getObjectList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mCandidateShape:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const-string v3, "container object size is zero!"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    iget-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mRelevance:Ljava/util/ArrayList;

    invoke-static {v1, v2, v6}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetCandidateRelevance(JI)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v2, v6}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetRecognizedPointCount(JI)I

    invoke-static {v1, v2, v6}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;->SPenRecognizerResultShapeInterface_GetRecognizedPoints(JI)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [F

    new-instance v8, Landroid/graphics/PointF;

    const/4 v9, 0x0

    aget v10, v7, v9

    const/4 v11, 0x1

    aget v7, v7, v11

    invoke-direct {v8, v10, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    const/4 v9, 0x0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mRecognizedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v19

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public getCandidateRelevance(I)F
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->getCandidateShapeCount()I

    move-result v0

    const-string v1, "SenRecognizerResultShape"

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkIndex(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mRelevance:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public getCandidateShape(I)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->getCandidateShapeCount()I

    move-result v0

    const-string v1, "SenRecognizerResultShape"

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkIndex(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mCandidateShape:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    return-object p1
.end method

.method public getCandidateShapeCount()I
    .locals 1

    const-string v0, "SenRecognizerResultShape"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mCandidateShapeName:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCandidateShapeName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->getCandidateShapeCount()I

    move-result v0

    const-string v1, "SenRecognizerResultShape"

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkIndex(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mCandidateShapeName:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getRecognizedPoints(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->getCandidateShapeCount()I

    move-result v0

    const-string v1, "SenRecognizerResultShape"

    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkIndex(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mRecognizedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public getStrokeIndex()[I
    .locals 1

    const-string v0, "SenRecognizerResultShape"

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResult;->checkResult(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerResultShape;->mStrokeIndex:[I

    return-object v0
.end method

.class public Lcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerLib;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native SPenRecognizerResultBeautifierInterface_GetHwrDataSize(J)I
.end method

.method public static native SPenRecognizerResultBeautifierInterface_GetHwrData_LineText(JI)Ljava/lang/String;
.end method

.method public static native SPenRecognizerResultBeautifierInterface_GetHwrData_StrokePoints(JII)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end method

.method public static native SPenRecognizerResultBeautifierInterface_GetHwrData_StrokeSize(JI)I
.end method

.method public static native SPenRecognizerResultContainer_GetResult(JI)J
.end method

.method public static native SPenRecognizerResultContainer_GetResultCount(J)I
.end method

.method public static native SPenRecognizerResultContextInterface_GetEntityString(J)Ljava/lang/String;
.end method

.method public static native SPenRecognizerResultContextInterface_GetEntityStringLength(J)I
.end method

.method public static native SPenRecognizerResultContextInterface_GetEntityStrokeList(J)[I
.end method

.method public static native SPenRecognizerResultContextInterface_GetEntityStrokeListCount(J)I
.end method

.method public static native SPenRecognizerResultContextInterface_GetEntityType(J)I
.end method

.method public static native SPenRecognizerResultDocumentInterface_GetGroupCount(J)I
.end method

.method public static native SPenRecognizerResultDocumentInterface_GetGroupStroke(JI)[I
.end method

.method public static native SPenRecognizerResultDocumentInterface_GetGroupStrokeCount(JI)I
.end method

.method public static native SPenRecognizerResultDocumentInterface_GetGroupType(JI)I
.end method

.method public static native SPenRecognizerResultDocumentInterface_GetSubGroupCount(JI)I
.end method

.method public static native SPenRecognizerResultDocumentInterface_GetSubGroupStroke(JII)[I
.end method

.method public static native SPenRecognizerResultDocumentInterface_GetSubGroupStrokeCount(JII)I
.end method

.method public static native SPenRecognizerResultDocumentInterface_IsSubGroupSkewed(JII)Z
.end method

.method public static native SPenRecognizerResultInterface_GetResultType(J)I
.end method

.method public static native SPenRecognizerResultMathExpressionInterface_GetResultCount(J)I
.end method

.method public static native SPenRecognizerResultMathExpressionInterface_GetResultString(JI)Ljava/lang/String;
.end method

.method public static native SPenRecognizerResultShapeInterface_GetCandidateRelevance(JI)F
.end method

.method public static native SPenRecognizerResultShapeInterface_GetCandidateShapeCount(J)I
.end method

.method public static native SPenRecognizerResultShapeInterface_GetCandidateShapeName(JI)Ljava/lang/String;
.end method

.method public static native SPenRecognizerResultShapeInterface_GetCandidateShape_GetPoints(JII)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end method

.method public static native SPenRecognizerResultShapeInterface_GetCandidateShape_GetStrokeSize(JI)I
.end method

.method public static native SPenRecognizerResultShapeInterface_GetRecognizedPointCount(JI)I
.end method

.method public static native SPenRecognizerResultShapeInterface_GetRecognizedPoints(JI)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/ArrayList<",
            "[F>;"
        }
    .end annotation
.end method

.method public static native SPenRecognizerResultShapeInterface_GetStrokeIndex(J)[I
.end method

.method public static native SPenRecognizerResultTextInterface_GetResultCount(J)I
.end method

.method public static native SPenRecognizerResultTextInterface_GetResultString(JI)Ljava/lang/String;
.end method

.method public static native SPenRecognizerResultTextInterface_GetStrokeIndex(JI)[I
.end method

.method public static native SPenRecognizerResultTextInterface_GetStrokeIndexCount(JI)I
.end method

.method public static native SPenRecognizer_AddHwrDataWithStrokes(J[ILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J[I",
            "Ljava/util/ArrayList<",
            "[F>;",
            "Ljava/util/ArrayList<",
            "[F>;I)V"
        }
    .end annotation
.end method

.method public static native SPenRecognizer_AddStroke(J[F[FF)V
.end method

.method public static native SPenRecognizer_AddStroke(J[F[FFLcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;)V
.end method

.method public static native SPenRecognizer_Cancel(J)V
.end method

.method public static native SPenRecognizer_ClearHwrDataList(J)V
.end method

.method public static native SPenRecognizer_ClearStrokes(J)V
.end method

.method public static native SPenRecognizer_Construct()J
.end method

.method public static native SPenRecognizer_Destroy(J)V
.end method

.method public static native SPenRecognizer_GetDisplayMetrics(J)[F
.end method

.method public static native SPenRecognizer_GetLanguage(J)Ljava/lang/String;
.end method

.method public static native SPenRecognizer_GetRecognizerType(J)I
.end method

.method public static native SPenRecognizer_GetTextEngineVersion(J)Ljava/lang/String;
.end method

.method public static native SPenRecognizer_GetTextRecognitionMode(J)Ljava/lang/String;
.end method

.method public static native SPenRecognizer_GetTextRecognitionType(J)Ljava/lang/String;
.end method

.method public static native SPenRecognizer_Recognize(J)J
.end method

.method public static native SPenRecognizer_Recognize(JFF)J
.end method

.method public static native SPenRecognizer_Recognize(JI)J
.end method

.method public static native SPenRecognizer_Request(JLcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;)V
.end method

.method public static native SPenRecognizer_Request(JLcom/samsung/android/sdk/pen/recogengine/preload/SpenRecognizerPlugin$SpenRecognizerListener;FF)V
.end method

.method public static native SPenRecognizer_SetConfigurationItem(JLjava/lang/String;F)V
.end method

.method public static native SPenRecognizer_SetDisplayMetrics(JFF)V
.end method

.method public static native SPenRecognizer_SetDocumentAnalyzerData(J[B)Z
.end method

.method public static native SPenRecognizer_SetDocumentLineSplitterData(J[B)Z
.end method

.method public static native SPenRecognizer_SetLanguageData(JLjava/lang/String;[B[B)Z
.end method

.method public static native SPenRecognizer_SetMathExpressionData(J[B)Z
.end method

.method public static native SPenRecognizer_SetOneUIVersion(JI)V
.end method

.method public static native SPenRecognizer_SetRecognizerType(JI)V
.end method

.method public static native SPenRecognizer_SetTextRecognitionMode(JLjava/lang/String;)Z
.end method

.method public static native SPenRecognizer_SetTextRecognitionStrokeMode(JZ)Z
.end method

.method public static native SPenRecognizer_SetTextRecognitionType(JLjava/lang/String;)Z
.end method

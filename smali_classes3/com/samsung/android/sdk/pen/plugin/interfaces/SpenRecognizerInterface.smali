.class public interface abstract Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPluginInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;,
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;,
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;,
        Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;
    }
.end annotation


# virtual methods
.method public abstract addHwrDataWith(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V
.end method

.method public abstract addStroke(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V
.end method

.method public abstract addStroke([F[F)V
.end method

.method public abstract cancel()V
.end method

.method public abstract clearHwrDataList()V
.end method

.method public abstract clearStrokes()V
.end method

.method public abstract close()V
.end method

.method public abstract getDisplayMetrics()[F
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getRecognizerType()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;
.end method

.method public abstract getTextEngineVersion()Ljava/lang/String;
.end method

.method public abstract getTextRecognitionMode()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;
.end method

.method public abstract getTextRecognitionType()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;
.end method

.method public abstract recognize()Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
.end method

.method public abstract recognize(FF)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
.end method

.method public abstract recognize(I)Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;
.end method

.method public abstract request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;)V
.end method

.method public abstract request(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$SpenRecognizerResultListener;FF)V
.end method

.method public abstract setAnalyzerData([B)V
.end method

.method public abstract setConfigurationItem(Ljava/lang/String;F)V
.end method

.method public abstract setDisplayMetrics(FF)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setLanguageData(Ljava/lang/String;[B[B)V
.end method

.method public abstract setLineSplitterData([B)V
.end method

.method public abstract setMathData([B)V
.end method

.method public abstract setRecognizerType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$RecognizerType;)V
.end method

.method public abstract setStrokeModeEnabled(Z)V
.end method

.method public abstract setTextRecognitionMode(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextMode;)Z
.end method

.method public abstract setTextRecognitionType(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerInterface$TextType;)Z
.end method

.method public abstract setUserDictionary(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.class Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;->mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;

    const-string v1, "SpenHwrTextRecognizer"

    if-nez v0, :cond_0

    const-string p1, "EventListener : onResult : mListener is null!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult: status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;->mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$1;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;->onResult(ILcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$Result;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$EventListener;->mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenHwrTextRecognizer$RecognitionListener;

    return-void
.end method

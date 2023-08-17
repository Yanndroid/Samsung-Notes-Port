.class Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/pen/recogengine/SpenRecognizer$ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventListener"
.end annotation


# instance fields
.field private mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;

.field public final synthetic this$0:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;->this$0:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;->mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;

    if-nez v0, :cond_0

    const-string p1, "SpenTextRecognizer"

    const-string p2, "EventListener : onResult : mListener is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;->this$0:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->access$002(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;->this$0:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;->access$102(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer;Z)Z

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;->mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;

    new-instance v1, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenRecognizerResultContainerInterface;Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$1;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;->onResult(ILcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$Result;)V

    return-void
.end method

.method public setListener(Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$EventListener;->mListener:Lcom/samsung/android/sdk/pen/recogengine/SpenTextRecognizer$RecognitionListener;

    return-void
.end method

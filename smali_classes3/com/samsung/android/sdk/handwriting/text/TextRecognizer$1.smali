.class Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;->this$0:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;->this$0:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->access$100(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;)Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;->this$0:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    invoke-static {v0}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->access$100(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;)Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;)V

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;->onResult(ILcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;)V

    return-void
.end method

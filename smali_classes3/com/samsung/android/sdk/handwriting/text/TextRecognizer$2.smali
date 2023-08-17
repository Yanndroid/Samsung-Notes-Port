.class Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->requestRecognition(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

.field public final synthetic val$l:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$2;->this$0:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$2;->val$l:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$2;->val$l:Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$RecognitionListener;->onResult(ILcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;)V

    return-void
.end method

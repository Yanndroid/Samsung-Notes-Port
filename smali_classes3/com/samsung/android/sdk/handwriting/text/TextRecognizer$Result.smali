.class public Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final NULL_STRING_ARRAY:[Ljava/lang/String;

.field private mResult:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->NULL_STRING_ARRAY:[Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->mResult:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;-><init>(Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;)V

    return-void
.end method


# virtual methods
.method public getCandidates()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->mResult:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "result is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->NULL_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;->getCandidates()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEndPointOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->mResult:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;->getEndPointOffset(I)I

    move-result p1

    return p1
.end method

.method public getEndStrokeIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->mResult:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;->getEndStrokeIndex(I)I

    move-result p1

    return p1
.end method

.method public getStartPointOffset(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->mResult:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;->getStartPointOffset(I)I

    move-result p1

    return p1
.end method

.method public getStartStrokeIndex(I)I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer$Result;->mResult:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/handwriting/text/TextRecognizer;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "result is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$ResultInterface;->getStartStrokeIndex(I)I

    move-result p1

    return p1
.end method

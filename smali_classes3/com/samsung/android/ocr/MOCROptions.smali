.class public Lcom/samsung/android/ocr/MOCROptions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ocr/MOCROptions$Builder;
    }
.end annotation


# instance fields
.field private final disableLineProcessing:Z

.field private final forceLang:Z

.field private final getCharResult:Z

.field private final numThreads:I

.field private final optimizeCpu:Z

.field private final runInverted:Z

.field private final useBeamSearch:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/ocr/MOCROptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$000(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->useBeamSearch:Z

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$100(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->disableLineProcessing:Z

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$200(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->optimizeCpu:Z

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$300(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->getCharResult:Z

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$400(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->forceLang:Z

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$500(Lcom/samsung/android/ocr/MOCROptions$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->runInverted:Z

    invoke-static {p1}, Lcom/samsung/android/ocr/MOCROptions$Builder;->access$600(Lcom/samsung/android/ocr/MOCROptions$Builder;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/ocr/MOCROptions;->numThreads:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/ocr/MOCROptions$Builder;Lcom/samsung/android/ocr/MOCROptions$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/ocr/MOCROptions;-><init>(Lcom/samsung/android/ocr/MOCROptions$Builder;)V

    return-void
.end method


# virtual methods
.method public getNumThreads()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/ocr/MOCROptions;->numThreads:I

    return v0
.end method

.method public isDisableLineProcessing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->disableLineProcessing:Z

    return v0
.end method

.method public isForceLang()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->forceLang:Z

    return v0
.end method

.method public isGetCharResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->getCharResult:Z

    return v0
.end method

.method public isOptimizeCpu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->optimizeCpu:Z

    return v0
.end method

.method public isRunInverted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->runInverted:Z

    return v0
.end method

.method public isUseBeamSearch()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/ocr/MOCROptions;->useBeamSearch:Z

    return v0
.end method

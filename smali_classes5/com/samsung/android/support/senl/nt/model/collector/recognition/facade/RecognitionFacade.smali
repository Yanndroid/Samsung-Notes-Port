.class public Lcom/samsung/android/support/senl/nt/model/collector/recognition/facade/RecognitionFacade;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recognize(Landroid/content/Context;Ljava/lang/String;Landroid/os/CancellationSignal;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/model/collector/util/RecognitionUtil;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;

    invoke-direct {v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2, p3}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->requestRecognize(Ljava/lang/String;Landroid/os/CancellationSignal;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;->getTextInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->close()V

    return-object v0
.end method

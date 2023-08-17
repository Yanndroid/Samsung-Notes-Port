.class public Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/CollectorClassConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToClass(I)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TEXT_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_0

    const-class p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TextSearchCollector;

    return-object p0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->OBJECT_RECOGNITION:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_1

    const-class p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/ObjectRecognitionCollector;

    return-object p0

    :cond_1
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->PDF_SEARCH:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_2

    const-class p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/PdfSearchCollector;

    return-object p0

    :cond_2
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TITLE:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_3

    const-class p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TitleCollector;

    return-object p0

    :cond_3
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->TAG:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_4

    const-class p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/TagCollector;

    return-object p0

    :cond_4
    sget-object v0, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->MEDIA:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$LinkWith;->getValue()I

    move-result v0

    if-ne p0, v0, :cond_5

    const-class p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/MediaCollector;

    return-object p0

    :cond_5
    const-class p0, Lcom/samsung/android/support/senl/nt/model/collector/subcollectors/DummyCollector;

    return-object p0
.end method

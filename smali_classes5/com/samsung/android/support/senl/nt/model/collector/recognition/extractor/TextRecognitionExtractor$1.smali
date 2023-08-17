.class Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;->requestExtract(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/WorkerInfoContract;)Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/ResultTextRecognition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor$1;->this$0:Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;)I
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object p2, p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;->rect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/model/collector/recognition/extractor/TextRecognitionExtractor$1;->compare(Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;Lcom/samsung/android/support/senl/nt/model/collector/recognition/data/TextInfo;)I

    move-result p1

    return p1
.end method

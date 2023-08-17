.class Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UnderLineDrawInfo"
.end annotation


# instance fields
.field public final entityLabel:I

.field public final entityType:Ljava/lang/String;

.field public final start:Landroid/graphics/PointF;

.field public final stop:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;->entityLabel:I

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;->entityType:Ljava/lang/String;

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;->getStart()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;->start:Landroid/graphics/PointF;

    new-instance p1, Landroid/graphics/PointF;

    invoke-virtual {p3}, Lcom/samsung/android/app/sdk/deepsky/visiontext/ocrwrapper/OcrResult$UnderlineInfo;->getStop()Landroid/graphics/PointF;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/graphics/PointF;-><init>(Landroid/graphics/PointF;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;->stop:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;->start:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/visiontext/selectionui/VisionTextDrawHelperImpl$UnderLineDrawInfo;->stop:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object v1, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.class Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils;->sortVertexList([Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic val$averageX:F

.field public final synthetic val$averageY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;->val$averageY:F

    iput p2, p0, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;->val$averageX:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;)I
    .locals 4

    iget v0, p1, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;->val$averageY:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget p1, p1, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;->val$averageX:F

    sub-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget p1, p2, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->y:F

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;->val$averageY:F

    sub-float/2addr p1, v2

    float-to-double v2, p1

    iget p1, p2, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;->x:F

    iget p2, p0, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;->val$averageX:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    cmpg-double v2, v0, p1

    if-gez v2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmpl-double p1, v0, p1

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    check-cast p2, Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/docscan/common/util/DocScanUtils$1;->compare(Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;Lcom/samsung/android/support/senl/docscan/model/DocScanData$Vertex;)I

    move-result p1

    return p1
.end method

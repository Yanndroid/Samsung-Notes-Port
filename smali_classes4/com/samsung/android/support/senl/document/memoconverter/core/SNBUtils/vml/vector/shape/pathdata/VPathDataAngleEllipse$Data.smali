.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Data"
.end annotation


# instance fields
.field private mCenter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

.field private mEndAngle:F

.field private mSize:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

.field private mStartAngle:F

.field public final synthetic this$0:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->this$0:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mCenter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    new-instance p1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mSize:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    return-void
.end method


# virtual methods
.method public getCenter()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mCenter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    return-object v0
.end method

.method public getEndAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mEndAngle:F

    return v0
.end method

.method public getSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mSize:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    return-object v0
.end method

.method public getStartAngle()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mStartAngle:F

    return v0
.end method

.method public setCenter(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mCenter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    return-void
.end method

.method public setEndAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mEndAngle:F

    return-void
.end method

.method public setSize(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mSize:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    return-void
.end method

.method public setStartAngle(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mStartAngle:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data [mFullStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->this$0:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;->access$000(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mCenter:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mSize:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStartAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mStartAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mEndAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataAngleEllipse$Data;->mEndAngle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

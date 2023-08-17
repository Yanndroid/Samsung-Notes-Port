.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;
.super Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "v:line"


# instance fields
.field public mFrom:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

.field public mTo:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mFrom:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    return-object v0
.end method

.method public getTo()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mTo:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    return-object v0
.end method

.method public setDefaultMember()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->setDefaultMember()V

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mFrom:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mTo:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    return-void
.end method

.method public setFrom(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mFrom:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    return-void
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mFrom:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setPoint(Ljava/lang/String;)V

    return-void
.end method

.method public setTo(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mTo:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mTo:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setPoint(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Line [toString()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [mFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mFrom:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/predefined/VPredefinedLine;->mTo:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;
.super Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;
    }
.end annotation


# instance fields
.field private mFullCmd:Ljava/lang/String;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mFullCmd:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getFullCmd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mFullCmd:Ljava/lang/String;

    return-object v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public makeListFromFullCmd([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->getFullCmd()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->getFloatList([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSx(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSy(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSx(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSy(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSx(F)V

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object p3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Float;

    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p4

    invoke-virtual {p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSy(F)V

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mList:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public setDefaultMember()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataBase;->setDefaultMember()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public setFullCmd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mFullCmd:Ljava/lang/String;

    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mList:Ljava/util/ArrayList;

    return-void
.end method

.method public setList(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, ".*@.*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->setFullCmd(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    new-instance v1, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;

    const/4 v3, -0x1

    invoke-direct {v1, p1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->getIntegerList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;-><init>(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSx(F)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl1()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSy(F)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSx(F)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getControl2()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSy(F)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSx(F)V

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->getEnd()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonPoint;->setSy(F)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_1
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CurveTo ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataCurveTo$Data;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

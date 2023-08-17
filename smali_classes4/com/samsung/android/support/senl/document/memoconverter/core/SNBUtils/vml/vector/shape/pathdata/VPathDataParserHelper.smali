.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final n:I

.field public pos:I

.field private final s:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->s:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->pos:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->n:I

    return-void
.end method

.method public static getValueFromString(Ljava/lang/String;[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F
    .locals 1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p4

    if-lez p4, :cond_6

    const-string p4, "@"

    invoke-virtual {p0, p4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p2, :cond_6

    aget p0, p2, p0

    goto/16 :goto_1

    :cond_0
    const-string p2, "#"

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p1, :cond_6

    aget p0, p1, p0

    goto :goto_1

    :cond_1
    const-string p1, "width"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getWidth()F

    move-result p0

    goto :goto_1

    :cond_2
    const-string p1, "height"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getHeight()F

    move-result p0

    goto :goto_1

    :cond_3
    const-string p1, "xcenter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    if-eqz p1, :cond_4

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordOrigin()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;->getSx()F

    move-result p0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getWidth()F

    move-result p1

    :goto_0
    div-float/2addr p1, p2

    add-float/2addr p0, p1

    goto :goto_1

    :cond_4
    const-string p1, "ycenter"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordOrigin()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordOrigin;->getSy()F

    move-result p0

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;->getCoordSize()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/common/VCommonCoordSize;->getHeight()F

    move-result p1

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseFloat(Ljava/lang/String;)F

    move-result p0

    goto :goto_1

    :cond_6
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public getFloatList([F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F[F",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->read()C

    move-result v2

    const/16 v3, 0x30

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->getValueFromString(Ljava/lang/String;[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->getValueFromString(Ljava/lang/String;[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_3
    const/16 v3, 0x40

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->getValueFromString(Ljava/lang/String;[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getIntegerList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->read()C

    move-result v2

    const/16 v3, 0x30

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    const/16 v4, 0x2c

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilString;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public read()C
    .locals 2

    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->pos:I

    iget v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->n:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->pos:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->pos:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/pathdata/VPathDataParserHelper;->s:Ljava/lang/CharSequence;

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

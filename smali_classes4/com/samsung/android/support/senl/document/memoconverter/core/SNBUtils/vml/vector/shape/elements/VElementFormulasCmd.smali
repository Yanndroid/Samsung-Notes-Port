.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulasCmd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FABS:Ljava/lang/String; = "abs"

.field public static final FATAN2:Ljava/lang/String; = "atan2"

.field public static final FCOS:Ljava/lang/String; = "cos"

.field public static final FCOSATAN2:Ljava/lang/String; = "cosatan2"

.field public static final FELLIPSE:Ljava/lang/String; = "ellipse"

.field public static final FIF:Ljava/lang/String; = "if"

.field public static final FMAX:Ljava/lang/String; = "max"

.field public static final FMID:Ljava/lang/String; = "mid"

.field public static final FMIN:Ljava/lang/String; = "min"

.field public static final FMOD:Ljava/lang/String; = "mod"

.field public static final FPROD:Ljava/lang/String; = "prod"

.field public static final FPRODUCT:Ljava/lang/String; = "product"

.field public static final FSIN:Ljava/lang/String; = "sin"

.field public static final FSINATAN2:Ljava/lang/String; = "sinatan2"

.field public static final FSQRT:Ljava/lang/String; = "sqrt"

.field public static final FSUM:Ljava/lang/String; = "sum"

.field public static final FSUMANGLE:Ljava/lang/String; = "sumangle"

.field public static final FTAN:Ljava/lang/String; = "tan"

.field public static final FVAL:Ljava/lang/String; = "val"

.field public static final VEMUHEIGHT:Ljava/lang/String; = "emuheight"

.field public static final VEMUHEIGHT2:Ljava/lang/String; = "emuheight2"

.field public static final VEMUWIDTH:Ljava/lang/String; = "emuwidth"

.field public static final VEMUWIDTH2:Ljava/lang/String; = "emuwidth2"

.field public static final VHASFILL:Ljava/lang/String; = "hasfill"

.field public static final VHASSTROKE:Ljava/lang/String; = "hasstroke"

.field public static final VHEIGHT:Ljava/lang/String; = "height"

.field public static final VPIXELHEIGHT:Ljava/lang/String; = "pixelheight"

.field public static final VPIXELLINEWIDTH:Ljava/lang/String; = "pixellinewidth"

.field public static final VPIXELWIDTH:Ljava/lang/String; = "pixelwidth"

.field public static final VWIDTH:Ljava/lang/String; = "width"

.field public static final VXCENTER:Ljava/lang/String; = "xcenter"

.field public static final VXLIMO:Ljava/lang/String; = "xlimo"

.field public static final VYCENTER:Ljava/lang/String; = "ycenter"

.field public static final VYLIMO:Ljava/lang/String; = "ylimo"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateFucntion(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;",
            ")F"
        }
    .end annotation

    invoke-static {p1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilArray;->toFloatArray(Ljava/util/ArrayList;)[F

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilArray;->toFloatArray(Ljava/util/ArrayList;)[F

    move-result-object p2

    const-string v0, " "

    const-string v1, ","

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".*[,]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    aget-object v1, p0, v1

    invoke-static {v1, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulasCmd;->getValueFromString(Ljava/lang/String;[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x2

    if-le v0, v3, :cond_1

    aget-object v3, p0, v3

    invoke-static {v3, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulasCmd;->getValueFromString(Ljava/lang/String;[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    const/4 v4, 0x3

    if-le v0, v4, :cond_2

    aget-object v0, p0, v4

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/elements/VElementFormulasCmd;->getValueFromString(Ljava/lang/String;[F[FLcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeShape;)F

    move-result p1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    const/4 p2, 0x0

    aget-object p3, p0, p2

    const-string p4, "val"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_3

    move v2, v1

    goto/16 :goto_9

    :cond_3
    aget-object p3, p0, p2

    const-string p4, "sum"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_4

    add-float/2addr v1, v3

    :goto_3
    sub-float v2, v1, p1

    goto/16 :goto_9

    :cond_4
    aget-object p3, p0, p2

    const-string p4, "prod"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_5

    :goto_4
    mul-float/2addr v1, v3

    div-float v2, v1, p1

    goto/16 :goto_9

    :cond_5
    aget-object p3, p0, p2

    const-string p4, "product"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_6

    goto :goto_4

    :cond_6
    aget-object p3, p0, p2

    const-string p4, "mid"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_7

    add-float/2addr v1, v3

    const/high16 p0, 0x40000000    # 2.0f

    div-float v2, v1, p0

    goto/16 :goto_9

    :cond_7
    aget-object p3, p0, p2

    const-string p4, "abs"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_8

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto/16 :goto_9

    :cond_8
    aget-object p3, p0, p2

    const-string p4, "min"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_9

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto/16 :goto_9

    :cond_9
    aget-object p3, p0, p2

    const-string p4, "max"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_a

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto/16 :goto_9

    :cond_a
    aget-object p3, p0, p2

    const-string p4, "if"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_c

    cmpl-float p0, v1, v2

    if-lez p0, :cond_b

    move v2, v3

    goto/16 :goto_9

    :cond_b
    move v2, p1

    goto/16 :goto_9

    :cond_c
    aget-object p3, p0, p2

    const-string p4, "mod"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_d

    mul-float/2addr v1, v1

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    mul-float/2addr p1, p1

    add-float/2addr v1, p1

    :goto_5
    float-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    :goto_6
    double-to-float v2, p0

    goto/16 :goto_9

    :cond_d
    aget-object p3, p0, p2

    const-string p4, "atan2"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_e

    const-wide/high16 p0, 0x40f0000000000000L    # 65536.0

    float-to-double p2, v3

    float-to-double v0, v1

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p2

    invoke-static {p2, p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->radianToDegree(D)D

    move-result-wide p2

    :goto_7
    mul-double/2addr p2, p0

    double-to-float v2, p2

    goto/16 :goto_9

    :cond_e
    aget-object p3, p0, p2

    const-string p4, "sin"

    invoke-virtual {p4, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    const/high16 p4, 0x47800000    # 65536.0f

    if-nez p3, :cond_f

    div-float/2addr v3, p4

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->degreeToRadian(F)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p1, v1

    float-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->sin(D)D

    move-result-wide p3

    :goto_8
    mul-double/2addr p1, p3

    double-to-float v2, p1

    goto/16 :goto_9

    :cond_f
    aget-object p3, p0, p2

    const-string v0, "cos"

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_10

    div-float/2addr v3, p4

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->degreeToRadian(F)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p1, v1

    float-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->cos(D)D

    move-result-wide p3

    goto :goto_8

    :cond_10
    aget-object p3, p0, p2

    const-string v0, "cosatan2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_11

    float-to-double p2, v1

    float-to-double p0, p1

    float-to-double v0, v3

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    goto :goto_7

    :cond_11
    aget-object p3, p0, p2

    const-string v0, "sinatan2"

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_12

    float-to-double p2, v1

    float-to-double p0, p1

    float-to-double v0, v3

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    goto :goto_7

    :cond_12
    aget-object p3, p0, p2

    const-string v0, "sqrt"

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_13

    goto/16 :goto_5

    :cond_13
    aget-object p3, p0, p2

    const-string v0, "sumangle"

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_14

    mul-float/2addr v3, p4

    add-float/2addr v1, v3

    mul-float/2addr p1, p4

    goto/16 :goto_3

    :cond_14
    aget-object p3, p0, p2

    const-string v0, "ellipse"

    invoke-virtual {v0, p3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_15

    float-to-double p0, p1

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    div-float/2addr v1, v3

    float-to-double v0, v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    goto/16 :goto_6

    :cond_15
    aget-object p0, p0, p2

    const-string p1, "tan"

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_16

    div-float/2addr v3, p4

    invoke-static {v3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->degreeToRadian(F)D

    move-result-wide p0

    double-to-float p0, p0

    float-to-double p1, v1

    float-to-double p3, p0

    invoke-static {p3, p4}, Ljava/lang/Math;->tan(D)D

    move-result-wide p3

    goto/16 :goto_8

    :cond_16
    :goto_9
    return v2
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

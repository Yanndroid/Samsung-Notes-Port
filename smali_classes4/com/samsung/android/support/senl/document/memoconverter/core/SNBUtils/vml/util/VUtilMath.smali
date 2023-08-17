.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static degreeToRadian(F)D
    .locals 4

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getPointDistance(DDDD)D
    .locals 0

    sub-double/2addr p0, p4

    sub-double/2addr p2, p6

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getThreePointDegree(DDDDDDZFZ)D
    .locals 12

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getPointDistance(DDDD)D

    move-result-wide v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static/range {p4 .. p11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getPointDistance(DDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double v10, v0, v2

    move-wide v0, p0

    move-wide v2, p2

    move-wide/from16 v4, p8

    move-wide/from16 v6, p10

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getPointDistance(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v10, v0

    invoke-static/range {p0 .. p7}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getPointDistance(DDDD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    invoke-static/range {p4 .. p11}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->getPointDistance(DDDD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    div-double/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->radianToDegree(D)D

    move-result-wide v0

    const-wide v2, 0x4076800000000000L    # 360.0

    if-eqz p14, :cond_1

    cmpg-double v4, p6, p10

    if-gez v4, :cond_0

    return-wide v0

    :cond_0
    sub-double/2addr v2, v0

    return-wide v2

    :cond_1
    sub-double v4, p8, p4

    move/from16 v6, p13

    neg-float v6, v6

    invoke-static {v6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->degreeToRadian(F)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v4, v7

    sub-double v7, p10, p6

    invoke-static {v6}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/util/VUtilMath;->degreeToRadian(F)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    const-wide/16 v6, 0x0

    cmpl-double v4, v6, v4

    if-eqz p12, :cond_3

    if-lez v4, :cond_2

    sub-double/2addr v2, v0

    return-wide v2

    :cond_2
    return-wide v0

    :cond_3
    if-lez v4, :cond_4

    neg-double v0, v0

    return-wide v0

    :cond_4
    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public static radianToDegree(D)D
    .locals 2

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

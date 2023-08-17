.class public Lorg/xiph/speex/Vbr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MIN_ENERGY:I = 0x1770

.field public static final NOISE_POW:F = 0.3f

.field public static final VBR_MEMORY_SIZE:I = 0x5

.field public static final hb_thresh:[[F

.field public static final nb_thresh:[[F

.field public static final uhb_thresh:[[F


# instance fields
.field private accum_sum:F

.field private average_energy:F

.field private consec_noise:I

.field private energy_alpha:F

.field private last_energy:F

.field private last_log_energy:[F

.field private last_pitch_coef:F

.field private last_quality:F

.field private noise_accum:F

.field private noise_accum_count:F

.field private noise_level:F

.field private soft_pitch:F


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x9

    new-array v0, v0, [[F

    const/16 v1, 0xb

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v6, 0x3

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v7, 0x4

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v8, 0x5

    aput-object v2, v0, v8

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v9, 0x6

    aput-object v2, v0, v9

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    const/4 v9, 0x7

    aput-object v2, v0, v9

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    const/16 v9, 0x8

    aput-object v2, v0, v9

    sput-object v0, Lorg/xiph/speex/Vbr;->nb_thresh:[[F

    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_c

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_d

    aput-object v2, v0, v7

    sput-object v0, Lorg/xiph/speex/Vbr;->hb_thresh:[[F

    new-array v0, v5, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_e

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_f

    aput-object v1, v0, v4

    sput-object v0, Lorg/xiph/speex/Vbr;->uhb_thresh:[[F

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_1
    .array-data 4
        0x40600000    # 3.5f
        0x40200000    # 2.5f
        0x40000000    # 2.0f
        0x3f99999a    # 1.2f
        0x3f000000    # 0.5f
        0x0
        -0x41000000    # -0.5f
        -0x40cccccd    # -0.7f
        -0x40b33333    # -0.8f
        -0x4099999a    # -0.9f
        -0x40800000    # -1.0f
    .end array-data

    :array_2
    .array-data 4
        0x41200000    # 10.0f
        0x40d00000    # 6.5f
        0x40a66666    # 5.2f
        0x40900000    # 4.5f
        0x4079999a    # 3.9f
        0x40600000    # 3.5f
        0x40400000    # 3.0f
        0x40200000    # 2.5f
        0x40133333    # 2.3f
        0x3fe66666    # 1.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x41300000    # 11.0f
        0x410ccccd    # 8.8f
        0x40f00000    # 7.5f
        0x40d00000    # 6.5f
        0x40a00000    # 5.0f
        0x4079999a    # 3.9f
        0x4079999a    # 3.9f
        0x4079999a    # 3.9f
        0x40600000    # 3.5f
        0x40400000    # 3.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x411e6666    # 9.9f
        0x41100000    # 9.0f
        0x41000000    # 8.0f
        0x40e00000    # 7.0f
        0x40d00000    # 6.5f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40800000    # 4.0f
        0x40000000    # 2.0f
    .end array-data

    :array_5
    .array-data 4
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41180000    # 9.5f
        0x41100000    # 9.0f
        0x41000000    # 8.0f
        0x40e00000    # 7.0f
        0x40d00000    # 6.5f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
    .end array-data

    :array_6
    .array-data 4
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41180000    # 9.5f
        0x41080000    # 8.5f
        0x41000000    # 8.0f
        0x40d00000    # 6.5f
        0x40800000    # 4.0f
    .end array-data

    :array_7
    .array-data 4
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x411ccccd    # 9.8f
        0x40f00000    # 7.5f
        0x40b00000    # 5.5f
    .end array-data

    :array_8
    .array-data 4
        0x41000000    # 8.0f
        0x40a00000    # 5.0f
        0x406ccccd    # 3.7f
        0x40400000    # 3.0f
        0x40200000    # 2.5f
        0x40000000    # 2.0f
        0x3fe66666    # 1.8f
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_a
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_b
    .array-data 4
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41180000    # 9.5f
        0x41080000    # 8.5f
        0x40f00000    # 7.5f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x4079999a    # 3.9f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_c
    .array-data 4
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41180000    # 9.5f
        0x410b3333    # 8.7f
        0x40f9999a    # 7.8f
        0x40e00000    # 7.0f
        0x40d00000    # 6.5f
        0x40800000    # 4.0f
    .end array-data

    :array_d
    .array-data 4
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x41300000    # 11.0f
        0x411ccccd    # 9.8f
        0x40f00000    # 7.5f
        0x40b00000    # 5.5f
    .end array-data

    :array_e
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_f
    .array-data 4
        0x4079999a    # 3.9f
        0x40200000    # 2.5f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/xiph/speex/Vbr;->average_energy:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lorg/xiph/speex/Vbr;->last_energy:F

    iput v0, p0, Lorg/xiph/speex/Vbr;->accum_sum:F

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, Lorg/xiph/speex/Vbr;->energy_alpha:F

    iput v0, p0, Lorg/xiph/speex/Vbr;->soft_pitch:F

    iput v0, p0, Lorg/xiph/speex/Vbr;->last_pitch_coef:F

    iput v0, p0, Lorg/xiph/speex/Vbr;->last_quality:F

    const-wide v0, 0x40b7700000000000L    # 6000.0

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lorg/xiph/speex/Vbr;->noise_accum:F

    const v3, 0x3d4ccccd    # 0.05f

    iput v3, p0, Lorg/xiph/speex/Vbr;->noise_accum_count:F

    div-float/2addr v2, v3

    iput v2, p0, Lorg/xiph/speex/Vbr;->noise_level:F

    const/4 v2, 0x0

    iput v2, p0, Lorg/xiph/speex/Vbr;->consec_noise:I

    const/4 v3, 0x5

    new-array v4, v3, [F

    iput-object v4, p0, Lorg/xiph/speex/Vbr;->last_log_energy:[F

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v4, p0, Lorg/xiph/speex/Vbr;->last_log_energy:[F

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    double-to-float v5, v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public analysis([FIIF)F
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    shr-int/lit8 v7, v1, 0x1

    if-ge v5, v7, :cond_0

    aget v7, p1, v5

    aget v8, p1, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v7, v1, :cond_1

    aget v8, p1, v7

    aget v9, p1, v7

    mul-float/2addr v8, v9

    add-float/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-float v1, v6, v5

    const v7, 0x45bb8000    # 6000.0f

    add-float v8, v1, v7

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x5

    if-ge v9, v11, :cond_2

    iget-object v11, v0, Lorg/xiph/speex/Vbr;->last_log_energy:[F

    aget v12, v11, v9

    sub-float v12, v8, v12

    aget v11, v11, v9

    sub-float v11, v8, v11

    mul-float/2addr v12, v11

    add-float/2addr v10, v12

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/high16 v9, 0x43160000    # 150.0f

    div-float/2addr v10, v9

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v11, v10, v9

    if-lez v11, :cond_3

    move v10, v9

    :cond_3
    const v11, 0x3ecccccd    # 0.4f

    sub-float v12, v2, v11

    const/high16 v13, 0x40400000    # 3.0f

    mul-float v14, v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    mul-float/2addr v14, v12

    iget v12, v0, Lorg/xiph/speex/Vbr;->energy_alpha:F

    sub-float v15, v9, v12

    iget v9, v0, Lorg/xiph/speex/Vbr;->average_energy:F

    mul-float/2addr v15, v9

    mul-float/2addr v12, v1

    add-float/2addr v15, v12

    iput v15, v0, Lorg/xiph/speex/Vbr;->average_energy:F

    iget v9, v0, Lorg/xiph/speex/Vbr;->noise_accum:F

    iget v12, v0, Lorg/xiph/speex/Vbr;->noise_accum_count:F

    div-float/2addr v9, v12

    iput v9, v0, Lorg/xiph/speex/Vbr;->noise_level:F

    float-to-double v3, v1

    const-wide v11, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    double-to-float v11, v11

    iget v12, v0, Lorg/xiph/speex/Vbr;->noise_accum_count:F

    const v15, 0x3d75c28f    # 0.06f

    cmpg-float v15, v12, v15

    const v16, 0x3d4ccccd    # 0.05f

    if-gez v15, :cond_4

    cmpl-float v15, v1, v7

    if-lez v15, :cond_4

    mul-float v15, v11, v16

    iput v15, v0, Lorg/xiph/speex/Vbr;->noise_accum:F

    :cond_4
    const v15, 0x3e99999a    # 0.3f

    cmpg-float v15, v14, v15

    const/4 v9, 0x4

    const v18, 0x3f99999a    # 1.2f

    const v19, 0x3f733333    # 0.95f

    if-gez v15, :cond_5

    const v20, 0x3e4ccccd    # 0.2f

    cmpg-float v20, v10, v20

    if-gez v20, :cond_5

    iget v7, v0, Lorg/xiph/speex/Vbr;->noise_level:F

    mul-float v7, v7, v18

    cmpg-float v7, v11, v7

    if-ltz v7, :cond_8

    :cond_5
    if-gez v15, :cond_6

    cmpg-float v7, v10, v16

    if-gez v7, :cond_6

    const/high16 v7, 0x3fc00000    # 1.5f

    iget v15, v0, Lorg/xiph/speex/Vbr;->noise_level:F

    mul-float/2addr v15, v7

    cmpg-float v7, v11, v15

    if-ltz v7, :cond_8

    :cond_6
    const v7, 0x3ecccccd    # 0.4f

    cmpg-float v15, v14, v7

    if-gez v15, :cond_7

    cmpg-float v7, v10, v16

    if-gez v7, :cond_7

    iget v7, v0, Lorg/xiph/speex/Vbr;->noise_level:F

    mul-float v7, v7, v18

    cmpg-float v7, v11, v7

    if-ltz v7, :cond_8

    :cond_7
    const/4 v7, 0x0

    cmpg-float v14, v14, v7

    if-gez v14, :cond_a

    cmpg-float v10, v10, v16

    if-gez v10, :cond_a

    :cond_8
    iget v10, v0, Lorg/xiph/speex/Vbr;->consec_noise:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v0, Lorg/xiph/speex/Vbr;->consec_noise:I

    iget v14, v0, Lorg/xiph/speex/Vbr;->noise_level:F

    mul-float v15, v14, v13

    cmpl-float v15, v11, v15

    if-lez v15, :cond_9

    mul-float/2addr v14, v13

    goto :goto_3

    :cond_9
    move v14, v11

    :goto_3
    if-lt v10, v9, :cond_b

    iget v10, v0, Lorg/xiph/speex/Vbr;->noise_accum:F

    mul-float v10, v10, v19

    mul-float v14, v14, v16

    add-float/2addr v10, v14

    iput v10, v0, Lorg/xiph/speex/Vbr;->noise_accum:F

    mul-float v12, v12, v19

    add-float v12, v12, v16

    iput v12, v0, Lorg/xiph/speex/Vbr;->noise_accum_count:F

    goto :goto_4

    :cond_a
    const/4 v10, 0x0

    iput v10, v0, Lorg/xiph/speex/Vbr;->consec_noise:I

    :cond_b
    :goto_4
    iget v10, v0, Lorg/xiph/speex/Vbr;->noise_level:F

    cmpg-float v10, v11, v10

    if-gez v10, :cond_c

    const v10, 0x45bb8000    # 6000.0f

    cmpl-float v10, v1, v10

    if-lez v10, :cond_c

    iget v10, v0, Lorg/xiph/speex/Vbr;->noise_accum:F

    mul-float v10, v10, v19

    mul-float v11, v11, v16

    add-float/2addr v10, v11

    iput v10, v0, Lorg/xiph/speex/Vbr;->noise_accum:F

    iget v10, v0, Lorg/xiph/speex/Vbr;->noise_accum_count:F

    mul-float v10, v10, v19

    add-float v10, v10, v16

    iput v10, v0, Lorg/xiph/speex/Vbr;->noise_accum_count:F

    :cond_c
    const v10, 0x46ea6000    # 30000.0f

    cmpg-float v10, v1, v10

    const v11, 0x3f19999a    # 0.6f

    const v12, 0x461c4000    # 10000.0f

    const/high16 v13, 0x3f000000    # 0.5f

    if-gez v10, :cond_f

    const v5, 0x40c9999a    # 6.3f

    cmpg-float v6, v1, v12

    if-gez v6, :cond_d

    const v5, 0x40b33334    # 5.6000004f

    :cond_d
    const v6, 0x453b8000    # 3000.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_e

    const v6, 0x3f333333    # 0.7f

    sub-float/2addr v5, v6

    :cond_e
    move/from16 v16, v8

    goto :goto_5

    :cond_f
    const/high16 v10, 0x3f800000    # 1.0f

    add-float v14, v1, v10

    iget v15, v0, Lorg/xiph/speex/Vbr;->last_energy:F

    add-float/2addr v15, v10

    div-float v15, v14, v15

    move/from16 v16, v8

    float-to-double v7, v15

    invoke-static {v7, v8}, Ljava/lang/Math;->log(D)D

    move-result-wide v7

    double-to-float v7, v7

    iget v8, v0, Lorg/xiph/speex/Vbr;->average_energy:F

    add-float/2addr v8, v10

    div-float/2addr v14, v8

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    double-to-float v8, v14

    const/high16 v10, -0x3f600000    # -5.0f

    cmpg-float v14, v8, v10

    if-gez v14, :cond_10

    move v8, v10

    :cond_10
    const/high16 v10, 0x40000000    # 2.0f

    cmpl-float v14, v8, v10

    if-lez v14, :cond_11

    move v8, v10

    :cond_11
    const/4 v10, 0x0

    cmpl-float v14, v8, v10

    const/high16 v15, 0x40e00000    # 7.0f

    if-lez v14, :cond_12

    mul-float v14, v8, v11

    add-float/2addr v15, v14

    :cond_12
    cmpg-float v14, v8, v10

    if-gez v14, :cond_13

    mul-float/2addr v8, v13

    add-float/2addr v15, v8

    :cond_13
    cmpl-float v8, v7, v10

    if-lez v8, :cond_15

    const/high16 v8, 0x40a00000    # 5.0f

    cmpl-float v14, v7, v8

    if-lez v14, :cond_14

    move v7, v8

    :cond_14
    mul-float/2addr v7, v13

    add-float/2addr v15, v7

    :cond_15
    const v7, 0x3fcccccd    # 1.6f

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    add-float v5, v15, v13

    goto :goto_5

    :cond_16
    move v5, v15

    :goto_5
    iput v1, v0, Lorg/xiph/speex/Vbr;->last_energy:F

    iget v6, v0, Lorg/xiph/speex/Vbr;->soft_pitch:F

    mul-float/2addr v6, v11

    const v7, 0x3ecccccd    # 0.4f

    mul-float/2addr v7, v2

    add-float/2addr v6, v7

    iput v6, v0, Lorg/xiph/speex/Vbr;->soft_pitch:F

    float-to-double v7, v5

    const-wide v14, 0x40019999a0000000L    # 2.200000047683716

    float-to-double v9, v2

    const-wide v18, 0x3fd999999999999aL    # 0.4

    sub-double v9, v9, v18

    float-to-double v5, v6

    sub-double v5, v5, v18

    add-double/2addr v9, v5

    mul-double/2addr v9, v14

    add-double/2addr v7, v9

    double-to-float v5, v7

    iget v6, v0, Lorg/xiph/speex/Vbr;->last_quality:F

    cmpg-float v7, v5, v6

    if-gez v7, :cond_17

    mul-float/2addr v5, v13

    mul-float/2addr v6, v13

    add-float/2addr v5, v6

    :cond_17
    const/high16 v6, 0x40800000    # 4.0f

    cmpg-float v7, v5, v6

    if-gez v7, :cond_18

    move v5, v6

    :cond_18
    const/high16 v7, 0x41200000    # 10.0f

    cmpl-float v8, v5, v7

    if-lez v8, :cond_19

    move v5, v7

    :cond_19
    iget v7, v0, Lorg/xiph/speex/Vbr;->consec_noise:I

    const/4 v8, 0x3

    if-lt v7, v8, :cond_1a

    goto :goto_6

    :cond_1a
    move v6, v5

    :goto_6
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    if-eqz v7, :cond_1b

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v13, v7

    add-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v18

    sub-double v13, v13, v18

    mul-double/2addr v13, v10

    double-to-float v5, v13

    sub-float/2addr v6, v5

    :cond_1b
    move/from16 v17, v6

    const/4 v5, 0x0

    cmpg-float v6, v17, v5

    if-gez v6, :cond_1c

    const/16 v17, 0x0

    :cond_1c
    const v6, 0x476a6000    # 60000.0f

    cmpg-float v6, v1, v6

    if-gez v6, :cond_20

    iget v6, v0, Lorg/xiph/speex/Vbr;->consec_noise:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_1d

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    int-to-double v6, v6

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->log(D)D

    move-result-wide v6

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    sub-double/2addr v6, v13

    mul-double/2addr v6, v10

    double-to-float v6, v6

    sub-float v17, v17, v6

    :cond_1d
    cmpg-float v1, v1, v12

    if-gez v1, :cond_1e

    iget v1, v0, Lorg/xiph/speex/Vbr;->consec_noise:I

    const/4 v6, 0x2

    if-le v1, v6, :cond_1e

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    int-to-double v10, v1

    add-double/2addr v10, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    sub-double/2addr v10, v8

    mul-double/2addr v10, v6

    double-to-float v1, v10

    sub-float v17, v17, v1

    :cond_1e
    const/4 v1, 0x0

    cmpg-float v5, v17, v1

    if-gez v5, :cond_1f

    move/from16 v17, v1

    :cond_1f
    const-wide v5, 0x3fd3333333333333L    # 0.3

    const-wide v7, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-float v1, v3

    add-float v17, v17, v1

    :cond_20
    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v3, v17, v1

    if-gez v3, :cond_21

    goto :goto_7

    :cond_21
    move/from16 v1, v17

    :goto_7
    iput v2, v0, Lorg/xiph/speex/Vbr;->last_pitch_coef:F

    iput v1, v0, Lorg/xiph/speex/Vbr;->last_quality:F

    const/4 v9, 0x4

    :goto_8
    iget-object v2, v0, Lorg/xiph/speex/Vbr;->last_log_energy:[F

    if-lez v9, :cond_22

    add-int/lit8 v3, v9, -0x1

    aget v3, v2, v3

    aput v3, v2, v9

    add-int/lit8 v9, v9, -0x1

    goto :goto_8

    :cond_22
    const/4 v3, 0x0

    aput v16, v2, v3

    return v1
.end method

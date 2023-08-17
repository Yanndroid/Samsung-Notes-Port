.class public Lorg/apache/poi/util/LittleEndianCP950Reader;
.super Ljava/io/Reader;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOGGER:Lorg/apache/poi/util/POILogger;

.field private static final UNMAPPABLE:C = '?'

.field private static final range1High:C = '\u8dfe'

.field private static final range1Low:C = '\u8140'

.field private static final range2High:C = '\ua0fe'

.field private static final range2Low:C = '\u8e40'

.field private static final range3High:C = '\uc8fe'

.field private static final range3Low:C = '\uc6a1'

.field private static final range4High:C = '\ufefe'

.field private static final range4Low:C = '\ufa40'


# instance fields
.field private final charBuffer:Ljava/nio/CharBuffer;

.field public cnt:I

.field private final data:[B

.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private final doubleByteBuffer:Ljava/nio/ByteBuffer;

.field private leading:I

.field private final length:I

.field private offset:I

.field private final startOffset:I

.field private trailing:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/util/LittleEndianCP950Reader;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/util/LittleEndianCP950Reader;->LOGGER:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/poi/util/LittleEndianCP950Reader;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    sget-object v0, Lorg/apache/poi/util/StringUtil;->BIG5:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->cnt:I

    iput-object p1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->data:[B

    iput p2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->startOffset:I

    iput p2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    iput p3, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->length:I

    return-void
.end method

.method private handleF9(I)I
    .locals 6

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sget-object v0, Lorg/apache/poi/util/LittleEndianCP950Reader;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v1, 0x5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t create char for: f9 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 p1, p1, 0xff

    const/16 v5, 0x10

    invoke-static {p1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/16 p1, 0x3f

    return p1

    :pswitch_0
    const/16 p1, 0x2593

    return p1

    :pswitch_1
    const/16 p1, 0x256f

    return p1

    :pswitch_2
    const/16 p1, 0x2570

    return p1

    :pswitch_3
    const/16 p1, 0x256e

    return p1

    :pswitch_4
    const/16 p1, 0x256d

    return p1

    :pswitch_5
    const/16 p1, 0x2550

    return p1

    :pswitch_6
    const/16 p1, 0x2551

    return p1

    :pswitch_7
    const/16 p1, 0x255c

    return p1

    :pswitch_8
    const/16 p1, 0x2568

    return p1

    :pswitch_9
    const/16 p1, 0x2559

    return p1

    :pswitch_a
    const/16 p1, 0x2562

    return p1

    :pswitch_b
    const/16 p1, 0x256b

    return p1

    :pswitch_c
    const/16 p1, 0x255f

    return p1

    :pswitch_d
    const/16 p1, 0x2556

    return p1

    :pswitch_e
    const/16 p1, 0x2565

    return p1

    :pswitch_f
    const/16 p1, 0x2553

    return p1

    :pswitch_10
    const/16 p1, 0x255b

    return p1

    :pswitch_11
    const/16 p1, 0x2567

    return p1

    :pswitch_12
    const/16 p1, 0x2558

    return p1

    :pswitch_13
    const/16 p1, 0x2561

    return p1

    :pswitch_14
    const/16 p1, 0x256a

    return p1

    :pswitch_15
    const/16 p1, 0x255e

    return p1

    :pswitch_16
    const/16 p1, 0x2555

    return p1

    :pswitch_17
    const/16 p1, 0x2564

    return p1

    :pswitch_18
    const/16 p1, 0x2552

    return p1

    :pswitch_19
    const/16 p1, 0x255d

    return p1

    :pswitch_1a
    const/16 p1, 0x2569

    return p1

    :pswitch_1b
    const/16 p1, 0x255a

    return p1

    :pswitch_1c
    const/16 p1, 0x2563

    return p1

    :pswitch_1d
    const/16 p1, 0x256c

    return p1

    :pswitch_1e
    const/16 p1, 0x2560

    return p1

    :pswitch_1f
    const/16 p1, 0x2557

    return p1

    :pswitch_20
    const/16 p1, 0x2566

    return p1

    :pswitch_21
    const/16 p1, 0x2554

    return p1

    :pswitch_22
    const/16 p1, 0x5afa

    return p1

    :pswitch_23
    const/16 p1, 0x7ca7

    return p1

    :pswitch_24
    const/16 p1, 0x6052

    return p1

    :pswitch_25
    const/16 p1, 0x58bb

    return p1

    :pswitch_26
    const p1, 0x88cf

    return p1

    :pswitch_27
    const p1, 0x92b9

    return p1

    :pswitch_28
    const/16 p1, 0x7881

    return p1

    :pswitch_29
    const p1, 0x9f98

    return p1

    :pswitch_2a
    const p1, 0x9f49

    return p1

    :pswitch_2b
    const p1, 0x9f7e

    return p1

    :pswitch_2c
    const p1, 0x9ea4

    return p1

    :pswitch_2d
    const/16 p1, 0x706a

    return p1

    :pswitch_2e
    const/16 p1, 0x7069

    return p1

    :pswitch_2f
    const p1, 0x9e1d

    return p1

    :pswitch_30
    const p1, 0x9c7a

    return p1

    :pswitch_31
    const p1, 0x9a6b

    return p1

    :pswitch_32
    const/16 p1, 0x7675

    return p1

    :pswitch_33
    const p1, 0x9eb7

    return p1

    :pswitch_34
    const p1, 0x9c79

    return p1

    :pswitch_35
    const p1, 0x9483

    return p1

    :pswitch_36
    const p1, 0x8b9f

    return p1

    :pswitch_37
    const p1, 0x864b

    return p1

    :pswitch_38
    const/16 p1, 0x7229

    return p1

    :pswitch_39
    const p1, 0x9e19

    return p1

    :pswitch_3a
    const p1, 0x9b2e

    return p1

    :pswitch_3b
    const p1, 0x9a68

    return p1

    :pswitch_3c
    const p1, 0x9a69

    return p1

    :pswitch_3d
    const p1, 0x9481

    return p1

    :pswitch_3e
    const p1, 0x9480

    return p1

    :pswitch_3f
    const p1, 0x9482

    return p1

    :pswitch_40
    const p1, 0x8ea8

    return p1

    :pswitch_41
    const p1, 0x864c

    return p1

    :pswitch_42
    const/16 p1, 0x7227

    return p1

    :pswitch_43
    const/16 p1, 0x6b1e

    return p1

    :pswitch_44
    const/16 p1, 0x6207

    return p1

    :pswitch_45
    const p1, 0x9f48

    return p1

    :pswitch_46
    const p1, 0x9e17

    return p1

    :pswitch_47
    const p1, 0x9e15

    return p1

    :pswitch_48
    const p1, 0x9b24

    return p1

    :pswitch_49
    const p1, 0x9a67

    return p1

    :pswitch_4a
    const p1, 0x9a66

    return p1

    :pswitch_4b
    const p1, 0x9a64

    return p1

    :pswitch_4c
    const p1, 0x99ab

    return p1

    :pswitch_4d
    const p1, 0x9961

    return p1

    :pswitch_4e
    const p1, 0x98cc

    return p1

    :pswitch_4f
    const p1, 0x9874

    return p1

    :pswitch_50
    const p1, 0x9873

    return p1

    :pswitch_51
    const p1, 0x974b

    return p1

    :pswitch_52
    const p1, 0x8ec9

    return p1

    :pswitch_53
    const p1, 0x8ea9

    return p1

    :pswitch_54
    const p1, 0x8c9c

    return p1

    :pswitch_55
    const p1, 0x8b9e

    return p1

    :pswitch_56
    const p1, 0x883f

    return p1

    :pswitch_57
    const p1, 0x883d

    return p1

    :pswitch_58
    const p1, 0x883e

    return p1

    :pswitch_59
    const p1, 0x866a

    return p1

    :pswitch_5a
    const/16 p1, 0x7cf7

    return p1

    :pswitch_5b
    const/16 p1, 0x7065

    return p1

    :pswitch_5c
    const/16 p1, 0x7068

    return p1

    :pswitch_5d
    const p1, 0x9fa4

    return p1

    :pswitch_5e
    const p1, 0x9f0a

    return p1

    :pswitch_5f
    const p1, 0x9ef6

    return p1

    :pswitch_60
    const p1, 0x9e13

    return p1

    :pswitch_61
    const p1, 0x9e14

    return p1

    :pswitch_62
    const p1, 0x9c75

    return p1

    :pswitch_63
    const p1, 0x9c71

    return p1

    :pswitch_64
    const p1, 0x9c73

    return p1

    :pswitch_65
    const p1, 0x9c74

    return p1

    :pswitch_66
    const p1, 0x9a60

    return p1

    :pswitch_67
    const p1, 0x9475

    return p1

    :pswitch_68
    const p1, 0x9476

    return p1

    :pswitch_69
    const p1, 0x9478

    return p1

    :pswitch_6a
    const p1, 0x9474

    return p1

    :pswitch_6b
    const p1, 0x91c3

    return p1

    :pswitch_6c
    const p1, 0x8ea6

    return p1

    :pswitch_6d
    const p1, 0x8db2

    return p1

    :pswitch_6e
    const p1, 0x883c

    return p1

    :pswitch_6f
    const/16 p1, 0x7c6f

    return p1

    :pswitch_70
    const/16 p1, 0x7066

    return p1

    :pswitch_71
    const/16 p1, 0x571e

    return p1

    :pswitch_72
    const p1, 0x9f79

    return p1

    :pswitch_73
    const p1, 0x9f7a

    return p1

    :pswitch_74
    const p1, 0x9f7b

    return p1

    :pswitch_75
    const p1, 0x9f78

    return p1

    :pswitch_76
    const p1, 0x9f47

    return p1

    :pswitch_77
    const p1, 0x9f09

    return p1

    :pswitch_78
    const p1, 0x9ef5

    return p1

    :pswitch_79
    const p1, 0x9ea1

    return p1

    :pswitch_7a
    const p1, 0x9e11

    return p1

    :pswitch_7b
    const p1, 0x9e12

    return p1

    :pswitch_7c
    const p1, 0x9e0f

    return p1

    :pswitch_7d
    const p1, 0x9e10

    return p1

    :pswitch_7e
    const p1, 0x9e0d

    return p1

    :pswitch_7f
    const p1, 0x9e0b

    return p1

    :pswitch_80
    const p1, 0x9c6d

    return p1

    :pswitch_81
    const p1, 0x9c6e

    return p1

    :pswitch_82
    const p1, 0x9c68

    return p1

    :pswitch_83
    const p1, 0x995f

    return p1

    :pswitch_84
    const p1, 0x9872

    return p1

    :pswitch_85
    const p1, 0x9749

    return p1

    :pswitch_86
    const p1, 0x9473

    return p1

    :pswitch_87
    const p1, 0x9471

    return p1

    :pswitch_88
    const p1, 0x946f

    return p1

    :pswitch_89
    const p1, 0x946d

    return p1

    :pswitch_8a
    const p1, 0x946e

    return p1

    :pswitch_8b
    const p1, 0x8ea3

    return p1

    :pswitch_8c
    const p1, 0x8ea4

    return p1

    :pswitch_8d
    const p1, 0x8ea5

    return p1

    :pswitch_8e
    const p1, 0x8b99

    return p1

    :pswitch_8f
    const p1, 0x8b98

    return p1

    :pswitch_90
    const p1, 0x89ff

    return p1

    :pswitch_91
    const p1, 0x897b

    return p1

    :pswitch_92
    const p1, 0x897c

    return p1

    :pswitch_93
    const p1, 0x897a

    return p1

    :pswitch_94
    const p1, 0x8979

    return p1

    :pswitch_95
    const p1, 0x8648

    return p1

    :pswitch_96
    const p1, 0x8647

    return p1

    :pswitch_97
    const p1, 0x8646

    return p1

    :pswitch_98
    const p1, 0x81e1

    return p1

    :pswitch_99
    const p1, 0x81e0

    return p1

    :pswitch_9a
    const/16 p1, 0x7e99

    return p1

    :pswitch_9b
    const/16 p1, 0x7e9b

    return p1

    :pswitch_9c
    const/16 p1, 0x7e98

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x40
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRange1(II)I
    .locals 1

    add-int/lit16 p1, p1, -0x81

    mul-int/lit16 p1, p1, 0x9d

    const v0, 0xeeb8

    add-int/2addr p1, v0

    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x62

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method

.method private handleRange2(II)I
    .locals 1

    add-int/lit16 p1, p1, -0x8e

    mul-int/lit16 p1, p1, 0x9d

    const v0, 0xe311

    add-int/2addr p1, v0

    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x62

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method

.method private handleRange3(II)I
    .locals 1

    add-int/lit16 p1, p1, -0xc6

    mul-int/lit16 p1, p1, 0x9d

    const v0, 0xf672

    add-int/2addr p1, v0

    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x62

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method

.method private handleRange4(II)I
    .locals 1

    add-int/lit16 p1, p1, -0xfa

    mul-int/lit16 p1, p1, 0x9d

    const v0, 0xe000

    add-int/2addr p1, v0

    const/16 v0, 0x80

    if-ge p2, v0, :cond_0

    add-int/lit8 p2, p2, -0x40

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, -0x62

    :goto_0
    add-int/2addr p1, p2

    return p1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public read()I
    .locals 7

    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->data:[B

    array-length v3, v2

    if-gt v1, v3, :cond_8

    iget v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->startOffset:I

    sub-int v1, v0, v1

    iget v3, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->length:I

    if-le v1, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->offset:I

    aget-byte v0, v2, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    const/16 v1, 0x81

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    return v0

    :cond_1
    const/16 v1, 0xf9

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    invoke-direct {p0, v0}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleF9(I)I

    move-result v0

    return v0

    :cond_2
    shl-int/lit8 v1, v0, 0x8

    iget v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    add-int/2addr v1, v2

    const v3, 0x8140

    if-lt v1, v3, :cond_3

    const v3, 0x8dfe

    if-gt v1, v3, :cond_3

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange1(II)I

    move-result v0

    return v0

    :cond_3
    const v3, 0x8e40

    if-lt v1, v3, :cond_4

    const v3, 0xa0fe

    if-gt v1, v3, :cond_4

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange2(II)I

    move-result v0

    return v0

    :cond_4
    const v3, 0xc6a1

    if-lt v1, v3, :cond_5

    const v3, 0xc8fe

    if-gt v1, v3, :cond_5

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange3(II)I

    move-result v0

    return v0

    :cond_5
    const v3, 0xfa40

    if-lt v1, v3, :cond_6

    const v3, 0xfefe

    if-gt v1, v3, :cond_6

    invoke-direct {p0, v0, v2}, Lorg/apache/poi/util/LittleEndianCP950Reader;->handleRange4(II)I

    move-result v0

    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    iget v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->doubleByteBuffer:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    sget-object v0, Lorg/apache/poi/util/LittleEndianCP950Reader;->LOGGER:Lorg/apache/poi/util/POILogger;

    const/4 v2, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t create char for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->leading:I

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->trailing:I

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    const/16 v0, 0x3f

    return v0

    :cond_7
    iget-object v0, p0, Lorg/apache/poi/util/LittleEndianCP950Reader;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    :cond_8
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public read([CII)I
    .locals 3

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/poi/util/LittleEndianCP950Reader;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sub-int/2addr v0, p2

    return v0

    :cond_0
    int-to-char v1, v1

    aput-char v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

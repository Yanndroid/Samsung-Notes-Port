.class public final Lorg/apache/poi/java/awt/AlphaComposite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/Composite;


# static fields
.field public static final CLEAR:I = 0x1

.field public static final Clear:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final DST:I = 0x9

.field public static final DST_ATOP:I = 0xb

.field public static final DST_IN:I = 0x6

.field public static final DST_OUT:I = 0x8

.field public static final DST_OVER:I = 0x4

.field public static final Dst:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final DstAtop:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final DstIn:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final DstOut:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final DstOver:Lorg/apache/poi/java/awt/AlphaComposite;

.field private static final MAX_RULE:I = 0xc

.field private static final MIN_RULE:I = 0x1

.field public static final SRC:I = 0x2

.field public static final SRC_ATOP:I = 0xa

.field public static final SRC_IN:I = 0x5

.field public static final SRC_OUT:I = 0x7

.field public static final SRC_OVER:I = 0x3

.field public static final Src:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final SrcAtop:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final SrcIn:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final SrcOut:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final SrcOver:Lorg/apache/poi/java/awt/AlphaComposite;

.field public static final XOR:I = 0xc

.field public static final Xor:Lorg/apache/poi/java/awt/AlphaComposite;


# instance fields
.field public extraAlpha:F

.field public rule:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->Clear:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->Src:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->Dst:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcOver:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->DstOver:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcIn:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->DstIn:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcOut:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->DstOut:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcAtop:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->DstAtop:Lorg/apache/poi/java/awt/AlphaComposite;

    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/AlphaComposite;->Xor:Lorg/apache/poi/java/awt/AlphaComposite;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(IF)V

    return-void
.end method

.method private constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const/16 v0, 0xc

    if-gt p1, v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    iput p1, p0, Lorg/apache/poi/java/awt/AlphaComposite;->rule:I

    iput p2, p0, Lorg/apache/poi/java/awt/AlphaComposite;->extraAlpha:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "alpha value out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "unknown composite rule"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getInstance(I)Lorg/apache/poi/java/awt/AlphaComposite;
    .locals 1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unknown composite rule"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->Xor:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_1
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->DstAtop:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcAtop:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_3
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->Dst:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_4
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->DstOut:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_5
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcOut:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_6
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->DstIn:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_7
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcIn:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_8
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->DstOver:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_9
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->SrcOver:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_a
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->Src:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_b
    sget-object p0, Lorg/apache/poi/java/awt/AlphaComposite;->Clear:Lorg/apache/poi/java/awt/AlphaComposite;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
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

.method public static getInstance(IF)Lorg/apache/poi/java/awt/AlphaComposite;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/apache/poi/java/awt/AlphaComposite;->getInstance(I)Lorg/apache/poi/java/awt/AlphaComposite;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/poi/java/awt/AlphaComposite;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/java/awt/AlphaComposite;-><init>(IF)V

    return-object v0
.end method


# virtual methods
.method public createContext(Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/RenderingHints;)Lorg/apache/poi/java/awt/CompositeContext;
    .locals 0

    new-instance p3, Lorg/apache/poi/sun/java2d/SunCompositeContext;

    invoke-direct {p3, p0, p1, p2}, Lorg/apache/poi/sun/java2d/SunCompositeContext;-><init>(Lorg/apache/poi/java/awt/AlphaComposite;Lorg/apache/poi/java/awt/image/ColorModel;Lorg/apache/poi/java/awt/image/ColorModel;)V

    return-object p3
.end method

.method public derive(F)Lorg/apache/poi/java/awt/AlphaComposite;
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->extraAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->rule:I

    invoke-static {v0, p1}, Lorg/apache/poi/java/awt/AlphaComposite;->getInstance(IF)Lorg/apache/poi/java/awt/AlphaComposite;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public derive(I)Lorg/apache/poi/java/awt/AlphaComposite;
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->rule:I

    if-ne v0, p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->extraAlpha:F

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/AlphaComposite;->getInstance(IF)Lorg/apache/poi/java/awt/AlphaComposite;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/apache/poi/java/awt/AlphaComposite;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/apache/poi/java/awt/AlphaComposite;

    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->rule:I

    iget v2, p1, Lorg/apache/poi/java/awt/AlphaComposite;->rule:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->extraAlpha:F

    iget p1, p1, Lorg/apache/poi/java/awt/AlphaComposite;->extraAlpha:F

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->extraAlpha:F

    return v0
.end method

.method public getRule()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->rule:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/apache/poi/java/awt/AlphaComposite;->extraAlpha:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/apache/poi/java/awt/AlphaComposite;->rule:I

    add-int/2addr v0, v1

    return v0
.end method

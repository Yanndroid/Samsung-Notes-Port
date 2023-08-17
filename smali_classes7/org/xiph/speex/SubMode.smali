.class public Lorg/xiph/speex/SubMode;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bits_per_frame:I

.field public comb_gain:F

.field public double_codebook:I

.field public forced_pitch_gain:I

.field public have_subframe_gain:I

.field public innovation:Lorg/xiph/speex/CbSearch;

.field public lbr_pitch:I

.field public lpc_enh_k1:F

.field public lpc_enh_k2:F

.field public lsqQuant:Lorg/xiph/speex/LspQuant;

.field public ltp:Lorg/xiph/speex/Ltp;


# direct methods
.method public constructor <init>(IIIILorg/xiph/speex/LspQuant;Lorg/xiph/speex/Ltp;Lorg/xiph/speex/CbSearch;FFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/xiph/speex/SubMode;->lbr_pitch:I

    iput p2, p0, Lorg/xiph/speex/SubMode;->forced_pitch_gain:I

    iput p3, p0, Lorg/xiph/speex/SubMode;->have_subframe_gain:I

    iput p4, p0, Lorg/xiph/speex/SubMode;->double_codebook:I

    iput-object p5, p0, Lorg/xiph/speex/SubMode;->lsqQuant:Lorg/xiph/speex/LspQuant;

    iput-object p6, p0, Lorg/xiph/speex/SubMode;->ltp:Lorg/xiph/speex/Ltp;

    iput-object p7, p0, Lorg/xiph/speex/SubMode;->innovation:Lorg/xiph/speex/CbSearch;

    iput p8, p0, Lorg/xiph/speex/SubMode;->lpc_enh_k1:F

    iput p9, p0, Lorg/xiph/speex/SubMode;->lpc_enh_k2:F

    iput p10, p0, Lorg/xiph/speex/SubMode;->comb_gain:F

    iput p11, p0, Lorg/xiph/speex/SubMode;->bits_per_frame:I

    return-void
.end method

.class Lcom/bumptech/glide/gifdecoder/GifFrame;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DISPOSAL_BACKGROUND:I = 0x2

.field public static final DISPOSAL_NONE:I = 0x1

.field public static final DISPOSAL_PREVIOUS:I = 0x3

.field public static final DISPOSAL_UNSPECIFIED:I


# instance fields
.field public bufferFrameStart:I

.field public delay:I

.field public dispose:I

.field public ih:I

.field public interlace:Z

.field public iw:I

.field public ix:I

.field public iy:I

.field public lct:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public transIndex:I

.field public transparency:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

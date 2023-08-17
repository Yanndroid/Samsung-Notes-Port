.class final Lorg/conscrypt/SSLUtils$EngineStates;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EngineStates"
.end annotation


# static fields
.field public static final STATE_CLOSED:I = 0x8

.field public static final STATE_CLOSED_INBOUND:I = 0x6

.field public static final STATE_CLOSED_OUTBOUND:I = 0x7

.field public static final STATE_HANDSHAKE_COMPLETED:I = 0x3

.field public static final STATE_HANDSHAKE_STARTED:I = 0x2

.field public static final STATE_MODE_SET:I = 0x1

.field public static final STATE_NEW:I = 0x0

.field public static final STATE_READY:I = 0x5

.field public static final STATE_READY_HANDSHAKE_CUT_THROUGH:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

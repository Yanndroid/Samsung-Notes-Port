.class public interface abstract Lio/netty/util/ByteProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/ByteProcessor$IndexNotOfProcessor;,
        Lio/netty/util/ByteProcessor$IndexOfProcessor;
    }
.end annotation


# static fields
.field public static final FIND_ASCII_SPACE:Lio/netty/util/ByteProcessor;

.field public static final FIND_COMMA:Lio/netty/util/ByteProcessor;

.field public static final FIND_CR:Lio/netty/util/ByteProcessor;

.field public static final FIND_CRLF:Lio/netty/util/ByteProcessor;

.field public static final FIND_LF:Lio/netty/util/ByteProcessor;

.field public static final FIND_LINEAR_WHITESPACE:Lio/netty/util/ByteProcessor;

.field public static final FIND_NON_CR:Lio/netty/util/ByteProcessor;

.field public static final FIND_NON_CRLF:Lio/netty/util/ByteProcessor;

.field public static final FIND_NON_LF:Lio/netty/util/ByteProcessor;

.field public static final FIND_NON_LINEAR_WHITESPACE:Lio/netty/util/ByteProcessor;

.field public static final FIND_NON_NUL:Lio/netty/util/ByteProcessor;

.field public static final FIND_NUL:Lio/netty/util/ByteProcessor;

.field public static final FIND_SEMI_COLON:Lio/netty/util/ByteProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_NUL:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_NON_NUL:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_CR:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_NON_CR:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_LF:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexNotOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_NON_LF:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    const/16 v1, 0x3b

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_SEMI_COLON:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_COMMA:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$IndexOfProcessor;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lio/netty/util/ByteProcessor$IndexOfProcessor;-><init>(B)V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_ASCII_SPACE:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$1;

    invoke-direct {v0}, Lio/netty/util/ByteProcessor$1;-><init>()V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_CRLF:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$2;

    invoke-direct {v0}, Lio/netty/util/ByteProcessor$2;-><init>()V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_NON_CRLF:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$3;

    invoke-direct {v0}, Lio/netty/util/ByteProcessor$3;-><init>()V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_LINEAR_WHITESPACE:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/util/ByteProcessor$4;

    invoke-direct {v0}, Lio/netty/util/ByteProcessor$4;-><init>()V

    sput-object v0, Lio/netty/util/ByteProcessor;->FIND_NON_LINEAR_WHITESPACE:Lio/netty/util/ByteProcessor;

    return-void
.end method


# virtual methods
.method public abstract process(B)Z
.end method

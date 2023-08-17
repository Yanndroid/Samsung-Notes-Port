.class public Lio/netty/handler/codec/http2/DefaultHttp2Headers;
.super Lio/netty/handler/codec/DefaultHeaders;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/http2/Http2Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/handler/codec/DefaultHeaders<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/CharSequence;",
        "Lio/netty/handler/codec/http2/Http2Headers;",
        ">;",
        "Lio/netty/handler/codec/http2/Http2Headers;"
    }
.end annotation


# static fields
.field public static final HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP2_NAME_VALIDATOR_PROCESSOR:Lio/netty/util/ByteProcessor;


# instance fields
.field private firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$1;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$1;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR_PROCESSOR:Lio/netty/util/ByteProcessor;

    new-instance v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers$2;

    invoke-direct {v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$2;-><init>()V

    sput-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    if-eqz p1, :cond_0

    sget-object p1, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_0
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    iget-object p1, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 2

    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    if-eqz p1, :cond_0

    sget-object p1, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    :goto_0
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V

    iget-object p1, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-void
.end method

.method public static synthetic access$000()Lio/netty/util/ByteProcessor;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->HTTP2_NAME_VALIDATOR_PROCESSOR:Lio/netty/util/ByteProcessor;

    return-object v0
.end method

.method public static synthetic access$100(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object p0
.end method

.method public static synthetic access$102(Lio/netty/handler/codec/http2/DefaultHttp2Headers;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0

    iput-object p1, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object p1
.end method

.method public static synthetic access$200(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object p0
.end method

.method public static synthetic access$300(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object p0
.end method

.method public static synthetic access$400(Lio/netty/handler/codec/http2/DefaultHttp2Headers;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0

    iget-object p0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object p0
.end method


# virtual methods
.method public authority(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    return-object p0
.end method

.method public authority()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->AUTHORITY:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic clear()Lio/netty/handler/codec/Headers;
    .locals 1

    invoke-virtual {p0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->clear()Lio/netty/handler/codec/http2/Http2Headers;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->firstNonPseudo:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    invoke-super {p0}, Lio/netty/handler/codec/DefaultHeaders;->clear()Lio/netty/handler/codec/Headers;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http2/Http2Headers;

    return-object v0
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method public contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    sget-object p3, Lio/netty/util/AsciiString;->CASE_INSENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    goto :goto_0

    :cond_0
    sget-object p3, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/netty/handler/codec/http2/Http2Headers;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/handler/codec/http2/Http2Headers;

    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->equals(Lio/netty/handler/codec/Headers;Lio/netty/util/HashingStrategy;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    sget-object v0, Lio/netty/util/AsciiString;->CASE_SENSITIVE_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->hashCode(Lio/netty/util/HashingStrategy;)I

    move-result v0

    return v0
.end method

.method public method(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    return-object p0
.end method

.method public method()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->METHOD:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final newHeaderEntry(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    new-instance v6, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http2/DefaultHttp2Headers$Http2HeaderEntry;-><init>(Lio/netty/handler/codec/http2/DefaultHttp2Headers;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    return-object v6
.end method

.method public bridge synthetic newHeaderEntry(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 0

    check-cast p2, Ljava/lang/CharSequence;

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/handler/codec/http2/DefaultHttp2Headers;->newHeaderEntry(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object p1

    return-object p1
.end method

.method public path(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    return-object p0
.end method

.method public path()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->PATH:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public scheme(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    return-object p0
.end method

.method public scheme()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->SCHEME:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public status(Ljava/lang/CharSequence;)Lio/netty/handler/codec/http2/Http2Headers;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    return-object p0
.end method

.method public status()Ljava/lang/CharSequence;
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->STATUS:Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;

    invoke-virtual {v0}, Lio/netty/handler/codec/http2/Http2Headers$PseudoHeaderName;->value()Lio/netty/util/AsciiString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic valueIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-super {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->valueIterator(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

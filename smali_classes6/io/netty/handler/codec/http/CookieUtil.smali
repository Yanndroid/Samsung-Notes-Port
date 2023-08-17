.class final Lio/netty/handler/codec/http/CookieUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

.field private static final VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lio/netty/handler/codec/http/CookieUtil;->validCookieValueOctets()Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;

    invoke-static {v0}, Lio/netty/handler/codec/http/CookieUtil;->validCookieNameOctets(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static firstInvalidCookieNameOctet(Ljava/lang/CharSequence;)I
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_NAME_OCTETS:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/CookieUtil;->firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I

    move-result p0

    return p0
.end method

.method public static firstInvalidCookieValueOctet(Ljava/lang/CharSequence;)I
    .locals 1

    sget-object v0, Lio/netty/handler/codec/http/CookieUtil;->VALID_COOKIE_VALUE_OCTETS:Ljava/util/BitSet;

    invoke-static {p0, v0}, Lio/netty/handler/codec/http/CookieUtil;->firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I

    move-result p0

    return p0
.end method

.method public static firstInvalidOctet(Ljava/lang/CharSequence;Ljava/util/BitSet;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static unwrapValue(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v2, :cond_1

    if-ne v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-interface {p0, v0, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    :cond_2
    return-object p0
.end method

.method private static validCookieNameOctets(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    invoke-virtual {v0, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    const/16 p0, 0x28

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x29

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x3c

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x3e

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x40

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x3a

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x2f

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x5b

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x5d

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x3f

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x3d

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x7b

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x7d

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x20

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    const/16 p0, 0x9

    invoke-virtual {v0, p0, v1}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.method private static validCookieValueOctets()Ljava/util/BitSet;
    .locals 3

    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    const/16 v1, 0x23

    :goto_0
    const/16 v2, 0x7f

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/16 v1, 0x3b

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    const/16 v1, 0x5c

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    return-object v0
.end method

.class public Lio/netty/handler/codec/CharSequenceValueConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/netty/handler/codec/ValueConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/ValueConverter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

.field private static final TRUE_ASCII:Lio/netty/util/AsciiString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-direct {v0}, Lio/netty/handler/codec/CharSequenceValueConverter;-><init>()V

    sput-object v0, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    new-instance v0, Lio/netty/util/AsciiString;

    const-string v1, "true"

    invoke-direct {v0, v1}, Lio/netty/util/AsciiString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v0, Lio/netty/handler/codec/CharSequenceValueConverter;->TRUE_ASCII:Lio/netty/util/AsciiString;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertBoolean(Z)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertBoolean(Z)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertBoolean(Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertByte(B)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertByte(B)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertByte(B)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertChar(C)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertChar(C)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertChar(C)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertDouble(D)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertDouble(D)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertDouble(D)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertFloat(F)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertFloat(F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertFloat(F)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertInt(I)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertInt(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertInt(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertLong(J)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertLong(J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertLong(J)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertShort(S)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertShort(S)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertShort(S)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertTimeMillis(J)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lio/netty/handler/codec/DateFormatter;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic convertTimeMillis(J)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertTimeMillis(J)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public convertToBoolean(Ljava/lang/CharSequence;)Z
    .locals 1

    sget-object v0, Lio/netty/handler/codec/CharSequenceValueConverter;->TRUE_ASCII:Lio/netty/util/AsciiString;

    invoke-static {p1, v0}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic convertToBoolean(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToBoolean(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public convertToByte(Ljava/lang/CharSequence;)B
    .locals 2

    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lio/netty/util/AsciiString;->byteAt(I)B

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p1

    return p1
.end method

.method public bridge synthetic convertToByte(Ljava/lang/Object;)B
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToByte(Ljava/lang/CharSequence;)B

    move-result p1

    return p1
.end method

.method public convertToChar(Ljava/lang/CharSequence;)C
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    return p1
.end method

.method public bridge synthetic convertToChar(Ljava/lang/Object;)C
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToChar(Ljava/lang/CharSequence;)C

    move-result p1

    return p1
.end method

.method public convertToDouble(Ljava/lang/CharSequence;)D
    .locals 2

    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->parseDouble()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic convertToDouble(Ljava/lang/Object;)D
    .locals 2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToDouble(Ljava/lang/CharSequence;)D

    move-result-wide v0

    return-wide v0
.end method

.method public convertToFloat(Ljava/lang/CharSequence;)F
    .locals 1

    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->parseFloat()F

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic convertToFloat(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToFloat(Ljava/lang/CharSequence;)F

    move-result p1

    return p1
.end method

.method public convertToInt(Ljava/lang/CharSequence;)I
    .locals 1

    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->parseInt()I

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic convertToInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToInt(Ljava/lang/CharSequence;)I

    move-result p1

    return p1
.end method

.method public convertToLong(Ljava/lang/CharSequence;)J
    .locals 2

    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->parseLong()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic convertToLong(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToLong(Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

.method public convertToShort(Ljava/lang/CharSequence;)S
    .locals 1

    instance-of v0, p1, Lio/netty/util/AsciiString;

    if-eqz v0, :cond_0

    check-cast p1, Lio/netty/util/AsciiString;

    invoke-virtual {p1}, Lio/netty/util/AsciiString;->parseShort()S

    move-result p1

    return p1

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p1

    return p1
.end method

.method public bridge synthetic convertToShort(Ljava/lang/Object;)S
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToShort(Ljava/lang/CharSequence;)S

    move-result p1

    return p1
.end method

.method public convertToTimeMillis(Ljava/lang/CharSequence;)J
    .locals 3

    invoke-static {p1}, Lio/netty/handler/codec/DateFormatter;->parseHttpDate(Ljava/lang/CharSequence;)Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "header can\'t be parsed into a Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic convertToTimeMillis(Ljava/lang/Object;)J
    .locals 2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToTimeMillis(Ljava/lang/CharSequence;)J

    move-result-wide v0

    return-wide v0
.end method

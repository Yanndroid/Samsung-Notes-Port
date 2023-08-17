.class abstract Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private static final FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

.field private static final TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;


# instance fields
.field public final boundary:Ljava/lang/String;

.field public final charset:Ljava/nio/charset/Charset;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v1

    sput-object v1, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v1

    sput-object v1, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    const-string v1, "--"

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Multipart boundary"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    :goto_0
    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->charset:Ljava/nio/charset/Charset;

    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->boundary:Ljava/lang/String;

    return-void
.end method

.method private static encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;
    .locals 2

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-direct {p1, v0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;-><init>(I)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->append([BII)V

    return-object p1
.end method

.method private static writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .locals 2

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/util/ByteArrayBuffer;->length()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/MIME;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object p0

    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p1, p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object p0

    invoke-static {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method public static writeField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->FIELD_SEP:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;->getBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public doWriteTo(Ljava/io/OutputStream;Z)V
    .locals 4

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->charset:Ljava/nio/charset/Charset;

    iget-object v1, p0, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->boundary:Ljava/lang/String;

    invoke-static {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->encode(Ljava/nio/charset/Charset;Ljava/lang/String;)Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getBodyParts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v3, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0, v2, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V

    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    move-result-object v2

    invoke-interface {v2, p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->writeTo(Ljava/io/OutputStream;)V

    :cond_0
    invoke-static {v3, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->TWO_DASHES:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v0, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object p2, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->CR_LF:Lcz/msebera/android/httpclient/util/ByteArrayBuffer;

    invoke-static {p2, p1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->writeBytes(Lcz/msebera/android/httpclient/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method public abstract formatMultipartHeader(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;Ljava/io/OutputStream;)V
.end method

.method public abstract getBodyParts()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end method

.method public getTotalLength()J
    .locals 10

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getBodyParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    invoke-virtual {v5}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    move-result-object v5

    invoke-interface {v5}, Lcz/msebera/android/httpclient/entity/mime/content/ContentDescriptor;->getContentLength()J

    move-result-wide v8

    cmp-long v5, v8, v1

    if-ltz v5, :cond_0

    add-long/2addr v3, v8

    goto :goto_0

    :cond_0
    return-wide v6

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->doWriteTo(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    add-long/2addr v3, v0

    return-wide v3

    :catch_0
    return-wide v6
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->doWriteTo(Ljava/io/OutputStream;Z)V

    return-void
.end method

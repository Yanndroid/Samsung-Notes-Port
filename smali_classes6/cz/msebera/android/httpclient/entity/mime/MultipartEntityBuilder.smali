.class public Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_SUBTYPE:Ljava/lang/String; = "form-data"

.field private static final MULTIPART_CHARS:[C


# instance fields
.field private bodyParts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;",
            ">;"
        }
    .end annotation
.end field

.field private boundary:Ljava/lang/String;

.field private charset:Ljava/nio/charset/Charset;

.field private contentType:Lcz/msebera/android/httpclient/entity/ContentType;

.field private mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    const/4 v0, 0x0

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    return-void
.end method

.method public static create()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    invoke-direct {v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;-><init>()V

    return-object v0
.end method

.method private generateBoundary()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1e

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    sget-object v4, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->MULTIPART_CHARS:[C

    array-length v5, v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/FileBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/FileBody;-><init>(Ljava/io/File;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[B)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_BINARY:Lcz/msebera/android/httpclient/entity/ContentType;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addBinaryBody(Ljava/lang/String;[BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addBinaryBody(Ljava/lang/String;[BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;

    invoke-direct {v0, p2, p3, p4}, Lcz/msebera/android/httpclient/entity/mime/content/ByteArrayBody;-><init>([BLcz/msebera/android/httpclient/entity/ContentType;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addPart(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Content body"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->create(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPartBuilder;->build()Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/entity/ContentType;->DEFAULT_TEXT:Lcz/msebera/android/httpclient/entity/ContentType;

    invoke-virtual {p0, p1, p2, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addTextBody(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public addTextBody(Ljava/lang/String;Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;

    invoke-direct {v0, p2, p3}, Lcz/msebera/android/httpclient/entity/mime/content/StringBody;-><init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/ContentType;)V

    invoke-virtual {p0, p1, v0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->addPart(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcz/msebera/android/httpclient/HttpEntity;
    .locals 1

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->buildEntity()Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;

    move-result-object v0

    return-object v0
.end method

.method public buildEntity()Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;
    .locals 7

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    const-string v1, "boundary"

    if-nez v0, :cond_0

    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->generateBoundary()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    if-nez v2, :cond_2

    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcz/msebera/android/httpclient/entity/ContentType;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-direct {v5, v1, v0}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    new-instance v1, Lcz/msebera/android/httpclient/message/BasicNameValuePair;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    const-string v6, "charset"

    invoke-direct {v1, v6, v5}, Lcz/msebera/android/httpclient/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcz/msebera/android/httpclient/NameValuePair;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcz/msebera/android/httpclient/NameValuePair;

    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->withParameters([Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v3, "multipart/form-data"

    invoke-static {v3, v1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;[Lcz/msebera/android/httpclient/NameValuePair;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v1

    :goto_0
    iget-object v3, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    if-eqz v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->bodyParts:Ljava/util/List;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    :goto_1
    iget-object v5, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    if-eqz v5, :cond_6

    goto :goto_2

    :cond_6
    sget-object v5, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    :goto_2
    sget-object v6, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder$1;->$SwitchMap$cz$msebera$android$httpclient$entity$mime$HttpMultipartMode:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_8

    if-eq v5, v4, :cond_7

    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;

    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpStrictMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_7
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;

    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpRFC6532Multipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3

    :cond_8
    new-instance v4, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;

    invoke-direct {v4, v2, v0, v3}, Lcz/msebera/android/httpclient/entity/mime/HttpBrowserCompatibleMultipart;-><init>(Ljava/nio/charset/Charset;Ljava/lang/String;Ljava/util/List;)V

    :goto_3
    new-instance v0, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;

    invoke-virtual {v4}, Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;->getTotalLength()J

    move-result-wide v2

    invoke-direct {v0, v4, v1, v2, v3}, Lcz/msebera/android/httpclient/entity/mime/MultipartFormEntity;-><init>(Lcz/msebera/android/httpclient/entity/mime/AbstractMultipartForm;Lcz/msebera/android/httpclient/entity/ContentType;J)V

    return-object v0
.end method

.method public seContentType(Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->setContentType(Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBoundary(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->boundary:Ljava/lang/String;

    return-object p0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->charset:Ljava/nio/charset/Charset;

    return-object p0
.end method

.method public setContentType(Lcz/msebera/android/httpclient/entity/ContentType;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    const-string v0, "Content type"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    return-object p0
.end method

.method public setLaxMode()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->BROWSER_COMPATIBLE:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public setMimeSubtype(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 2

    const-string v0, "MIME subtype"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notBlank(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcz/msebera/android/httpclient/entity/ContentType;->create(Ljava/lang/String;)Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object p1

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->contentType:Lcz/msebera/android/httpclient/entity/ContentType;

    return-object p0
.end method

.method public setMode(Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;)Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 0

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object p0
.end method

.method public setStrictMode()Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;
    .locals 1

    sget-object v0, Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;->STRICT:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    iput-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/MultipartEntityBuilder;->mode:Lcz/msebera/android/httpclient/entity/mime/HttpMultipartMode;

    return-object p0
.end method

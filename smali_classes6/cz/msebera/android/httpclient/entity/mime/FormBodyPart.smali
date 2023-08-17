.class public Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

.field private final header:Lcz/msebera/android/httpclient/entity/mime/Header;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Body"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    new-instance p1, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {p1}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateContentDisp(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateContentType(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    invoke-virtual {p0, p2}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->generateTransferEncoding(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;Lcz/msebera/android/httpclient/entity/mime/Header;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Body"

    invoke-static {p2, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    iput-object p2, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Lcz/msebera/android/httpclient/entity/mime/Header;

    invoke-direct {p3}, Lcz/msebera/android/httpclient/entity/mime/Header;-><init>()V

    :goto_0
    iput-object p3, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    return-void
.end method


# virtual methods
.method public addField(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Field name"

    invoke-static {p1, v0}, Lcz/msebera/android/httpclient/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    new-instance v1, Lcz/msebera/android/httpclient/entity/mime/MinimalField;

    invoke-direct {v1, p1, p2}, Lcz/msebera/android/httpclient/entity/mime/MinimalField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcz/msebera/android/httpclient/entity/mime/Header;->addField(Lcz/msebera/android/httpclient/entity/mime/MinimalField;)V

    return-void
.end method

.method public generateContentDisp(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "form-data; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "; filename=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;->getFilename()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public generateContentType(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    instance-of v0, p1, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/mime/content/AbstractContentBody;->getContentType()Lcz/msebera/android/httpclient/entity/ContentType;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Content-Type"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcz/msebera/android/httpclient/entity/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, v1, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentDescriptor;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "; charset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentDescriptor;->getCharset()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public generateTransferEncoding(Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p1}, Lcz/msebera/android/httpclient/entity/mime/content/ContentDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Content-Transfer-Encoding"

    invoke-virtual {p0, v0, p1}, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->addField(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getBody()Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->body:Lcz/msebera/android/httpclient/entity/mime/content/ContentBody;

    return-object v0
.end method

.method public getHeader()Lcz/msebera/android/httpclient/entity/mime/Header;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->header:Lcz/msebera/android/httpclient/entity/mime/Header;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcz/msebera/android/httpclient/entity/mime/FormBodyPart;->name:Ljava/lang/String;

    return-object v0
.end method

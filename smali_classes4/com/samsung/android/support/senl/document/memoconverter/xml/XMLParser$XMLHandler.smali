.class Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XMLHandler"
.end annotation


# static fields
.field private static final TAG_CONTENT:Ljava/lang/String; = "t"

.field private static final TAG_CREATED_TIME:Ljava/lang/String; = "createdTime"

.field private static final TAG_MODIFIED_TIME:Ljava/lang/String; = "modifiedTime"

.field private static final TAG_TEMPLATE_TYPE:Ljava/lang/String; = "TemplateInfo"

.field private static final TAG_VALUE:Ljava/lang/String; = "val"


# instance fields
.field private buf:Ljava/lang/StringBuilder;

.field private currentElement:Z

.field private item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->currentElement:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->buf:Ljava/lang/StringBuilder;

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->currentElement:Z

    if-eqz v0, :cond_0

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->buf:Ljava/lang/StringBuilder;

    aget-char v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->currentElement:Z

    const-string p1, "t"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    iget-object p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->buf:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->setContent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCreatedTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->getCreatedTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getModifiedTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->getModifiedTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getTemplateType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->getTemplateType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "t"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->currentElement:Z

    goto :goto_0

    :cond_0
    const-string p1, "TemplateInfo"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "val"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->setTemplateType(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "createdTime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->setCreatedTime(J)V

    goto :goto_0

    :cond_2
    const-string p1, "modifiedTime"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p4, p3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLParser$XMLHandler;->item:Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/support/senl/document/memoconverter/xml/XMLItem;->setModifiedTime(J)V

    :cond_3
    :goto_0
    return-void
.end method

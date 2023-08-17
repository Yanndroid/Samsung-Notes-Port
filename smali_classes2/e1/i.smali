.class public Le1/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;-><init>()V

    iput-object v0, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le1/i;
    .locals 9

    const-string v0, "ServerNoteInfoItem"

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v3, "GetNoteInfoView"

    const/4 v4, 0x3

    if-eqz p1, :cond_8

    const/4 v5, 0x2

    const-string v6, "]"

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_8

    const/4 v5, 0x4

    if-eq p1, v5, :cond_8

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromXMLString - invalid eventType = ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result p1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_8

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "resourceId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v6, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->setDocUuid(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v7, "serverResourceId"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v6, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->setServerId(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v7, "syncModifiedTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v6, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->setSyncModifiedTime(J)V

    goto :goto_1

    :cond_4
    const-string v7, "modelName"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->setModelName(Ljava/lang/String;)V

    :cond_5
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const-string v5, "attributes"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0, v1}, Le1/i;->c(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromXMLString - invalid name = ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-static {v1, v2}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result p1

    if-ne p1, v4, :cond_9

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_a

    :cond_9
    if-ne p1, v2, :cond_0

    :cond_a
    return-object p0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromXMLString : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x147

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Ls0/c;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;
    .locals 1

    iget-object v0, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    return-object v0
.end method

.method public final c(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    new-instance v0, Ll0/c;

    new-instance v1, Lk0/b;

    invoke-direct {v1}, Lk0/b;-><init>()V

    invoke-direct {v0, v1}, Ll0/c;-><init>(Lk0/b;)V

    invoke-virtual {v0, p1}, Ll0/c;->c0(Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object p1, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-virtual {v0}, Ll0/c;->p()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->setModifiedTime(J)V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Le1/i;->a:Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/sync/ServerNoteInfo;->printServerNoteInfo()V

    return-void
.end method

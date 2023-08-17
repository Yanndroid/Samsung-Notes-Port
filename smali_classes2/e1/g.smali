.class public Le1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/g$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Le1/g$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Le1/g;->a:Z

    const-string v0, ""

    iput-object v0, p0, Le1/g;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Le1/g;->c:Le1/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le1/g;
    .locals 8

    const-string v0, "NoteChangeItem"

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
    const-string v3, "NoteChangesView"

    const/4 v4, 0x3

    if-eqz p1, :cond_11

    const/4 v5, 0x2

    const-string v6, "]"

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_11

    const/4 v5, 0x4

    if-eq p1, v5, :cond_11

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromXMLString - invalid eventType = ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v5, "hasNext"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1}, Lq0/d;->m(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result p1

    iput-boolean p1, p0, Le1/g;->a:Z

    goto/16 :goto_1

    :cond_3
    const-string v5, "lastChangePoint"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/g;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_4
    const-string v5, "changes"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance p1, Le1/g$a;

    invoke-direct {p1}, Le1/g$a;-><init>()V

    iput-object p1, p0, Le1/g;->c:Le1/g$a;

    goto/16 :goto_1

    :cond_5
    const-string v5, "serverId"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Le1/g$a;->a:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const-string v5, "resourceId"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Le1/g$a;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v5, "syncModifiedTime"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->o(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v5

    iput-wide v5, p1, Le1/g$a;->c:J

    goto/16 :goto_1

    :cond_8
    const-string v5, "isDeleted"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->m(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    iput-boolean v5, p1, Le1/g$a;->d:Z

    goto/16 :goto_1

    :cond_9
    const-string v5, "isLocked"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->m(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    iput-boolean v5, p1, Le1/g$a;->e:Z

    goto/16 :goto_1

    :cond_a
    const-string v5, "isEncrypted"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_1

    :cond_b
    const-string v5, "ownerId"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    goto :goto_1

    :cond_c
    const-string v5, "modelName"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->l(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Le1/g$a;->f:Ljava/lang/String;

    goto :goto_1

    :cond_d
    const-string v5, "commitId"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/app/notes/sync/utils/a;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Le1/g$a;->g:Ljava/lang/String;

    goto :goto_1

    :cond_e
    const-string v5, "deviceId"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string p1, "parseXml - ignore device id!"

    goto/16 :goto_0

    :cond_f
    const-string v5, "isUpdatedByDevice"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object p1, p0, Le1/g;->c:Le1/g$a;

    invoke-static {v1}, Lq0/d;->m(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v5

    iput-boolean v5, p1, Le1/g$a;->h:Z

    goto :goto_1

    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromXMLString - invalid name = ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    :goto_1
    invoke-static {v1, v2}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result p1

    if-ne p1, v4, :cond_12

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_13

    :cond_12
    if-ne p1, v2, :cond_0

    :cond_13
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

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Le1/g;->a:Z

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le1/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Le1/g$a;
    .locals 1

    iget-object v0, p0, Le1/g;->c:Le1/g$a;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le1/g;->b:Ljava/lang/String;

    return-void
.end method

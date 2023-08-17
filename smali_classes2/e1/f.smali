.class public Le1/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le1/f$b;,
        Le1/f$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Le1/f$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Le1/f;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Le1/f;->b:Le1/f$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Le1/f;
    .locals 8

    const-string v0, "FolderChangeItem"

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
    const-string v3, "FolderChangesView"

    const/4 v4, 0x3

    if-eqz p1, :cond_5

    const/4 v5, 0x2

    const-string v6, "]"

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_5

    const/4 v5, 0x4

    if-eq p1, v5, :cond_5

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

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, "lastChangePoint"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/f;->a:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v5, "FolderResource"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0, v1}, Le1/f;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fromXMLString - invalid name = ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    invoke-static {v1, v2}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result p1

    if-ne p1, v4, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_7

    :cond_6
    if-ne p1, v2, :cond_0

    :cond_7
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

.method public b()Le1/f$a;
    .locals 1

    iget-object v0, p0, Le1/f;->b:Le1/f$a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le1/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x2

    const-string v2, "FolderResource"

    const/4 v3, 0x3

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseFolderResource - invalid eventType = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderChangeItem"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Le1/f$a;

    invoke-direct {v0}, Le1/f$a;-><init>()V

    iput-object v0, p0, Le1/f;->b:Le1/f$a;

    goto :goto_1

    :cond_1
    const-string v1, "syncModifiedTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Le1/f;->b:Le1/f$a;

    invoke-static {p1}, Lq0/d;->o(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v4

    iput-wide v4, v0, Le1/f$a;->a:J

    goto :goto_1

    :cond_2
    const-string v1, "nodeList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Le1/f;->b:Le1/f$a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Le1/f$a;->b:Ljava/util/ArrayList;

    goto :goto_1

    :cond_3
    const-string v1, "node"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Le1/f;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_4
    :goto_1
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_5
    if-ne v1, v0, :cond_7

    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method public final e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const-string v3, "node"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v4, "FolderChangeItem"

    const/4 v5, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v5, :cond_f

    const/4 v6, 0x4

    if-eq v0, v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseNode - invalid eventType = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_f

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->uUid:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {p1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->type:Ljava/lang/String;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_f

    const-string v6, "parentFolderNodeId"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {p1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->parentFolderNodeId:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const-string v6, "syncModifiedTime"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {p1}, Lq0/d;->o(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->syncModifiedTime:J

    goto/16 :goto_2

    :cond_6
    const-string v6, "createdTime"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {p1}, Lq0/d;->o(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->createdTime:J

    goto/16 :goto_2

    :cond_7
    const-string v6, "lastModifiedTime"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {p1}, Lq0/d;->o(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->lastModifiedTime:J

    goto/16 :goto_2

    :cond_8
    const-string v6, "name"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {p1}, Lq0/d;->l(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/FolderUtils;->isValidFolderName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    rem-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/samsung/android/support/senl/nt/base/common/util/FolderUtils;->getNewFolderName(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->name:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseNode - invalid fold name -> "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v4, "state"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const-string v4, "restorePath"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo v6, "trashed"

    if-eqz v4, :cond_b

    iget-object v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lq0/d;->l(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->restorePath:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string/jumbo v4, "trashedTime"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->state:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lq0/d;->o(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->recyclerBinMovedTime:J

    goto :goto_2

    :cond_c
    const-string v4, "isSyncWithMS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lq0/d;->n(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    iput v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->isSyncWithMS:I

    goto :goto_2

    :cond_d
    const-string v4, "color"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lq0/d;->n(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    iput v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->displayNameColor:I

    goto :goto_2

    :cond_e
    const-string v4, "order"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->isEmptyElementTag()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p1}, Lq0/d;->n(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    iput v0, v2, Lcom/samsung/android/support/senl/nt/data/database/core/sync/FolderNodeItem;->reorder:I

    :cond_f
    :goto_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_10

    iget-object p1, p0, Le1/f;->b:Le1/f$a;

    iget-object p1, p1, Le1/f$a;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Le1/f;->b:Le1/f$a;

    iget-object v0, v0, Le1/f$a;->b:Ljava/util/ArrayList;

    new-instance v1, Le1/f$b;

    invoke-direct {v1}, Le1/f$b;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

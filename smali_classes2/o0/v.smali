.class public Lo0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo0/v$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Lk0/a;

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo0/v$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lk0/b;


# direct methods
.method public constructor <init>(Lk0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/v;->h:Lk0/b;

    iget-object p1, p1, Lk0/b;->b:Lk0/a;

    iput-object p1, p0, Lo0/v;->f:Lk0/a;

    const/4 p1, -0x1

    iput p1, p0, Lo0/v;->a:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo0/v;->g:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lo0/v;->b:Ljava/lang/String;

    iput-object p1, p0, Lo0/v;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public IsSame(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lo0/v;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lo0/v;

    iget v1, p0, Lo0/v;->a:I

    iget v3, p1, Lo0/v;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_VoiceData"

    if-eq v1, v3, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals - NE - mAttachedFileId["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo0/v;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lo0/v;->a:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    iget-object v1, p0, Lo0/v;->b:Ljava/lang/String;

    iget-object v3, p1, Lo0/v;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals - NE - mName["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/v;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/v;->b:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lo0/v;->c:Ljava/lang/String;

    iget-object v3, p1, Lo0/v;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals - NE - mPlayTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo0/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lo0/v;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lo0/v;->g:Ljava/util/ArrayList;

    iget-object p1, p1, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-static {v1, p1}, Lq0/b;->a(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, " !! equals() - NE - mVoicePropertyList check"

    goto :goto_1

    :cond_5
    return v0
.end method

.method public a(Le1/o;)V
    .locals 3

    iget-object v0, p0, Lo0/v;->f:Lk0/a;

    iget v1, p0, Lo0/v;->a:I

    invoke-virtual {v0, v1}, Lk0/a;->h(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attachFile"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/v;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/v;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->encodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playTime"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lo0/v;->d:J

    const-string v2, "createdTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    iget-wide v0, p0, Lo0/v;->e:J

    const-string v2, "recordingTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public b(Le1/o;)V
    .locals 1

    const-string/jumbo v0, "voiceData"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lo0/v;->a(Le1/o;)V

    invoke-virtual {p0, p1}, Lo0/v;->c(Le1/o;)V

    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 7

    iget-object v0, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "propertyList"

    invoke-virtual {p1, v0}, Le1/o;->y(Ljava/lang/String;)V

    iget-object v1, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo0/v$a;

    const-string v3, "property"

    invoke-virtual {p1, v3}, Le1/o;->y(Ljava/lang/String;)V

    :try_start_0
    const-string v4, "action"

    iget v5, v2, Lo0/v$a;->a:I

    invoke-virtual {p1, v4, v5}, Le1/o;->b(Ljava/lang/String;I)V

    const-string/jumbo v4, "timeStamp"

    iget-wide v5, v2, Lo0/v$a;->b:J

    invoke-virtual {p1, v4, v5, v6}, Le1/o;->c(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WCon_VoiceData.composeXml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WCon_VoiceData"

    invoke-static {v4, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, v3}, Le1/o;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Le1/o;->g(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public d()I
    .locals 3

    iget-object v0, p0, Lo0/v;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x4

    add-int/2addr v0, v1

    iget-object v2, p0, Lo0/v;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public e()Z
    .locals 4

    iget v0, p0, Lo0/v;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo0/v;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo0/v;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lo0/v;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public f(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attachFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lo0/v;->f:Lk0/a;

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lk0/a;->e(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lo0/v;->a:I

    goto :goto_0

    :cond_0
    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/v;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "playTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo0/v;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "createdTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lo0/v;->d:J

    goto :goto_0

    :cond_3
    const-string v1, "recordingTime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lo0/v;->e:J

    :cond_4
    :goto_0
    return-void
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "propertyList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Lq0/d;->a(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    new-instance v0, Lo0/v$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lo0/v$a;-><init>(Lo0/u;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "action"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lo0/v$a;->a:I

    goto :goto_2

    :cond_1
    const-string/jumbo v5, "timeStamp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lo0/v$a;->b:J

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v0

    goto :goto_0

    :cond_4
    return-void
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string/jumbo v2, "voiceData"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Lo0/v;->f(Lorg/xmlpull/v1/XmlPullParser;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    invoke-static {p1, v1}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseXml - invalid eventType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WCon_VoiceData"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lo0/v;->g(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public i(Ljava/io/RandomAccessFile;)V
    .locals 8

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v0

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    iput v3, p0, Lo0/v;->a:I

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo0/v;->b:Ljava/lang/String;

    invoke-static {p1}, Lq0/b;->x(Ljava/io/RandomAccessFile;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lo0/v;->c:Ljava/lang/String;

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v3

    iput-wide v3, p0, Lo0/v;->d:J

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    new-instance v5, Lo0/v$a;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lo0/v$a;-><init>(Lo0/u;)V

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v6

    iput v6, v5, Lo0/v$a;->a:I

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v6

    iput-wide v6, v5, Lo0/v$a;->b:J

    iget-object v6, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v3

    sub-long/2addr v3, v1

    int-to-long v0, v0

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    invoke-static {p1}, Lq0/b;->q(Ljava/io/RandomAccessFile;)J

    move-result-wide v0

    iput-wide v0, p0, Lo0/v;->e:J

    :cond_1
    return-void
.end method

.method public j(Ljava/io/RandomAccessFile;)V
    .locals 3

    iget v0, p0, Lo0/v;->a:I

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-object v0, p0, Lo0/v;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-object v0, p0, Lo0/v;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lq0/b;->M(Ljava/io/RandomAccessFile;Ljava/lang/String;)V

    iget-wide v0, p0, Lo0/v;->d:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    iget-object v0, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    if-lez v0, :cond_0

    iget-object v0, p0, Lo0/v;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo0/v$a;

    iget v2, v1, Lo0/v$a;->a:I

    invoke-static {p1, v2}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    iget-wide v1, v1, Lo0/v$a;->b:J

    invoke-static {p1, v1, v2}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo0/v;->e:J

    invoke-static {p1, v0, v1}, Lq0/b;->G(Ljava/io/RandomAccessFile;J)V

    return-void
.end method

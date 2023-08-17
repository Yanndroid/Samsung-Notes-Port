.class public Le1/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/Context;

.field public b:Le1/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le1/k;->a:Landroid/content/Context;

    new-instance p1, Le1/j;

    invoke-direct {p1}, Le1/j;-><init>()V

    iput-object p1, p0, Le1/k;->b:Le1/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Le1/k;->b:Le1/j;

    iget-object v0, v0, Le1/j;->a:Le1/j$a;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->e()Lg0/a;

    move-result-object v1

    iget-object v2, p0, Le1/k;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lg0/a;->getPasswordHash(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le1/j$a;->a:Ljava/lang/String;

    iget-object v0, p0, Le1/k;->b:Le1/j;

    iget-object v0, v0, Le1/j;->a:Le1/j$a;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v1

    invoke-virtual {v1}, Lx/e;->e()Lg0/a;

    move-result-object v1

    iget-object v2, p0, Le1/k;->a:Landroid/content/Context;

    invoke-interface {v1, v2}, Lg0/a;->getPasswordSalt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le1/j$a;->b:Ljava/lang/String;

    iget-object v0, p0, Le1/k;->b:Le1/j;

    iget-object v0, v0, Le1/j;->a:Le1/j$a;

    invoke-static {}, Lx2/b;->c()J

    move-result-wide v1

    iput-wide v1, v0, Le1/j$a;->c:J

    iget-object v0, p0, Le1/k;->b:Le1/j;

    iget-object v0, v0, Le1/j;->a:Le1/j$a;

    iget-object v0, v0, Le1/j$a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le1/k;->b:Le1/j;

    iget-object v0, v0, Le1/j;->a:Le1/j$a;

    iget-object v0, v0, Le1/j$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UpSyncSettingsItem"

    const-string v1, "fillPassInfo() : invalid PasswordInfo!"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ls0/c;

    const/16 v1, 0x146

    const-string v2, "invalid PasswordInfo!"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public b()Ljava/lang/String;
    .locals 8

    const-string v0, "passcode"

    const-string v1, "Settings"

    const-string v2, ""

    invoke-virtual {p0}, Le1/k;->a()V

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    new-instance v4, Le1/p;

    invoke-direct {v4, v3}, Le1/p;-><init>(Lorg/xmlpull/v1/XmlSerializer;)V

    invoke-virtual {v4, v1}, Le1/o;->y(Ljava/lang/String;)V

    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "syncModifiedTime"

    iget-object v6, p0, Le1/k;->b:Le1/j;

    iget-object v6, v6, Le1/j;->a:Le1/j$a;

    iget-wide v6, v6, Le1/j$a;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v2, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Le1/k;->b:Le1/j;

    iget-object v6, v6, Le1/j;->a:Le1/j$a;

    iget-object v6, v6, Le1/j$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Le1/k;->b:Le1/j;

    iget-object v6, v6, Le1/j;->a:Le1/j$a;

    iget-object v6, v6, Le1/j$a;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v4, v1}, Le1/o;->g(Ljava/lang/String;)V

    invoke-virtual {v4}, Le1/o;->h()V

    invoke-virtual {v4}, Le1/o;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toXml : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpSyncSettingsItem"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ls0/c;

    const/16 v2, 0x146

    invoke-direct {v1, v2, v0}, Ls0/c;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

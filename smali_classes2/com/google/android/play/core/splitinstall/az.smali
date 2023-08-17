.class final Lcom/google/android/play/core/splitinstall/az;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lorg/xmlpull/v1/XmlPullParser;

.field private final b:Lcom/google/android/play/core/splitinstall/g;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/play/core/splitinstall/g;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->b:Lcom/google/android/play/core/splitinstall/g;

    iput-object p1, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    return-void
.end method

.method private final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private final b()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/splitinstall/h;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "splits"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "module"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "name"

    invoke-direct {p0, v0}, Lcom/google/android/play/core/splitinstall/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_1

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_2

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    :goto_3
    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_2

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/google/android/play/core/splitinstall/az;->a:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "entry"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "key"

    invoke-direct {p0, v3}, Lcom/google/android/play/core/splitinstall/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "split"

    invoke-direct {p0, v4}, Lcom/google/android/play/core/splitinstall/az;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/az;->b()V

    if-eqz v3, :cond_3

    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/google/android/play/core/splitinstall/az;->b:Lcom/google/android/play/core/splitinstall/g;

    invoke-virtual {v5, v0, v3, v4}, Lcom/google/android/play/core/splitinstall/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/az;->b()V

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/az;->b()V

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/az;->b()V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/google/android/play/core/splitinstall/az;->b()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/play/core/splitinstall/az;->b:Lcom/google/android/play/core/splitinstall/g;

    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/g;->a()Lcom/google/android/play/core/splitinstall/h;

    move-result-object v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_4
    const-string v1, "SplitInstall"

    const-string v2, "Error while parsing splits.xml"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

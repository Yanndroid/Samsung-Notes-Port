.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/WebConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter<",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEIGHT_DP:I = 0x40

.field private static final TAG:Ljava/lang/String; = "SDocXConverter$WebConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/WebConverter;->convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z

    move-result p1

    return p1
.end method

.method public convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 4

    const-string v0, "SDocXConverter$WebConverter"

    const-string v1, "convert content"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getDPI()F

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectWeb()Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setTitle(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getUri()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setUri(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getImageTypeId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setImageTypeId(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setBody(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setState(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->setThumbnailPath(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->hasHTML()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentWeb;->getAttachedHTMLFile()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;->attachHTMLFile(Ljava/lang/String;)V

    :cond_4
    new-instance p1, Landroid/graphics/RectF;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxWidth()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {p1, v3, v3, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    invoke-interface {p2, v1}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return v0
.end method

.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/VoiceConverter;
.super Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter<",
        "Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;",
        ">;"
    }
.end annotation


# static fields
.field private static final HEIGHT_DP:I = 0x30

.field private static final KEY_VOICE_BOOKMARK_IDENTIFIER:Ljava/lang/String; = "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

.field private static final TAG:Ljava/lang/String; = "SDocXConverter$VoiceConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/AbsContentConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/VoiceConverter;->convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z

    move-result p1

    return p1
.end method

.method public convertContent(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;)Z
    .locals 5

    const-string v0, "SDocXConverter$VoiceConverter"

    const-string v1, "convert content"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getAttachedFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "can\'t add ContentVoice : not file"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/IConvertParams;->getComposer()Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getDPI()F

    move-result v0

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v0, v2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;->makeObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->attachFile(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setState(I)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->getPlayTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setPlayTime(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentVoice;->isRecorded()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;->setRecorded(Z)V

    new-instance p1, Landroid/graphics/RectF;

    invoke-interface {p2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->getObjectMaxWidth()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {p1, v4, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NOTES_APP_BOOKMARK_VOICE_IDENTIFIER"

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p2, v2}, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/converters/INoteComposer;->appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    return v0
.end method

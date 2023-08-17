.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 0
    .param p1    # Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->setDocument(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getBodyText()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getNeedNewLineCount(F)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getLineCountFromTextBottom(FZ)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public measureHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->measureText()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/sdoc/model/notecomposer/BodyTextMeasurer;->mBodyTextContext:Lcom/samsung/android/sdk/composer/text/SpenBodyTextContext;

    :cond_0
    return-void
.end method

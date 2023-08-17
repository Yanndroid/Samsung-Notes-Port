.class Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;
.super Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextDisplayContentCreator"
.end annotation


# instance fields
.field private final mIsLastContent:Z


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V

    iput-boolean p3, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;->mIsLastContent:Z

    return-void
.end method

.method private setTextStyle(Landroid/text/Editable;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getSpan()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->isPropertyEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getStart()I

    move-result v2

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;->getEnd()I

    move-result v3

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    new-instance v4, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;

    iget-boolean v5, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;->mIsLastContent:Z

    invoke-direct {v4, p1, v5}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;-><init>(Landroid/text/Editable;Z)V

    invoke-virtual {v4, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TextStyler;->setTextStyle(Lcom/samsung/android/sdk/composer/document/sdoc/textspan/SpenTextSpan;II)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public create()Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;->createEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->appendLineEnd(Landroid/text/Editable;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$TextDisplayContentCreator;->setTextStyle(Landroid/text/Editable;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->setTaskStyle(Landroid/text/Editable;)V

    return-object v0
.end method

.method public createEditable()Landroid/text/Editable;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getTaskStyle()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\u200b"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

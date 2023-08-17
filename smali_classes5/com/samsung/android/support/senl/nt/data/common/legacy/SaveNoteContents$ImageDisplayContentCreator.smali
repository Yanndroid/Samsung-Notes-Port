.class Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$ImageDisplayContentCreator;
.super Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageDisplayContentCreator"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;-><init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V

    return-void
.end method


# virtual methods
.method public create()Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$ImageDisplayContentCreator;->createEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->setTaskStyle(Landroid/text/Editable;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->appendLineEnd(Landroid/text/Editable;)V

    return-object v0
.end method

.method public createEditable()Landroid/text/Editable;
    .locals 5

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->createEditable()Landroid/text/Editable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/displaydata/TaskSpan;-><init>(I)V

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x21

    invoke-interface {v0, v1, v3, v2, v4}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method

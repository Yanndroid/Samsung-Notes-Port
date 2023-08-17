.class Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayContentCreator"
.end annotation


# instance fields
.field public mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

.field private final mIsSameTaskGroup:Z

.field public mLineEnd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    iput-boolean p2, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mIsSameTaskGroup:Z

    if-eqz p3, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "\n"

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mLineEnd:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendLineEnd(Landroid/text/Editable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mLineEnd:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public create()Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->createEditable()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public createEditable()Landroid/text/Editable;
    .locals 2

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, "\u200b"

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public setTaskStyle(Landroid/text/Editable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mIsSameTaskGroup:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;-><init>(Landroid/text/Editable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->setTaskGroupStyle(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;

    invoke-direct {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;-><init>(Landroid/text/Editable;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/legacy/SaveNoteContents$DisplayContentCreator;->mContent:Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/legacy/displaycontent/TaskStyler;->setTaskStyle(Lcom/samsung/android/sdk/composer/document/sdoc/SpenContentBase;)V

    :goto_0
    return-void
.end method

.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotePdfData"
.end annotation


# instance fields
.field public mHavingPdf:Z

.field public mNoteKey:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mHavingPdf:Z

    return-void
.end method


# virtual methods
.method public clearHavingPdf()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mHavingPdf:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clearHavingPdf#"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mHavingPdf:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->notifyPdfCollectorTask(Z)V

    :cond_0
    return-void
.end method

.method public clearNoteKey()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mNoteKey:I

    return-void
.end method

.method public notifyPdfCollectorTask(Z)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->PAUSE_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->RESUME_PDF:Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/ICollectParam$ActionType;->getValue()I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->getInstance()Lcom/samsung/android/support/senl/nt/model/collector/CollectController;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;-><init>()V

    const-string v2, "Composer"

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPdfActionKey(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setPdfActionCaller(Ljava/lang/Class;)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->setActionType(I)Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam$CollectParamBuilder;->build()Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/model/collector/CollectController;->postCollectorTask(Lcom/samsung/android/support/senl/nt/model/collector/common/CollectParam;)V

    return-void
.end method

.method public setHavingPdf()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mHavingPdf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setHavingPdf# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mHavingPdf:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->notifyPdfCollectorTask(Z)V

    return-void
.end method

.method public setHavingPdf(Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mHavingPdf:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "setHavingPdf# page"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mHavingPdf:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->notifyPdfCollectorTask(Z)V

    :cond_1
    return-void
.end method

.method public setNoteKey(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getHandle()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mNoteKey:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->mNoteKey:I

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->clearHavingPdf()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;->getPageList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenWPage;->hasPDF()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/NoteManager$NotePdfData;->setHavingPdf()V

    :cond_2
    return-void
.end method

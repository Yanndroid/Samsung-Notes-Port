.class Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getComposerIntentFromBuilder(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;)Landroid/content/Intent;
    .locals 0

    invoke-virtual {p4, p3}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setDocUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setComposerComponent(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setViewAction()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setMdeInfo(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setIsNewDoc(Z)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method private isOpenMemoIntent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.app.notes.ACTION_OPEN_MEMO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isShareIntent(Landroid/content/ClipData;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isWidgetIntent(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "widget.MEMO_CONVERT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getOpenPDFIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    invoke-direct {v0, p4}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->addPdfUri(Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->addPdfPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setComposerComponent(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setViewAction()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setOpenPDFFlags()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getOpenPDFReaderIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    invoke-direct {v0, p3}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->addPdfUriForReader(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p2

    const-string v0, "pdf_open_path"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->addPdfPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setPdfReaderComponent(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setViewAction()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setOpenPDFFlags()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getStartComposerIntent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    const v1, 0x10008000

    invoke-direct {v0, p2, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setDocUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setComposerComponent(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setViewAction()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->setDefaultFlags()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->addFlags(I)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getStartComposerIntentAfterUnlock(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    invoke-static {p1}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->o()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lock_account_guid"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p2
.end method

.method public getStartComposerIntentBeforeUnlock(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;-><init>(Landroid/content/Intent;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getComposerIntentFromBuilder(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getStartComposerIntentForExistingDoc(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x10008000

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;-><init>(Landroid/content/Intent;I)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->getComposerIntentFromBuilder(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public getStartMemoListAndRequestComposerIntent(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentType;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x10008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "execution_composer_uuid"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "execution_composer_type"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    return-object v0
.end method

.method public getStartMemoListIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->getNoteListClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const p1, 0x10008000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getUuid(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3

    const-string v0, "sdoc_uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v1
.end method

.method public isValid(Landroid/content/Intent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->isShareIntent(Landroid/content/ClipData;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->isOpenMemoIntent(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;->isWidgetIntent(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

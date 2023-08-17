.class Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComposerIntentBuilder"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;-><init>(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public addFlags(I)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public addPdfPath(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "pdf_open_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public addPdfUri(Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "pdf_open_uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public addPdfUriForReader(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "pdf_open_uri"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;-><init>()V

    const-string v1, "key_filename"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PwFileManager;->getPdfFileInfo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/model/PdfFileInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string p3, "pdf_file_info"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setComposerComponent(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object p0
.end method

.method public setDefaultFlags()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x1000001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x1c080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public setDocUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "sdoc_uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setIsNewDoc(Z)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "new_doc"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method

.method public setMdeInfo(Landroid/content/Intent;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 3

    const-string v0, "mde_space_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "mde_group_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "mde_owner_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "account_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object p0
.end method

.method public setOpenPDFFlags()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, -0x1001

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const/high16 v1, 0x1c080000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public setPdfReaderComponent(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerActivityClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogic(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->getComposerPdfReaderClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    return-object p0
.end method

.method public setViewAction()Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/trigger/TriggerIntentHandler$ComposerIntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

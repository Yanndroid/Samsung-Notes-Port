.class Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/addons/AddonsCopyController$IAddonsCaller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->connectToAddons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

.field public final synthetic val$highLightText:Ljava/lang/String;

.field public final synthetic val$mode:I

.field public final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$uuid:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$mode:I

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$highLightText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddonsCalled(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsSdocHelper;->unlockSdoc(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "AddonsHandler"

    if-nez v0, :cond_0

    const-string p1, "onAddonsCalled, fail to unlock"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->f(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$uuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->get(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$mode:I

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;-><init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;I)V

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/support/senl/nt/base/framework/provider/ShareFileProvider;->AUTHORITY:Ljava/lang/String;

    invoke-static {v3, v4, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setData(Landroid/net/Uri;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setPaths(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$highLightText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setHighLightText(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object p2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$uuid:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/samsung/android/app/notes/sync/db/j;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setHashTagData(Ljava/util/List;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setConvertingEnabled(Z)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getIsLock()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/common/util/LockUtils;->isLockedSdocType(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setLockInfo(Z)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object p2

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getCategoryUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->getCategoryEntity(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->setCategoryInfo(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesCategoryTreeEntity;)Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsComposerBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentDataRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->val$uuid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/data/repository/document/NotesDocumentRepository;->setOpenedTime(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->a(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p2

    const/16 v0, 0x65

    invoke-virtual {p2, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAddonsCalled, exception occurs : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAddonsCalled, ActivityNotFoundException occurs : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->b(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->isUPSM(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2$1;-><init>(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler$2;->this$0:Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;->f(Lcom/samsung/android/support/senl/nt/app/addons/AddonsHandler;)V

    return-void
.end method

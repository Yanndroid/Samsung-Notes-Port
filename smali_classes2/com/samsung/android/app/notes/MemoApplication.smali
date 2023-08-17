.class public Lcom/samsung/android/app/notes/MemoApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "MemoApplication"


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mCurrentLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mCurrentLocale:Ljava/util/Locale;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/app/notes/MemoApplication;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/app/notes/MemoApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/MemoApplication;->initShareDropComponents()V

    return-void
.end method

.method public static initAccessHandler()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/notes/memolist/MemoListActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setNoteListClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/app/notes/memolist/MemoListBaseActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setNoteListBaseActivityClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/app/notes/memolist/MemoPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setNotePickerClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setSettingsMainActivity(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setSettingsDetailActivity(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/invitation/GcsInvitationActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setSharedInvitationListClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/coedit/CoeditLaunchSocialPickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setSocialPickerClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/coedit/spacepicker/CoeditSpacePickerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setCoeditSpacePickerClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/livesharing/LiveSharingActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setLiveSharingActivityClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/app/notes/memolist/MultiInstanceMemoListActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/notelist/NoteListAccessHandler;->setNoteListMultiInstanceClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/about/SetupWizardWelcomeActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->setNoticePermissionActivity(Ljava/lang/Class;)V

    new-instance v0, Lcom/samsung/android/model/contractimpl/DocumentAccessContractImpl;

    invoke-direct {v0}, Lcom/samsung/android/model/contractimpl/DocumentAccessContractImpl;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler;->setContract(Lcom/samsung/android/support/senl/nt/base/common/access/document/DocumentAccessHandler$DocumentAccessContract;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/coedit/service/CoeditService;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/coedit/CoeditAccessHandler;->setCoeditServiceClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/lock/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->setLockActivityClass(Ljava/lang/Class;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/LockManagerFactory;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/LockManagerFactory;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/lock/LockAccessHandler;->setLockManagerFactory(Lcom/samsung/android/support/senl/nt/base/common/access/lock/ILockManagerFactory;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/hashtag/HashTagNotesActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/hashtag/HashTagAccessHandler;->setHashTagNotesActivityClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/OldCategoryActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->setOldCategoryListClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/oldnotes/OldNotesActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/oldnote/OldNoteAccessHandler;->setOldNotesClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/folder/FolderListActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->setFolderListClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/folder/view/dialog/FolderPickerDialog;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/folder/FolderListAccessHandler;->setFolderPickerDialogClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->setComposerActivityClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/app/notes/nativecomposer/NativeComposerActionNewActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->setNativeComposerActionNewActivityClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/pdfwriter/PdfWriterActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->setPdfReaderActivityClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/composer/ComposerAccessHandler;->setCreateNoteActivityClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetToolBarProvider;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->setWidgetToolbarProviderClass(Ljava/lang/Class;)V

    const-class v0, Lcom/samsung/android/app/notes/widget/WidgetListProvider;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/widgetaccess/WidgetAccessHandler;->setNoteListWidgetProviderClass(Ljava/lang/Class;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/addons/AddonInitializer;->initialize()V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ImportDocumentManagerContractFactoryImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/ImportDocumentManagerContractFactoryImpl;-><init>()V

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/access/sync/SyncAccessHandler;->setImportDocumentManagerFactory(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContractFactory;)V

    return-void
.end method

.method private initBixby(Z)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->setup(ZLandroid/app/Application;)V

    invoke-static {}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->getInstance()Lcom/samsung/android/support/notes/bixby/BixbyManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/notes/MemoApplication$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/MemoApplication$8;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/notes/bixby/BixbyManager;->registerBixby2Action(Lcom/samsung/android/support/notes/bixby/BixbyManagerContract$IBixby2Action;)V

    return-void
.end method

.method private initDatabase()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/database/access/NotesDatabaseManager;->init()V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->getInstance()Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/sync/db/c;

    iget-object v2, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/notes/sync/db/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager;->init(Lcom/samsung/android/support/senl/nt/data/contract/DataToSyncManager$DataObserver;)V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createDocumentCategoryTreeRepository()Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/category/NotesCategoryTreeRepository;->initializePredefined()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->newInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/repository/NotesDataRepositoryFactory;->createMainListRepository()Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->getSortParam()Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/data/repository/document/MainListRepository;->getAll_LiveData(Lcom/samsung/android/support/senl/nt/data/database/core/query/param/SortParam;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/notes/MemoApplication$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/MemoApplication$10;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private initSamsungAnalytics(Z)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->init(Z)V

    return-void
.end method

.method private initShareDropComponents()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-class v1, Lcom/samsung/android/app/notes/memolist/MemoListActivity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/samsung/android/app/notes/memolist/MemoPickerActivity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/samsung/android/app/notes/nativecomposer/NativeComposerActionNewActivity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/samsung/android/support/senl/nt/app/trigger/DocOpenTriggerActivity;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareComponents;->initAppDropList(Ljava/util/ArrayList;)V

    return-void
.end method

.method private isSamsungFuncEnabled()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isKMemoPackage(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isKnoxMode()Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private sendRestoreDocumentAction()V
    .locals 4

    const-string v0, "MemoApplication"

    const-string v1, "sendRestoreDocumentAction, send restore action - start"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/notes/MemoApplication$9;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/notes/MemoApplication$9;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/16 v3, 0xca

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    const-string v1, "sendRestoreDocumentAction, send restore action - end"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/util/DisplayUtils;->onConfigurationChanged(Landroid/content/Context;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/notification/SyncNotificationHelper;->changeConfiguration(Landroid/content/Context;Landroid/content/res/Configuration;)V

    invoke-static {p1}, Ln/a;->t(Landroid/content/res/Configuration;)V

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/common/util/LocaleUtils;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged Locale is changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MemoApplication"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/notes/control/NotificationChannelManager;->updateNotificationChannels(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/notes/MemoApplication;->mCurrentLocale:Ljava/util/Locale;

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->setAppContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/app/lock/ScreenLockManager;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/MemoApplication;->initDatabase()V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->setApplicationContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->setApplicationContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/app/notes/widget/AppWidgetConfiguration;->setup()V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/MemoApplication;->isSamsungFuncEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/MemoApplication;->initSamsungAnalytics(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/MemoApplication;->initBixby(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/notes/MemoApplication;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/sync/SyncInitializer;->quickInitialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/notes/MemoApplication$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/MemoApplication$1;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/16 v2, 0xcc

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    new-instance v1, Lcom/samsung/android/app/notes/MemoApplication$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/MemoApplication$2;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/16 v2, 0xc9

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    new-instance v1, Lcom/samsung/android/app/notes/MemoApplication$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/MemoApplication$3;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/16 v2, 0x12d

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    new-instance v1, Lcom/samsung/android/app/notes/MemoApplication$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/MemoApplication$4;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    new-instance v1, Lcom/samsung/android/app/notes/MemoApplication$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/MemoApplication$5;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    new-instance v1, Lcom/samsung/android/app/notes/MemoApplication$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/MemoApplication$6;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    new-instance v1, Lcom/samsung/android/app/notes/MemoApplication$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/notes/MemoApplication$7;-><init>(Lcom/samsung/android/app/notes/MemoApplication;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->addBaseLogic(ILjava/lang/Runnable;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/notes/memolist/MemoListActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/MultiTaskManager;->initialize(Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/MemoApplication;->sendRestoreDocumentAction()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->onTrimMemory(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrimMemory: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MemoApplication"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

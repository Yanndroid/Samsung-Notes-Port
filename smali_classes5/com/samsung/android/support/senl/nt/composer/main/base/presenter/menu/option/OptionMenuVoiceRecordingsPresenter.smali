.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

.field private mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "OptionMenuVoiceRecordingsPresenter"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;)Landroidx/fragment/app/Fragment;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method public static bridge synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkVoiceState()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecorderWorking()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/media/AudioManagerCompat;->isRecordActive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/AudioFocus;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x1392

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->toastVoiceMessage(I)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    const/16 v0, 0x138f

    goto :goto_0
.end method


# virtual methods
.method public addVoiceRecordings()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->isRecordingActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/composer/voice/VoiceManager;->stopRecording()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getPermissionsForRecordAudio()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter$1;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;[Ljava/lang/String;)V

    invoke-static {v1, v2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->checkVoiceState()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->TAG:Ljava/lang/String;

    const-string v2, "insert voice# voice state is not available"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;->checkAvailableStateToEdit(ZZZ)I

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;->insertVoiceData()V

    return v2
.end method

.method public init(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;Landroidx/fragment/app/Fragment;Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mObjectManager:Lcom/samsung/android/support/senl/nt/composer/main/base/model/composer/ObjectManager;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mFragment:Landroidx/fragment/app/Fragment;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mStorageChecker:Lcom/samsung/android/support/senl/nt/composer/main/base/util/StorageChecker;

    return-void
.end method

.method public isPermissionGrantedForVoiceRecordings()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/menu/option/OptionMenuVoiceRecordingsPresenter;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getPermissionsForRecordAudio()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

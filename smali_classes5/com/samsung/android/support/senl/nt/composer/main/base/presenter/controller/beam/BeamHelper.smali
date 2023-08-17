.class public Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;,
        Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;
    }
.end annotation


# static fields
.field private static final ACTION_POPUP:Ljava/lang/String; = "com.sec.android.directshare.DirectSharePopUp"

.field private static final ACTION_START:Ljava/lang/String; = "com.sec.android.directshare.DIRECT_SHARE_START_ACTION"

.field public static final BEAM_MIME_TYPE:Ljava/lang/String; = "text/DirectShareNotes"

.field private static final EXTRA_KEY_POPUP_MODE:Ljava/lang/String; = "POPUP_MODE"

.field private static final EXTRA_VAL_CLOUD_FILE:Ljava/lang/String; = "from_cloud_file"

.field private static final EXTRA_VAL_DRM_FILE:Ljava/lang/String; = "from_drm_file"

.field private static final EXTRA_VAL_NO_FILE:Ljava/lang/String; = "no_file_selected"

.field private static final KEY_SBEAM_ONOFF:Ljava/lang/String; = "SBeam_on_off"

.field private static final KEY_SBEAM_SUPPORT:Ljava/lang/String; = "SBeam_support"

.field private static final PACKAGE_NAME_SBEAM:Ljava/lang/String; = "com.sec.android.directshare"

.field private static final PACKAGE_NAME_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final PREP_NAME_SBEAM:Ljava/lang/String; = "pref_sbeam"

.field private static final STATUS_IS_CLOUD_FILE:I = 0x3

.field private static final STATUS_IS_DRM:I = 0x4

.field private static final STATUS_NONE:I = 0x0

.field private static final STATUS_NO_FILE_SELECTED:I = 0x2

.field private static final STATUS_PUSH:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isPaused:Z

.field private mActionAbeamPopup:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private mAppMime:Ljava/lang/String;

.field private mBeamUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

.field private mFilePath:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

.field private mNdefStatus:I

.field private mSettingContext:Landroid/content/Context;

.field private mbSupportedSbeam:Z

.field private mbeamCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;

.field private mbeamCompleteCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

.field private mbeamUrisCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "BeamHelper"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/util/Logger;->createTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.android.nfc.AndroidBeamPopUp"

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActionAbeamPopup:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mNdefStatus:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mSettingContext:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mBeamUris:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamUrisCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCompleteCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbSupportedSbeam:Z

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isPaused:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v1, "BeamHelper()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mAppMime:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {p3}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getDocState()Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/NotesDocument;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActionAbeamPopup:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mAppMime:Ljava/lang/String;

    return-object p0
.end method

.method private clearNfcAdapterCallback()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v1, "clearNfcAdapterCallback, getDefaultAdapter is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isSbeamOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v4, "clearNfcAdapterCallback, clear Sbeam"

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v4, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3, v1}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v4, "clearNfcAdapterCallback, clear Abeam"

    invoke-static {v1, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v3, v1}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v4, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v4}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v2, v2, [Landroid/app/Activity;

    invoke-virtual {v0, v3, v1, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mBeamUris:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mNdefStatus:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mNdefStatus:I

    return-void
.end method

.method private getFiles()[Ljava/io/File;
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mBeamUris:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mNdefStatus:I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mBeamUris:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isDrmFile(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)[Ljava/io/File;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->getFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isNoteSaved()Z

    move-result p0

    return p0
.end method

.method private isDrmFile(Landroid/net/Uri;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private isNoteSaved()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getModeManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mode/ModeManager;->isEditMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v0
.end method

.method private isSbeamOn()Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbSupportedSbeam:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mSettingContext:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    const-string v3, "pref_sbeam"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "SBeam_on_off"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSbeamOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->setBeamUris()V

    return-void
.end method

.method public static bridge synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private setBeamUris()V
    .locals 8

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBeamUris# mFilePath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->isLocked()Z

    move-result v3

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mComposerModel:Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/ComposerModel;->getNotesDocEntityManager()Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/data/NotesDocEntityManager;->getLastModifiedTime()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/ShareUtils;->generateNewFileName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sdk/util/SpenSdkInitializer;->initialize(Landroid/content/Context;)Z

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareToOtherAppHandler;->getShareUriHelper()Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mFilePath:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/share/ShareUriHelper;->getContextShareUri(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mBeamUris:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeamUris# uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBeamUris# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setNfcAdapterCallback()V
    .locals 6

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v1, "setNfcAdapterCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    const-string v1, "setNfcAdapterCallback, context is null"

    :goto_0
    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "setNfcAdapterCallback, getDefaultAdapter is null"

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isSbeamOn()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "setNfcAdapterCallback, callback instance are null."

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    const-string v2, "setNfcAdapterCallback, setSbeam"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCompleteCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

    if-nez v2, :cond_3

    :cond_2
    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v4, v5, [Landroid/app/Activity;

    invoke-virtual {v1, v0, v2, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCompleteCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v4, v5, [Landroid/app/Activity;

    invoke-virtual {v1, v0, v2, v4}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, v0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    const-string v2, "setNfcAdapterCallback, setAbeam"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamUrisCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCompleteCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

    if-nez v2, :cond_6

    :cond_5
    invoke-static {v0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamUrisCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v2}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCompleteCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v4, v5, [Landroid/app/Activity;

    invoke-virtual {v1, v0, v2, v4}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v2, v5, [Landroid/app/Activity;

    invoke-virtual {v1, v3, v0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v1, "finish()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "refreshNfcAdapterCallback(), getDefaultAdapter is null"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isSbeamOn()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const-string v2, "refreshNfcAdapterCallback(), setSbeam"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v1, v4, v0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v1, v4, v0, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4, v0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const-string v2, "refreshNfcAdapterCallback(), setAbeam"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v4, v0}, Landroid/nfc/NfcAdapter;->setBeamPushUrisCallback(Landroid/nfc/NfcAdapter$CreateBeamUrisCallback;Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v1, v4, v0, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v1, v4, v0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public isPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isPaused:Z

    return v0
.end method

.method public pause()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isPaused:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->clearNfcAdapterCallback()V

    return-void
.end method

.method public resume()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isPaused:Z

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->setNfcAdapterCallback()V

    return-void
.end method

.method public setOnCreateNdefMessageListener(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mListener:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$OnCreateNdefMessageListener;

    return-void
.end method

.method public start()V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActivity:Landroid/app/Activity;

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mSettingContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start(), NameNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActionAbeamPopup:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.nfc.AndroidBeamPopUp"

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mActionAbeamPopup:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mSettingContext:Landroid/content/Context;

    if-eqz v1, :cond_2

    const-string v2, "pref_sbeam"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "SBeam_support"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbSupportedSbeam:Z

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SBeam is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbSupportedSbeam:Z

    if-eqz v2, :cond_1

    const-string v2, "supported"

    goto :goto_1

    :cond_1
    const-string v2, "not supported"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbSupportedSbeam:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/a;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCallback;

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/b;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamCompleteCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamPushCompleteCallback;

    :cond_3
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;-><init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/c;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->mbeamUrisCb:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper$beamUrisCallback;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/beam/BeamHelper;->setNfcAdapterCallback()V

    return-void
.end method

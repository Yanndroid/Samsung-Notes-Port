.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TipCardHelper"


# instance fields
.field private final mAccountImportTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

.field private mConvertTaskFactoryListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

.field private final mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

.field private final mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;

.field private mImportPDFTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

.field private mImportSDocTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

.field private final mMicrosoftAccountLoginTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mSamsungAccountLoginForMsSyncDialogContact:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

.field private mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

.field private final mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

.field private final mSyncTipCardProgressListener:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardListener;

.field private final mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

.field private mTipCardPage:I

.field private final mTipCardTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

.field private mViewPager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

.field private final mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardPage:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$1;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSyncTipCardProgressListener:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardListener;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$2;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mContract:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$3;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSamsungAccountLoginForMsSyncDialogContact:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$4;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$5;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mAccountImportTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$6;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mMicrosoftAccountLoginTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance p2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;

    invoke-direct {p2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$7;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->setTipCardAdapterListener(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter$TipCardAdapterListener;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->setTipCardViewContract(Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardView$Contract;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mAccountImportTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method private addMicrosoftLoginErrorTipCard()Z
    .locals 2

    invoke-static {}, Li1/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMicrosoftAccountLoginAgain;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMicrosoftAccountLoginAgain;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private addMicrosoftLoginMainTipCard()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->isMicrosoftLoginTipcardCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->initSettingsMicrosoft()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->isSignIn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    goto :goto_0

    :cond_1
    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mMicrosoftAccountLoginTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMicrosoftAccountLogin;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMicrosoftAccountLogin;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :goto_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mConvertTaskFactoryListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mImportPDFTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mImportSDocTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mMicrosoftAccountLoginTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method private getConvertTaskFactoryListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getTotalConvertTaskProgress()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getFinishedConvertTaskProgress()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getFailedConvertTaskProgress()I

    move-result v2

    const/high16 v3, 0x200000

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getTipCardProgress(IIII)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mConvertTaskFactoryListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private getImportPDFTaskListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getTotalImportPDFTaskProgress()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getFinishedImportPDFTaskProgress()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getFailedImportPDFTaskProgress()I

    move-result v2

    const/high16 v3, 0x4000000

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getTipCardProgress(IIII)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mImportPDFTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private getImportSDocTaskListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getTotalImportSamsungNoteTaskProgress()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getFinishedImportSamsungNoteTaskProgress()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->getFailedImportSamsungNoteTaskProgress()I

    move-result v2

    const/high16 v3, 0x1000000

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getTipCardProgress(IIII)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mImportSDocTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private getTipCardProgress(IIII)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;
    .locals 3

    const-string v0, "TipCardHelper"

    const/high16 v1, 0x200000

    if-ne v1, p1, :cond_0

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardConvertNotes;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardConvertNotes;-><init>()V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x1000000

    if-ne v1, p1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportSamsungNotes;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportSamsungNotes;-><init>()V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x4000000

    if-ne v1, p1, :cond_4

    new-instance p1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportPdf;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportPdf;-><init>()V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTipCardProgress# total : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", finish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->setProgressInfo(III)V

    iget-object p4, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    invoke-virtual {p4, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result p4

    if-eqz p4, :cond_2

    if-ne p2, p3, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    goto :goto_1

    :cond_2
    if-eq p2, p3, :cond_3

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :cond_3
    :goto_1
    return-object p1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected tipCard type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mStateInfo:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/StateInfo;

    return-object p0
.end method

.method private initSettingsMicrosoft()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;-><init>(Ljava/lang/ref/WeakReference;Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft$MicrosoftCallback;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    :cond_0
    return-void
.end method

.method private isAccountImportTipCardNeeds()Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->isAccountImportTipCardEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TipCardHelper"

    if-nez v0, :cond_0

    const-string v0, "isAccountImportTipCardNeeds# accountImportTipCard disabled"

    :goto_0
    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mDocumentMap:Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/model/DocumentMap;->getNoteDataCount()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "isAccountImportTipCardNeeds# note data exist"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getModeIndex()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v3, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isAvailableTipCard(I)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAccountImportTipCardNeeds# not available TipCard on mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isDemoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isAccountImportTipCardNeeds# demo device"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isAccountImportTipCardNeeds# other corp device"

    goto :goto_0

    :cond_4
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->h()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "isAccountImportTipCardNeeds# not support import feature"

    goto :goto_0

    :cond_5
    invoke-static {}, Ln/a;->b()Ln/a;

    move-result-object v0

    invoke-virtual {v0}, Ln/a;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "isAccountImportTipCardNeeds# sync is enabled and account is login"

    goto :goto_0

    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private isPermissionGrantedForSyncTipCard(I)Z
    .locals 1

    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object p1

    invoke-virtual {p1}, Lc2/a;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSyncTipCardCanShow(II)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isValidTipCardOnMode(II)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "TipCardHelper"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSyncTipCardCanShow# invalid "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->isPermissionGrantedForSyncTipCard(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isSyncTipCardCanShow# permission is granted"

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardPage:I

    return p0
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewPager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    return-object p0
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    return-object p0
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardPage:I

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->initSettingsMicrosoft()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->removeMeetTipCard()V

    return-void
.end method

.method public static bridge synthetic q(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->tipcardFadeOut(I)V

    return-void
.end method

.method public static bridge synthetic r(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->updateProgress(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    return-void
.end method

.method private removeMeetTipCard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->NONE:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setTipCardType(I)V

    return-void
.end method

.method private startMsLoginActivity()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/SettingsMainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.samsung.android.app.notes.sync.ui.MS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private tipcardFadeOut(I)V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setStartOffset(J)V

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$8;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$8;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;I)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesRecyclerView()Lcom/samsung/android/support/senl/nt/app/main/common/view/NotesPenRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getNotesView()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IView;->getMode()Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewContract$IMode;->setNoNotesLayoutVisibility()V

    goto :goto_0

    :cond_0
    iget-object p1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method private updateProgress(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V
    .locals 6
    .param p1    # Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->isProgressTipCard()Z

    move-result v1

    const-string v2, "TipCardHelper"

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProgress# tipCard is not progress type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getTotal()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getFinished()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getFailed()I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateProgress. TipCard type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " total: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v2, v0, v1, v3, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->updateProgress(IIII)V

    return-void
.end method


# virtual methods
.method public addConvertNoteTipCard(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "addConvertNoteTipCard"

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->countUpConvertTryCount(Ljava/lang/String;)V

    sget v4, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v5, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v7, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    invoke-direct {v7, v6, v4}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/MainListEntry;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setUuid(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setIsImported(Z)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;->setGroupId(I)Lcom/samsung/android/support/senl/nt/app/converter/task/common/ConvertInfo;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/high16 p1, 0x200000

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getTipCardProgress(IIII)Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->setConvertAll(Z)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getTotal()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getFinished()I

    move-result v2

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;->getFailed()I

    move-result v6

    invoke-static {v1, v2, v6}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setConvertTaskProgress(III)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addConvertNoteTipCard getFilePathList# [ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x100000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->connect(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardTaskListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;-><init>(Landroid/app/Activity;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardProgress;Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/TipCardTaskListener;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mConvertTaskFactoryListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mConvertTaskFactoryListener:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;-><init>(Landroid/content/Context;Ljava/util/List;IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->put(Lcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup;)V

    return-void
.end method

.method public addConvertSuggestionTipCardIfNeeds()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->isNeedConvertSuggestion()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v2, 0x100000

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needConvertSuggestion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasConvertSuggestionTipCard: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TipCardHelper"

    invoke-static {v4, v3}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardConvertSuggestion;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardConvertSuggestion;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addExternalStoragePermissionGranted()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNeedPermissionGrantedForSSM(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isNationalDisasterNet()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$10;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$10;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;)V

    invoke-static {v0, v2, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setExternalStorageTipCardEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    const-string v0, "TipCardHelper"

    const-string v1, "addExternalStoragePermissionGranted# do not need permission granted"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addImportDownloadingTipCard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TipCardHelper"

    const-string v1, "add Dummy ImportDownloading TipCard"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance v1, Lb3/t;

    invoke-direct {v1}, Lb3/t;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    :cond_0
    return-void
.end method

.method public addImportNoteFromAccountTipCardIfNeeds()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->isAccountImportTipCardNeeds()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TipCardHelper"

    const-string v1, "addImportNoteFromAccountTipCardIfNeeds"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mAccountImportTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportNoteFromAccount;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardImportNoteFromAccount;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setAccountImportTipCardDisabled()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :goto_0
    return-void
.end method

.method public addImportSamsungNoteTipCard()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->getImportDocumentsSize()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setImportSamsungNoteTaskProgress(III)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->execute()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getImportSDocTaskListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->registerListener(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Z

    return-void
.end method

.method public addMicrosoftAccountLoginTipCard()V
    .locals 1

    invoke-static {}, Lc2/a;->a()Lc2/a;

    move-result-object v0

    invoke-virtual {v0}, Lc2/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->isMsSyncSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isDemoDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->addMicrosoftLoginErrorTipCard()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->addMicrosoftLoginMainTipCard()V

    :cond_1
    :goto_0
    return-void
.end method

.method public clearTipCard(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->clearTipCard(Z)V

    return-void
.end method

.method public getTipCardHolderCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadConvertProgressingTipCard()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->findConvertTaskGroup(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)Z

    move-result v0

    const-string v1, "TipCardHelper"

    if-eqz v0, :cond_0

    const-string v0, "loadConvertProgressingTipCard# ConvertingOldNoteTask exist, restart convert task"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->getInstance()Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK:I

    sget v2, Lcom/samsung/android/support/senl/nt/app/common/NotesConstants;->CONVERT_TASK_GROUP:I

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getConvertTaskFactoryListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ConvertTaskFactoryListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/app/converter/ConvertTaskManager;->findConvertTaskGroup(IILcom/samsung/android/support/senl/nt/app/converter/task/ConvertTaskGroup$IGroupTaskCallback;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->isConvertAll()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadConvertProgressingTipCard# ConvertingOldNoteTask do not exist but start convert all"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;

    invoke-interface {v0, v3}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;->startConvertNotes(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const-string v0, "loadConvertProgressingTipCard# ConvertingOldNoteTask do not exist, clear preference "

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->clearConvertTaskProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public loadImportPDFProgressingTipCard()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/common/util/CommonUtil;->isNotAvailableActivity(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getAsyncTaskManager()Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getAbsFragment()Lcom/samsung/android/support/senl/nt/app/main/common/view/AbsFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskManager;->getRunningTask(ILjava/lang/Class;)Lcom/samsung/android/support/senl/nt/base/common/task/AsyncTaskWithActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImportPDFProgressingTipCard# isImportPDFTaskExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TipCardHelper"

    invoke-static {v3, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getImportPDFTaskListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->setContract(Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->clearImportPDFTaskProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public loadImportSamsungNoteProgressingTipCard()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->registerListener(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadImportSamsungNoteProgressingTipCard# isImportSamsungNoteTaskExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TipCardHelper"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getImportSDocTaskListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportSDocTaskListener;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/importer/ImportProcessor;->registerListener(Lcom/samsung/android/support/senl/nt/base/common/access/sync/importer/ImportDocumentManagerContract$ImportTaskListener;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->clearImportSamsungNoteTaskProgress()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public loadSyncTipCard(I)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isAvailableTipCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isAvailableMdeTipCard(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "TipCardHelper"

    const-string v1, "loadSyncTipCard"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->isWiFiNetworkFailed()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/base/common/sync/SyncState;->setWiFiNetworkFailed(Z)V

    const-string v1, "loadSyncTipCard : cannot_sync_in_wifi_only"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    invoke-virtual {v0}, Lb3/u;->j()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v2

    invoke-virtual {v2}, Lb3/u;->i()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCards(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->isSyncTipCardCanShow(II)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->getType()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method public onBindViewHolder(Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;)V
    .locals 5

    const-string v0, "TipCardHelper"

    const-string v1, "onBindViewHolder# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/app/main/common/adapter/CommonHolderInfo;->getRootCardView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$id;->tipcard_viewpager:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewPager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewPager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$9;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$9;-><init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;Lcom/google/android/material/tabs/TabLayout;)V

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewPager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewPager:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardPager;

    iget v3, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardPage:I

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->getCount()I

    move-result v1

    const/16 v3, 0x8

    if-lez v1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    if-le v1, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    return-void
.end method

.method public onRestoreInstanceState()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSamsungAccountLoginForMsSyncDialogContact:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;->restoreSamsungAccountLoginForMsSyncDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    return-void
.end method

.method public openSettingsMicrosoftLogin()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mViewParams:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/ViewParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->startMsLoginActivity()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mIPresenter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSamsungAccountLoginForMsSyncDialogContact:Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper$IPresenter;->showSamsungAccountLoginForMsSyncDialog(Lcom/samsung/android/support/senl/nt/app/common/dialog/SettingsConfirmDialogFragment$DialogListener;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->removeSyncTipCardProgressListener()V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSettingsMicrosoft:Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/app/settings/microsoft/SettingsMicrosoft;->release()V

    :cond_0
    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mAccountImportTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mMicrosoftAccountLoginTipCardPreferenceListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public removeSyncTipCardProgressListener()V
    .locals 2

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSyncTipCardProgressListener:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardListener;

    invoke-virtual {v0, v1}, Lb3/u;->o(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardListener;)V

    return-void
.end method

.method public setConvertAll(Z)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setConvertAll(Z)V

    return-void
.end method

.method public setImportPDFTaskListenerForTipCard(Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;I)V
    .locals 2
    .param p1    # Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TipCardHelper"

    const-string v1, "startImportPDFTipCard# "

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/TipCardSharedPreference;->setImportPDFTaskProgress(III)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->getImportPDFTaskListener()Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/listener/ImportPDFTaskListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask;->setContract(Lcom/samsung/android/support/senl/nt/app/main/common/task/PdfImportTask$Contract;)V

    return-void
.end method

.method public setImportStorageTipCard()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->isContainedTipCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/notes/sync/utils/a;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->getInstance()Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/common/postprocessing/PostLaunchManager;->executeBaseLogics()V

    invoke-static {}, Lx0/a;->a()Lx0/a;

    move-result-object v0

    invoke-virtual {v0}, Lx0/a;->e()V

    :cond_0
    return-void
.end method

.method public setMeetTipCard(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMeetTipCard# Show type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TipCardHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->removeTipCard(I)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getNotNow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "setMeetTipCard# Meet popup not canceled"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_HOST:I

    const-string v1, "101"

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_HOST:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setTipCardType(I)V

    const-string p1, "7677"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_GUEST:I

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mTipCardAdapter:Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardMeet;-><init>(Z)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardAdapter;->addTipCard(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->TIPCARD_GUEST:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setTipCardType(I)V

    const-string p1, "7678"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->NONE:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/livesharing/LiveSharingManager;->setTipCardType(I)V

    :goto_1
    return-void
.end method

.method public setSyncTipCardProgressListener()V
    .locals 2

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/presenter/TipCardHelper;->mSyncTipCardProgressListener:Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardListener;

    invoke-virtual {v0, v1}, Lb3/u;->c(Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCardListener;)V

    return-void
.end method

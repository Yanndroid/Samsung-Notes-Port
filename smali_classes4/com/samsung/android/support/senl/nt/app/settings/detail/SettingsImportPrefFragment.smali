.class public Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;
.super Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;
.source "SourceFile"


# static fields
.field private static final REQUEST_ACCOUNT_PICKER:I = 0x66

.field private static final REQUEST_ID_GET_ACCESS_TOKEN_FOR_IMPORT_MEMO:I = 0x68

.field private static final REQUEST_ID_GET_ACCESS_TOKEN_FOR_IMPORT_SCRAPBOOK:I = 0x69

.field private static final REQUEST_ID_GET_ACCESS_TOKEN_FOR_IMPORT_SNOTE:I = 0x67

.field private static final REQUEST_SYNC_ACCESS_TOKEN:I = 0x65

.field private static final TAG:Ljava/lang/String; = "ST$SettingsImportPrefFragment"


# instance fields
.field private mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private final mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

.field private mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/common/component/SettingsBaseFragment;-><init>()V

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->NONE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$4;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method public static synthetic b(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->lambda$onRequestPermissionsResult$1()V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->lambda$onRequestPermissionsResult$2()V

    return-void
.end method

.method private checkNetworkState()Z
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ST$SettingsImportPrefFragment"

    const-string v1, "checkNetworkState(). Data connection is not capable"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->show(Landroid/content/Context;I)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic d(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->lambda$onRequestPermissionsResult$3()V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->lambda$onRequestPermissionsResult$0()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->checkNetworkState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importMemoFromLocal()V

    return-void
.end method

.method public static bridge synthetic h(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importMemoFromSamsungAccount()V

    return-void
.end method

.method public static bridge synthetic i(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importNotesFromLocal()V

    return-void
.end method

.method private importMemoFromLocal()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/ImportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_LOCAL:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "import_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private importMemoFromSamsungAccount()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x65

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->loginSamsungAccountByFragmentContext(Landroidx/fragment/app/Fragment;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v0, "551"

    const-string v1, "5505"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->requestIDValidation(I)V

    return-void
.end method

.method private importNotesFromLocal()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/ImportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SDOC:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "import_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private importSNoteFromGoogleDrive()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "https://www.googleapis.com/auth/drive"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->newChooseAccountIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v2, "ST$SettingsImportPrefFragment"

    if-nez v0, :cond_0

    const-string v0, "importSnoteFromGoogleDrive() Send intent with REQUEST_ACCOUNT_PICKER!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x66

    invoke-virtual {p0, v1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v0, "551"

    const-string v1, "5503"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "importSnoteFromGoogleDrive() There is no activity for REQUEST_ACCOUNT_PICKER!"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private importSNoteFromLocal()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/ImportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_LOCAL:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, "import_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const-string v0, "551"

    const-string v1, "5501"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private importSNoteFromSamsungAccount()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    const-string v1, "ST$SettingsImportPrefFragment"

    if-nez v0, :cond_1

    const-string v0, "importSnoteFromSamsungAccount() Start logging in the samsung account!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->loginSamsungAccountByFragmentContext(Landroidx/fragment/app/Fragment;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v0, "551"

    const-string v1, "5502"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "importSnoteFromSamsungAccount() Already loggined in the samsung account!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x67

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->requestIDValidation(I)V

    return-void
.end method

.method private importScrapbookFromSamsungAccount()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->r()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x65

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/app/common/util/NotesUtils;->loginSamsungAccountByFragmentContext(Landroidx/fragment/app/Fragment;I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    const-string v0, "551"

    const-string v1, "5506"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/CommonSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->requestIDValidation(I)V

    return-void
.end method

.method private initLayout()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initNotesFromPhone()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initNotes()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initSNotesFromPhone()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initSNotesFromSamsungAccount()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initSNotesFromGoogleDrive()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initSNotes()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initMemosFromPhone()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initMemosFromSamsungAccount()V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initScrapbooksFromSamsungAccount()V

    return-void
.end method

.method private initMemosFromPhone()V
    .locals 2

    const-string v0, "settings_import_memos_from_phone"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportMemosFromPhoneSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "settings_import_memos_category"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromDeviceTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private initMemosFromSamsungAccount()V
    .locals 2

    const-string v0, "settings_import_memos_from_samsung_account"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromSamsungAccountTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private initNotes()V
    .locals 2

    const-string v0, "settings_import_notes_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportNotesSupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportNotesCategoryTitleRes()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->addLayoutDirectionMarkToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initNotesFromPhone()V
    .locals 2

    const-string v0, "settings_import_notes_from_phone"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromDeviceTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private initSNotes()V
    .locals 2

    const-string v0, "settings_import_snote_category"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->addLayoutDirectionMarkToString(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initSNotesFromGoogleDrive()V
    .locals 3

    const-string v0, "settings_import_snote_from_google_drive"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->isImportSNotesFromGoogleDriveSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ST$SettingsImportPrefFragment"

    const-string v2, "initSNotesFromGoogleDrive(). Hide the google drive menu!"

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "settings_import_snote_category"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private initSNotesFromPhone()V
    .locals 2

    const-string v0, "settings_import_snote_from_phone"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->FEATURE_ENABLED_MANAGE_EXTERNAL_STORAGE:Z

    if-nez v1, :cond_2

    const-string v1, "settings_import_snote_category"

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromDeviceTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private initSNotesFromSamsungAccount()V
    .locals 2

    const-string v0, "settings_import_snote_from_samsung_account"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromSamsungAccountTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private initScrapbooksFromSamsungAccount()V
    .locals 2

    const-string v0, "settings_import_scrapbooks_from_samsung_account"

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mOnPreferenceClickListener:Landroidx/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/settings/common/utils/SettingsMenuUtils;->getImportFromSamsungAccountTitleRes()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method

.method private isGoogleDriveReady()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    const-string v1, "ST$SettingsImportPrefFragment"

    if-nez v0, :cond_0

    const-string v0, "isGoogleDriveReady() credential is null!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "https://www.googleapis.com/auth/drive"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    if-nez v0, :cond_1

    const-string v0, "isGoogleDriveReady() credential is null again!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v0, "isGoogleDriveReady() Drive is ready!"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static bridge synthetic j(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importSNoteFromGoogleDrive()V

    return-void
.end method

.method public static bridge synthetic k(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importSNoteFromLocal()V

    return-void
.end method

.method public static bridge synthetic l(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importSNoteFromSamsungAccount()V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResult$0()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importSNoteFromSamsungAccount()V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResult$1()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importSNoteFromGoogleDrive()V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResult$2()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importMemoFromSamsungAccount()V

    return-void
.end method

.method private synthetic lambda$onRequestPermissionsResult$3()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importScrapbookFromSamsungAccount()V

    return-void
.end method

.method public static bridge synthetic m(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importScrapbookFromSamsungAccount()V

    return-void
.end method

.method private memoPermissionErrorPopupAlertDialog()V
    .locals 4

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->import_memo_application_permission_alert:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    new-instance v3, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$3;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    sget v1, Lcom/samsung/android/support/senl/nt/app/R$string;->import_memo_application_permission_alert_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method public static bridge synthetic n(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->memoPermissionErrorPopupAlertDialog()V

    return-void
.end method

.method public static bridge synthetic o(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;I[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->requestPermissions(I[Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic p(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->showDialogWhenMobileNetwork(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestIDValidation(I)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lf/a;->m(Landroid/content/Context;)Lf/a;

    move-result-object v0

    invoke-virtual {v0}, Lf/a;->j()Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;->LOCAL:Lcom/samsung/android/app/notes/sync/account/base/AccountSamsungType;

    if-ne v0, v1, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.REQUEST_CHECKLIST_VALIDATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "client_id"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppServiceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppSecretKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "client_secret"

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/CommonUtils;->getAppSecretKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "validation_result_only"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestIDValidation() e : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ST$SettingsImportPrefFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private varargs requestPermissions(I[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V

    return-void
.end method

.method private showDialogWhenMobileNetwork(Ljava/lang/Runnable;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lc3/q;->v(Landroid/content/Context;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lc3/h;->o(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ST$SettingsImportPrefFragment"

    const-string v1, "Data connection is not wifi"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_body:I

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_body_chn:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isTabletModel()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_body_tablet:I

    :cond_1
    :goto_0
    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_mobile_data_warning_title:I

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_btn_ok:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$2;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->sync_network_dialog_btn_cancel:I

    new-instance v2, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment$1;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-class v0, Lcom/samsung/android/support/senl/nt/app/settings/importnotes/ImportActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult# requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ST$SettingsImportPrefFragment"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    const/4 p1, 0x1

    if-lt p2, p1, :cond_0

    if-eqz p3, :cond_0

    const-string p1, "error_code"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->getInstance()Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/support/senl/nt/app/sync/ui/dialog/NetworkConnectionFailedHelper;->show(Landroid/content/Context;I)V

    const-string p2, "error_message"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "network error code: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " msg : "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    const-string v3, "import_type"

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unexpected requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SCRAPBOOK_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->MEMO_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_0
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_SCLOUD:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    goto :goto_1

    :pswitch_3
    const-string v1, "onActivityResult() : REQUEST_ACCOUNT_PICKER"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "onActivityResult() select a google account!"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authAccount"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->isGoogleDriveReady()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v2, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;->SNOTE_GOOGLEDRIVE:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "account_name"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_4
    const-string v1, "onActivityResult() : REQUEST_SYNC_ACCESS_TOKEN"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->mTaskType:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    sget p1, Lcom/samsung/android/support/senl/nt/app/R$xml;->settings_import_preference:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->initLayout()V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/util/NotificationUtils;->checkedNotificationPermissions(Landroidx/fragment/app/Fragment;)Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unexpected requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ST$SettingsImportPrefFragment"

    invoke-static {p2, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/c;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/c;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    goto :goto_0

    :pswitch_1
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/b;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/b;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importMemoFromLocal()V

    goto :goto_1

    :pswitch_3
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/a;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/a;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importSNoteFromLocal()V

    goto :goto_1

    :pswitch_5
    new-instance p1, Lcom/samsung/android/support/senl/nt/app/settings/detail/d;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/d;-><init>(Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->showDialogWhenMobileNetwork(Ljava/lang/Runnable;)V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importNotesFromLocal()V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;->SettingsDetail:Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper;->releaseHoldingEventTimeByTag(Lcom/samsung/android/support/senl/nt/base/common/UserInputSkipper$Tag;)V

    return-void
.end method

.method public resultAllFilesAccessPermission(I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_1

    const/16 v0, 0x12e

    if-ne p1, v0, :cond_1

    const/4 p1, 0x5

    invoke-static {p1}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getStoragePermissions(I)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/settings/detail/SettingsImportPrefFragment;->importSNoteFromLocal()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/support/senl/nt/app/R$string;->need_to_allow_permission:I

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/samsung/android/support/senl/nt/app/R$string;->storage_permission_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;->show(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    move v1, v2

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resultAllFilesAccessPermission# result : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ST$SettingsImportPrefFragment"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

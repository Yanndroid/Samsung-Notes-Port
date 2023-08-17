.class public Lcom/samsung/android/app/notes/popupnote/PopupNoteService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final ACTION_AIRCOMMAND:Ljava/lang/String; = "com.samsung.action.ACTION_MEMO_AIRCOMMAND"

.field private static final ACTION_NOTE_DETACH_PEN:Ljava/lang/String; = "com.samsung.action.POPUP_NOTE_DETACH_PEN"

.field public static final ACTION_QUICK_NOTE_TILE:Ljava/lang/String; = "com.samsung.action.ACTION_QUICK_NOTE_TILE"

.field private static final AIRCOMMAND_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field private static final EXTRA_BOOLEAN_NAME_IS_KEYGUARD_PENDING_INTENT:Ljava/lang/String; = "isKeyguardPendingIntent"

.field private static final EXTRA_INTENT_KEY_DOUBLE_TAP_X:Ljava/lang/String; = "tapX"

.field private static final EXTRA_INTENT_KEY_DOUBLE_TAP_Y:Ljava/lang/String; = "tapY"

.field private static final EXTRA_STRING_NAME_CAUSE:Ljava/lang/String; = "cause"

.field private static final INVALID_DATA:I = -0x1

.field private static final PACKAGE_COMPOSER_ACTIVITY:Ljava/lang/String; = "com.samsung.android.support.senl.nt.app.nativecomposer.ComposerActivity"

.field private static final POPUP_NOTE_NOTIFICATION_CHANNEL:Ljava/lang/String; = "PopupNoteServiceNotificationChannel"

.field private static final SEM_PLATFORM_VERSION_12_0:I = 0x1d4c0

.field private static final SYSTEM_PROPERTY_MIRROR_LINK:Ljava/lang/String; = "net.mirrorlink.on"

.field private static final TAG:Ljava/lang/String; = "PopupNoteService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private insertSALog(Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.action.ACTION_MEMO_AIRCOMMAND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "1181"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.action.ACTION_QUICK_NOTE_TILE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "1191"

    goto :goto_0

    :cond_1
    const-string v0, "MEMO_WIDGET_ACTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "NEW_MEMO_OPEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1192"

    goto :goto_0

    :cond_2
    const-string p1, "1182"

    :goto_0
    const-string v0, "119"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private isAllowedByIntent(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "tapX"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v2, "tapY"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;

    move-result-object v1

    const-string v2, "com.samsung.android.support.senl.nt.app.nativecomposer.ComposerActivity"

    invoke-virtual {v1, v2, v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/WindowManagerCompat;->canAllowByRegion(Ljava/lang/String;II)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canAllowByRegion result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupNoteService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private isAllowedStartCase(Landroid/content/Intent;)Z
    .locals 8

    const-string v0, "PopupNoteService"

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/StorageUtils;->isAvailableMemoryForNewMemo()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "isAllowedStartCase not enough space in internal storage"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$2;-><init>(Lcom/samsung/android/app/notes/popupnote/PopupNoteService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->checkSetupWizardDone(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string p1, "isAllowedStartCase SETUP_WIZARD not yet finished"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v2, 0x1

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "get"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-string v4, "1"

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "net.mirrorlink.on"

    aput-object v7, v6, v1

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    return v1

    :cond_3
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v3

    const-class v4, Lcom/samsung/android/support/senl/nt/composer/main/screenoff/ScreenOffActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->isActivityOnResumed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p1, "isAllowedStartCase : screen off activity is on resumed"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.action.POPUP_NOTE_DETACH_PEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->isAllowedStartCaseByDetachPen(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v2

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllowedStartCase exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    :goto_0
    const-string p1, "isAllowedStartCase invalid intent"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isAllowedStartCaseByDetachPen(Landroid/content/Intent;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->isInteractive()Z

    move-result v0

    const-string v1, "PopupNoteService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "isAllowedStartCaseByDetachPen# is not interactive"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v0, "isBoot"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "isAllowedStartCaseByDetachPen# isBoot"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isPenDetectionSettingOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isInputMethodShown(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isAllowedStartCaseByDetachPen# penDetectionSetting of SIP is on and SIP is shown"

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isKeyguardPendingIntent(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "isKeyguardPendingIntent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isKeyguardPendingIntent result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PopupNoteService"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private isStartedByStartServiceFromAirCommand()Z
    .locals 6

    const-string v0, "PopupNoteService"

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v2

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.samsung.android.service.aircommand"

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStartedByStartServiceFromAirCommand exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    :goto_0
    const v4, 0x1d4c0

    if-lt v2, v4, :cond_0

    const v4, 0x20d91e60

    if-lt v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStartedByStartServiceFromAirCommand result/semPlatformVersion/airCommandVersionNumber "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private makeKeyguardPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const-string v0, "PopupNoteService"

    const-string v1, "makeKeyguardPendingIntent"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "isKeyguardPendingIntent"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-class p1, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "cause"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private putExtraToolType(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "popup_note"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "tool_type"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method private startComposerActivity()V
    .locals 4

    const-string v0, "PopupNoteService"

    const-string v1, "startComposerActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/support/senl/nt/app/nativecomposer/ComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.app.notes.ACTION_NEW_MEMO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->putExtraToolType(Landroid/content/Intent;)V

    const-string v1, "Settings"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_preferred_note_style"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "page_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/support/senl/nt/app/common/FolderConstants$MyFolders;->UUID:Ljava/lang/String;

    const-string v2, "category_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startCreateNoteActivity()V
    .locals 4

    const-string v0, "PopupNoteService"

    const-string v1, "startCreateNoteActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "Settings"

    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v1

    const-string v2, "settings_preferred_note_style"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "page_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->putExtraToolType(Landroid/content/Intent;)V

    const/high16 v1, 0x1c000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService$1;-><init>(Lcom/samsung/android/app/notes/popupnote/PopupNoteService;Landroid/content/Intent;)V

    invoke-static {p0, v1}, Lcom/samsung/android/app/notes/tools/FoldedPopupUtil;->getFoldedActivityOptions(Landroid/content/Context;Lcom/samsung/android/app/notes/tools/FoldedPopupUtil$IFoldedActivityOptionsCallback;)V

    return-void
.end method

.method private startPopupNoteActivity()V
    .locals 5

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSupportedScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->startComposerActivity()V

    return-void

    :cond_0
    const-class v0, Lcom/samsung/android/app/notes/tools/CreateNoteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->isActivityRunning(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "PopupNoteService"

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/base/common/ApplicationManager;->getActivityTracker()Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/ActivityLifecycleTracker;->findTaskIdWithActivityName(Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    const-string v0, "taskId invalid "

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->isEqualTopActivity(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "TopActivity"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/app/StatusBarManagerCompat;->collapsePanels(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/support/senl/cm/base/framework/os/AppTaskCompat;->moveTaskToFront(Landroid/content/Context;I)Z

    move-result v1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPopupNoteActivity : isScreenOnRunning = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    return-void

    :cond_4
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "CanDrawOverlays is not granted"

    invoke-static {v2, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showAppearOnTopToast(Landroid/content/Context;)V

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->startCreateNoteActivity()V

    const-string v0, "9985"

    const-string v1, "Create Notes"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/samsunganalytices/NotesSamsungAnalytics;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "PopupNoteService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->isStartedByStartServiceFromAirCommand()Z

    move-result v0

    const-string v1, "PopupNoteServiceNotificationChannel"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->aircommand_create_note:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->DEFAULT:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$string;->aircommand_create_note:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;->FOREGROUND:Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;

    :goto_0
    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->registerService(Landroid/app/Service;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/base/common/service/ServiceType;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "PopupNoteService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->unregisterService(Landroid/app/Service;)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStartCommand action/userId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " / "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getUserId(I)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PopupNoteService"

    invoke-static {p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->isAllowedStartCase(Landroid/content/Intent;)Z

    move-result p2

    const/4 v0, 0x2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->isAllowedByIntent(Landroid/content/Intent;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->insertSALog(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->isKeyguardPendingIntent(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->startPopupNoteActivity()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;->makeKeyguardPendingIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/app/KeyguardManagerCompat;->setKeyguardPendingIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->canWorkOnBackground()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_3
    const-string p1, "onStartCommand end"

    invoke-static {p3, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v0
.end method

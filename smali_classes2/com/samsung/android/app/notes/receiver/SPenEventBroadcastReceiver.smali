.class public Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final DOUBLE_TAP:Ljava/lang/String; = "com.samsung.action.POPUP_NOTE_DOUBLETAB"

.field private static final PEN_DETACHMENT_OPTION_CREATE_NOTE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SPenEventBroadcastReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getPenDetachmentOption(Landroid/content/Context;)I
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->isKMemoPackage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/provider/SettingsCompat;->getPenDetachOption(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPenDetachmentOption result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPenEventBroadcastReceiver"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p1
.end method

.method private isAllowedReceiveCase(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "SPenEventBroadcastReceiver"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "isAllowedReceiveCase# invalid intent"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/support/senl/cm/base/framework/os/UserHandleCompat;->isUserOwner()Z

    move-result v2

    if-nez v2, :cond_1

    const-string p1, "isAllowedReceiveCase isUserOwner is false"

    goto :goto_0

    :cond_1
    const-string v2, "isBoot"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "isAllowedReceiveCase# isBoot"

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private isAllowedStartPopupNoteService(Landroid/content/Context;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->isPopupNoteStartedByDetachPen(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SPenEventBroadcastReceiver"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p1, "isAllowedStartPopupNoteService PopupNoteService is started by DetachPen"

    :goto_0
    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isPenDetectionSettingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->isInputMethodShown(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "isAllowedStartPopupNoteService penDetectionSetting of SIP is on and SIP is shown"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->getInstance(Landroid/content/Context;)Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/PowerManagerCompat;->isInteractive()Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->getPenDetachmentOption(Landroid/content/Context;)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAllowedStartPopupNoteService isInteractive/penDetachmentOption : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private isAllowedStartScreenOffMemo(Landroid/content/Intent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->isScreenOffMemoStartedByFW(Landroid/content/Intent;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isPopupNoteStartedByDetachPen(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.android.app.notes.disable.BR.com.samsung.pen.INSERT"

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/PackageManagerCompat;->getMetaData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getOneUIVersion()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0xc3b4

    if-lt v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    move v3, v1

    :cond_1
    return v3
.end method

.method private isScreenOffMemoStartedByFW(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "isServiceOn"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private setComponentDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->isScreenOffMemoStartedByFW(Landroid/content/Intent;)Z

    move-result p2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->isPopupNoteStartedByDetachPen(Landroid/content/Context;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setComponentDisabled screenOffMemoStartedByFW/popupNoteServiceStartedByDetachPen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPenEventBroadcastReceiver"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/notes/receiver/SpenEventBroadcastReceiverSwitcher;->disableSpenEventBroadcastReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private startPopupNoteService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->isAllowedStartPopupNoteService(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SPenEventBroadcastReceiver"

    const-string v1, "startPopupNoteService"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/view/InputMethodCompat;->forceHideSoftInput(Landroid/content/Context;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/notes/popupnote/PopupNoteService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.samsung.action.POPUP_NOTE_DOUBLETAB"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private startScreenOffMemo(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->isAllowedStartScreenOffMemo(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SPenEventBroadcastReceiver"

    const-string v1, "startScreenOffMemo"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/notes/screenoffmemo/ScreenOffMemoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "pen_intent_com"

    const-string v1, "pen_attach"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->getInstance()Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/common/service/ServiceManager;->startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->isAllowedReceiveCase(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "penInsert"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive action/penInsert : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SPenEventBroadcastReceiver"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->startScreenOffMemo(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->startPopupNoteService(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/notes/receiver/SPenEventBroadcastReceiver;->setComponentDisabled(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

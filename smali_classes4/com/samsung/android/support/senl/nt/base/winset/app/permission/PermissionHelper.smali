.class public Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;
    }
.end annotation


# static fields
.field public static final KEY_NOTICE_APP_PERMISSION_NEED:Ljava/lang/String; = "key_notice_app_permision_need"

.field private static NOTICE_PERMISSION_CLASS:Ljava/lang/Class; = null

.field public static final NOTICE_PERMISSION_MAX_COUNT:I = 0x3

.field private static final PREF_PERMISSION_CLICKED_NEVER_ASK:Ljava/lang/String; = "pref_permission_clicked_never_ask"

.field public static final REQUEST_ACTIVITY_FOR_GOTO_SETTINGS:I = 0x33

.field public static final REQUEST_APP_PERMISSION_ACTIVITY:I = 0x34

.field public static final REQUEST_APP_PERMISSION_FOR_EXTERNAL_STORAGE_PICKER:I = 0x35

.field public static final REQUEST_PERMISSION_FOR_COEDIT:I = 0xcc

.field public static final REQUEST_PERMISSION_FOR_EXTERNAL_STORAGE_PICKER:I = 0x133

.field public static final REQUEST_PERMISSION_FOR_IMPORT_MEMO_ACCOUNT:I = 0x131

.field public static final REQUEST_PERMISSION_FOR_IMPORT_MEMO_LOCAL:I = 0x130

.field public static final REQUEST_PERMISSION_FOR_IMPORT_NOTES_LOCAL:I = 0x12c

.field public static final REQUEST_PERMISSION_FOR_IMPORT_SCRAPBOOK_ACCOUNT:I = 0x132

.field public static final REQUEST_PERMISSION_FOR_IMPORT_SNOTE_ACCOUNT:I = 0x12d

.field public static final REQUEST_PERMISSION_FOR_IMPORT_SNOTE_GOOGLEDRIVE:I = 0x12f

.field public static final REQUEST_PERMISSION_FOR_IMPORT_SNOTE_LOCAL:I = 0x12e

.field public static final REQUEST_PERMISSION_FOR_OPEN_SAMSUNG_NOTES:I = 0x65

.field public static final REQUEST_PERMISSION_FOR_SHARED_NOTEBOOK:I = 0xcb

.field public static final REQUEST_PERMISSION_FOR_STORAGE:I = 0x66

.field public static final REQUEST_PERMISSION_FOR_SYNC_MICROSOFT_ENTER:I = 0xc9

.field public static final REQUEST_PERMISSION_FOR_SYNC_MICROSOFT_TURN_ON:I = 0xca

.field public static final REQUEST_PERMISSION_FOR_SYNC_SAMSUNG_ACCOUNT_ENTER:I = 0xc8

.field private static final SNACK_BAR_LONG_DURATION_MS:I = 0xabe

.field private static final TAG:Ljava/lang/String; = "PermissionHelper"

.field private static mPrevShouldShowRationaleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mRequestedPermissonMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->lambda$showGotoSettingsDialog$2(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private static addPermissionItem(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$layout;->permission_dialog_list_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$id;->icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/samsung/android/support/senl/nt/base/R$id;->name:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getPermissionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const v5, 0x1010429

    invoke-static {p0, v4, v5}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static applyTint(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p2, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic b(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->lambda$closeActivity$0(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->lambda$showGotoSettingsToast$1(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private static canRequestPermissions(Landroid/app/Activity;ILjava/lang/Runnable;[Ljava/lang/String;)Z
    .locals 2
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->selectPermanentDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    array-length v1, p3

    if-lez v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isAppStartRequest(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsUIForAppStart(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsUI(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_2
    const-string p0, "PermissionHelper"

    const-string p1, "permanentDeniedPermissions size 0"

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static closeActivity(Landroid/app/Activity;)V
    .locals 4
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/e;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/e;-><init>(Landroid/app/Activity;)V

    const-wide/16 v2, 0xabe

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static getIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "pref_permission_clicked_never_ask"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    if-eqz v2, :cond_0

    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public static getNoticeAppPermissionNeededs()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isChinaPermissionNeeded()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getNoticeAppPermissionNeededsCount()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static getNoticeAppPermissionNeededsCount()I
    .locals 3

    const-string v0, "APP_LAUNCH"

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object v0

    const-string v1, "key_notice_app_permision_need"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNoticeAppPermissionNeededsCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PermissionHelper"

    invoke-static {v2, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getPermissionsForRecordAudio()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getPermissionsForRecordAudio()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRequestedPermissionState(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mRequestedPermissonMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mRequestedPermissonMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method public static getShouldShowRationaleBeforeRequest(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mPrevShouldShowRationaleMap:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mPrevShouldShowRationaleMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_2
    :goto_0
    return v1
.end method

.method private static isAppStartRequest(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private static isChinaPermissionNeeded()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/common/util/DeviceUtils;->isSpenModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/cm/base/framework/os/SystemPropertiesCompat;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isCloseActivityEnabled(Z)Z
    .locals 1

    if-eqz p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNeverAskClicked(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getShouldShowRationaleBeforeRequest(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasChangedNeverAsk prevShouldShowRationale : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PermissionHelper"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChangedNeverAsk nowShouldShowRationale : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static varargs isPermissionGranted(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)Z
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getNoticeAppPermissionNeededs()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->noticeAppPermissionActivity(Landroid/app/Activity;)V

    :cond_1
    return p2
.end method

.method public static varargs isPermissionGrantedWithoutNotice(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isPermissionGrantedWithoutNotice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    array-length v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    array-length v1, p1

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->isOtherCorpDevice()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p0, v4}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method private static synthetic lambda$closeActivity$0(Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeActivity() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$showGotoSettingsDialog$2(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->startAppDetailSettings(Landroid/content/Context;)V

    return-void
.end method

.method private static synthetic lambda$showGotoSettingsToast$1(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showDetailsSettingsDialog(Landroid/content/Context;)V

    return-void
.end method

.method private static noticeAppPermissionActivity(Landroid/app/Activity;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->NOTICE_PERMISSION_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PermissionHelper"

    const-string v1, "noticeAppPermissionActivity show"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->NOTICE_PERMISSION_CLASS:Ljava/lang/Class;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "permission_notice_button_enable"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0x34

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static noticeAppPermissionIfNeededs(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getNoticeAppPermissionNeededs()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->noticeAppPermissionActivity(Landroid/app/Activity;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onActivityResult(IILjava/lang/Runnable;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult# requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x34

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;ILjava/lang/Runnable;[Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;IZLjava/lang/Runnable;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;IZLjava/lang/Runnable;[Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;IZLjava/lang/Runnable;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;IZ[Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;IZLjava/lang/Runnable;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroid/app/Activity;IZ[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroidx/fragment/app/Fragment;IZLjava/lang/Runnable;[Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;-><init>(Landroidx/fragment/app/Fragment;)V

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;IZLjava/lang/Runnable;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroidx/fragment/app/Fragment;IZ[Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;IZLjava/lang/Runnable;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs requestPermissions(Landroidx/fragment/app/Fragment;I[Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->requestPermissions(Landroidx/fragment/app/Fragment;IZ[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs requestPermissions(Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;IZLjava/lang/Runnable;[Ljava/lang/String;)V
    .locals 4
    .param p0    # Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "PermissionHelper"

    if-nez v0, :cond_0

    const-string p0, "requestPermissions# activity is null"

    invoke-static {v1, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestPermissions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->updatePrevShouldShowRationaleState(Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-static {v0, p1, p3, p4}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->canRequestPermissions(Landroid/app/Activity;ILjava/lang/Runnable;[Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$RequestPermissionsWrapper;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isCloseActivityEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->closeActivity(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static varargs selectPermanentDeniedPermission(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p0
.end method

.method private static setIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIsPermanentDeniedPermission : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_permission_clicked_never_ask"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static setNoticeAppPermissionNeededs(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNoticeAppPermissionNeededs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_notice_app_permision_need"

    const-string v1, "APP_LAUNCH"

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    :goto_0
    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->getNoticeAppPermissionNeededsCount()I

    move-result v3

    add-int/2addr v3, p0

    if-lt v3, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->getInstance(Ljava/lang/String;)Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/support/senl/cm/base/framework/content/SharedPreferencesCompat;->putInt(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method public static setNoticePermissionActivity(Ljava/lang/Class;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->NOTICE_PERMISSION_CLASS:Ljava/lang/Class;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->NOTICE_PERMISSION_CLASS:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    const-string p0, "PermissionHelper"

    const-string v0, "setPermissionExplainActivity, twice access! only first trial is accepted"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static showAppearOnTopToast(Landroid/content/Context;)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_appear_on_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/samsung/android/support/senl/nt/base/R$string;->need_to_allow_permission:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, v3, v3}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method private static showGotoSettingsActivity(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "PermissionHelper"

    const-string v1, "showGotoSettingsActivity"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/GoToSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_key_permission_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x33

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static varargs showGotoSettingsDialog(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)V
    .locals 12

    const-string v0, "PermissionHelper"

    const-string v1, "showGotoSettingsDialog"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$layout;->permission_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v3, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;

    invoke-direct {v3, p0}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_dialog_title:I

    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$id;->description:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v4, Lcom/samsung/android/support/senl/nt/base/R$id;->permission_dialog_listview:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    sget v5, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_dialog_others_body_when_execute_app:I

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "<b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/support/senl/cm/base/framework/feature/CscFeature;->isSecBrandAsGalaxy()Z

    move-result v9

    if-eqz v9, :cond_0

    sget v9, Lcom/samsung/android/support/senl/nt/base/R$string;->notes_jp:I

    goto :goto_0

    :cond_0
    sget v9, Lcom/samsung/android/support/senl/nt/base/R$string;->notes:I

    :goto_0
    invoke-virtual {p0, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "</b>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {p0, v5, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/support/senl/nt/base/common/util/CharUtils;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    array-length v1, p2

    new-array v5, v1, [Ljava/lang/String;

    move v7, v9

    :goto_1
    if-ge v7, v1, :cond_4

    aget-object v8, p2, v7

    invoke-static {p0, v8}, Lcom/samsung/android/support/senl/cm/base/framework/os/PermissionCompat;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move v8, v9

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v10, v5, v7

    if-eqz v10, :cond_1

    aget-object v10, v5, v7

    aget-object v11, v5, v8

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v8, v6

    goto :goto_3

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_3
    if-nez v8, :cond_3

    aget-object v8, p2, v7

    invoke-static {p0, v4, v8}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->addPermissionItem(Landroid/content/Context;Landroid/widget/LinearLayout;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    invoke-virtual {v3, p2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    sget p2, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_notification_button:I

    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/b;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/b;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$3;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$3;-><init>(Ljava/lang/Runnable;Landroid/app/Activity;)V

    invoke-virtual {v3, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v3, v9}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/support/senl/nt/base/winset/builder/AlertDialogBuilderForAppCompat;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$4;

    invoke-direct {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$4;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static showGotoSettingsSnackBar(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 7
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PermissionHelper"

    const-string v1, "showGotoSettingsSnackBar"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_toast_settings_body:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_toast_settings_action:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Runnable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v5, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$1;

    invoke-direct {v5, v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$1;-><init>([Ljava/lang/Runnable;Landroid/app/Activity;)V

    new-instance v6, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;

    invoke-direct {v6, v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper$2;-><init>([Ljava/lang/Runnable;Landroid/app/Activity;)V

    const/4 v3, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/base/winset/snackbar/SnackbarHelper;->show(Landroid/app/Activity;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Z

    return-void
.end method

.method public static showGotoSettingsToast(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PermissionHelper"

    const-string v1, "showGotoSettingsToast"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_toast_settings_body:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/samsung/android/support/senl/nt/base/R$string;->permission_toast_settings_action:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/c;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v0, v4, v1, v2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->showActionToast(Landroid/content/Context;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static varargs showGotoSettingsUI(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "PermissionHelper"

    const-string v1, "showGotoSettingsUI"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->updateRequestedPermissionState([Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsSnackBar(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsToast(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsDialog(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static varargs showGotoSettingsUIForAppStart(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "PermissionHelper"

    const-string v1, "showGotoSettingsUIForAppStart"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsActivity(Landroid/app/Activity;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1c

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-lt v0, v1, :cond_1

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsToast(Landroid/content/Context;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->showGotoSettingsDialog(Landroid/app/Activity;Ljava/lang/Runnable;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static startAppDetailSettings(Landroid/content/Context;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startAppDetailSettings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/support/senl/nt/base/common/PermissionUtils;->showDetailsSettingsDialog(Landroid/content/Context;)V

    return-void
.end method

.method public static varargs updatePrevShouldShowRationaleState(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mPrevShouldShowRationaleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mPrevShouldShowRationaleMap:Ljava/util/Map;

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    sget-object v5, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mPrevShouldShowRationaleMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    invoke-static {p0, v3, v1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->setIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static varargs updateRequestedPermissionState([Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mRequestedPermissonMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mRequestedPermissonMap:Ljava/util/Map;

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    sget-object v3, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->mRequestedPermissonMap:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs verifyRequestResult(Landroid/app/Activity;I[I[Ljava/lang/String;)Z
    .locals 5
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "PermissionHelper"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "verifyRequestResult, acitivity is null"

    invoke-static {v0, p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "verifyRequestResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v0, p2

    if-eqz v0, :cond_6

    array-length v0, p3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    array-length v4, p3

    if-ge v2, v4, :cond_4

    aget v4, p2, v2

    if-eqz v4, :cond_3

    aget-object v3, p3, v2

    invoke-static {p0, v3}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isNeverAskClicked(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, p3, v2

    invoke-static {p0, v3, v0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->setIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    move v3, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->isAppStartRequest(I)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;

    invoke-direct {p1, p0}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/d;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v1
.end method

.method public static varargs verifyRequestResult(Landroid/app/Activity;[I[Ljava/lang/String;)Z
    .locals 1
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, -0x1

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->verifyRequestResult(Landroid/app/Activity;I[I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

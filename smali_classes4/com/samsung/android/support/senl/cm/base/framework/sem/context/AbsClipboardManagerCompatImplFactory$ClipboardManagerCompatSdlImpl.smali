.class Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$IClipboardManagerCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipboardManagerCompatSdlImpl"
.end annotation


# static fields
.field private static CLIPBOARD_DATA_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static CLIPBOARD_EVENT_LISTENER_CLASS:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static CLIPBOARD_GET_DATA_LIST_SIZE_METHOD:Ljava/lang/reflect/Method; = null

.field private static CLIPBOARD_HAS_DATA_METHOD:Ljava/lang/reflect/Method; = null

.field private static CLIPBOARD_MANAGER_GET_DATA:Ljava/lang/reflect/Method; = null

.field private static final CLIPBOARD_SERVICE:Ljava/lang/String; = "clipboardEx"

.field private static CLIPBOARD_SET_LISTENER_METHOD:Ljava/lang/reflect/Method; = null

.field private static CLIPBOARD_SHOW_DIALOG_METHOD:Ljava/lang/reflect/Method; = null

.field public static final FORMAT_ALL_ID:I = 0x1

.field public static final FORMAT_HTML_ID:I = 0x4

.field public static final FORMAT_TEXT_ID:I = 0x2

.field private static GET_DATA:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;-><init>()V

    return-void
.end method

.method private getClipboardManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ClipboardManagerImpl"

    const-string v1, "getClipboardManager"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public canShowClipboard(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->getDataListSize(Landroid/content/Context;)I

    move-result p1

    if-gtz p1, :cond_0

    const-string p1, "ClipboardManagerImpl"

    const-string p2, "canShowClipboard# getDataListSize is 0"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public canShowClipboardOnSIP(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public dismissDialog(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public filterClip(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->getClipboardManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_SET_LISTENER_METHOD:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ClipboardManagerImpl"

    invoke-static {p3, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public finishBind(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public getClipData(Ljava/lang/Object;)Landroid/content/ClipData;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->GET_DATA:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClipboardManagerImpl"

    invoke-static {v1, v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getClips(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ClipData;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDataListSize(Landroid/content/Context;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->getClipboardManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_GET_DATA_LIST_SIZE_METHOD:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClipboardManagerImpl"

    invoke-static {v2, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public getPasteListener(Landroid/content/Context;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    sget-object p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_EVENT_LISTENER_CLASS:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_EVENT_LISTENER_CLASS:Ljava/lang/Class;

    aput-object v2, v0, v1

    invoke-static {p1, v0, p2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ClipboardManagerImpl"

    invoke-static {v0, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPrimaryClip(Landroid/content/Context;I)Landroid/content/ClipData;
    .locals 5

    const-string v0, "ClipboardManagerImpl"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->getClipboardManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    sget-object v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_MANAGER_GET_DATA:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "getPrimaryClip - semClipData is null"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->getClipData(Ljava/lang/Object;)Landroid/content/ClipData;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "getPrimaryClip"

    invoke-static {v0, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getTypeAll()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTypeHtml()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTypeNone()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTypeText()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public hasPrimaryClip(Landroid/content/Context;I)Z
    .locals 4

    const-string v0, "ClipboardManagerImpl"

    const-string v1, "hasPrimaryClip"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->getClipboardManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_HAS_DATA_METHOD:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "getPrimaryClip"

    invoke-static {v0, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public hasSaveServicePermission(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.samsung.clipboardsaveservice.CLIPBOARDSAVESERVICE_PERMISSION"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasSaveServicePermission# permission is wrong : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ClipboardManagerImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    :try_start_0
    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "android.sec.clipboard.ClipboardExManager"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "android.sec.clipboard.data.ClipboardData"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_DATA_CLASS:Ljava/lang/Class;

    const-string v0, "getData"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_MANAGER_GET_DATA:Ljava/lang/reflect/Method;

    const-string v0, "android.sec.clipboard.ClipboardExManager$ClipboardEventListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_EVENT_LISTENER_CLASS:Ljava/lang/Class;

    const-string v2, "setFilter"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v3, v6, v4

    aput-object v0, v6, v1

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_SET_LISTENER_METHOD:Ljava/lang/reflect/Method;

    const-string v0, "showDialog"

    new-array v2, v5, [Ljava/lang/Class;

    aput-object v3, v2, v4

    sget-object v5, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_EVENT_LISTENER_CLASS:Ljava/lang/Class;

    aput-object v5, v2, v1

    invoke-virtual {p1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_SHOW_DIALOG_METHOD:Ljava/lang/reflect/Method;

    const-string v0, "hasData"

    new-array v1, v1, [Ljava/lang/Class;

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_HAS_DATA_METHOD:Ljava/lang/reflect/Method;

    const-string v0, "getDataListSize"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_GET_DATA_LIST_SIZE_METHOD:Ljava/lang/reflect/Method;

    sget-object p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_DATA_CLASS:Ljava/lang/Class;

    const-string v0, "getClipData"

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->GET_DATA:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ClipboardManagerImpl"

    const-string v1, "init"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public isClipboardAllowed(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public isClipboardManagerEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "clipboardEx"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "android.sec.clipboard.ClipboardExManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isEnabled"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v1, "ClipboardManagerImpl"

    const-string v2, "isClipboardManagerEnabled"

    invoke-static {v1, v2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public isShowing(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setClip(Landroid/content/Context;Landroid/content/ClipData$Item;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    new-instance p3, Landroid/content/Intent;

    const-string p4, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_HTML_RECEIVER"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 p4, 0x20

    invoke-virtual {p3, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object p2

    const-string p4, "htmlPath"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "com.samsung.clipboardsaveservice"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, p3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public showDialog(Landroid/content/Context;Landroid/view/View;ILjava/lang/Object;)V
    .locals 2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->getClipboardManager(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object p2, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/AbsClipboardManagerCompatImplFactory$ClipboardManagerCompatSdlImpl;->CLIPBOARD_SHOW_DIALOG_METHOD:Ljava/lang/reflect/Method;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const/4 p3, 0x1

    aput-object p4, v0, p3

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ClipboardManagerImpl"

    invoke-static {p3, p2, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

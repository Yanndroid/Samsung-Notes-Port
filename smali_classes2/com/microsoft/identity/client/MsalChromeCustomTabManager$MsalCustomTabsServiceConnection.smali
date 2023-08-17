.class Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/client/MsalChromeCustomTabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MsalCustomTabsServiceConnection"
.end annotation


# instance fields
.field private mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

.field private mCustomTabsServiceIsBound:Z

.field private mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

.field private final mLatchWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/concurrent/CountDownLatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1

    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mLatchWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$000(Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->unbindCustomTabsService()V

    return-void
.end method

.method private unbindCustomTabsService()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsServiceIsBound:Z

    return-void
.end method


# virtual methods
.method public getCustomTabsServiceIsBound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsServiceIsBound:Z

    return v0
.end method

.method public getCustomTabsSession()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    iget-object p1, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mLatchWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsServiceIsBound:Z

    iput-object p2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    iget-object p2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsClient:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p2

    iput-object p2, p0, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->mCustomTabsSession:Landroidx/browser/customtabs/CustomTabsSession;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/client/MsalChromeCustomTabManager$MsalCustomTabsServiceConnection;->unbindCustomTabsService()V

    return-void
.end method

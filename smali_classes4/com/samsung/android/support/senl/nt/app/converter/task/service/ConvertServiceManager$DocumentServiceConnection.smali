.class Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DocumentServiceConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/app/converter/task/service/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "ConvertServiceManager"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->e(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    check-cast p2, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;

    sget-object v1, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->CONVERT_SERVICE_ID:Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    invoke-virtual {v1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;->getUser()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {v2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->f(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceBinder;->subscribe(Ljava/lang/String;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->j(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->getUser()Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->k(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentSubscriptionId;)V

    iget-object p2, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->d(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection$1;-><init>(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper;->registerDocumentServiceListener(Lcom/samsung/android/support/senl/nt/model/service/IDocumentServiceWrapper$DocumentServiceListener;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->i(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->c(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)I

    move-result p2

    int-to-float p2, p2

    const v0, 0x3fb50750

    mul-float/2addr p2, v0

    float-to-int p2, p2

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->h(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager$DocumentServiceConnection;->this$0:Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;->n(Lcom/samsung/android/support/senl/nt/app/converter/task/service/ConvertServiceManager;)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

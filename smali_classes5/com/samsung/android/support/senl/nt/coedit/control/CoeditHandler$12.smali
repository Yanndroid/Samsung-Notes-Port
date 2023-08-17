.class Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->requestReadPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$12;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/support/senl/nt/coedit/utils/CoeditUtils;->isCoeditDataNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CoeditHandler"

    const-string v1, "requestReadPermission skip, data network is not available"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/coedit/log/CoeditLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler$12;->this$0:Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;->d(Lcom/samsung/android/support/senl/nt/coedit/control/CoeditHandler;)Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/ntnl/coedit/BaseCoeditManager;->requestPermission(Z)Z

    return-void
.end method

.class Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;->onAddedSvcBindChanged(Ljava/lang/String;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;

.field public final synthetic val$serviceName:Ljava/lang/String;

.field public final synthetic val$status:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;->this$0:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;

    iput p2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;->val$status:I

    iput-object p3, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;->val$serviceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;->this$0:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;->access$600(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;->this$0:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;

    invoke-static {v0}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;->access$600(Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;->val$status:I

    iget-object v2, p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSessionImpl$2;->val$serviceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceSession$ServiceConnectionListener;->onChanged(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

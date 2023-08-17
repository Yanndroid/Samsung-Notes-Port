.class Lcom/microsoft/identity/client/PublicClientApplication$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->getDeviceCodeFlowCommandCallback(Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/microsoft/identity/common/internal/commands/DeviceCodeFlowCommandCallback<",
        "Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;",
        "Lcom/microsoft/identity/common/java/exception/BaseException;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/PublicClientApplication;

.field public final synthetic val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication;Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$19;->this$0:Lcom/microsoft/identity/client/PublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$19;->val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/exception/BaseException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/microsoft/identity/client/internal/controllers/MsalExceptionAdapter;->msalExceptionFromBaseException(Lcom/microsoft/identity/common/java/exception/BaseException;)Lcom/microsoft/identity/client/exception/MsalException;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$19;->val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$19;->onError(Lcom/microsoft/identity/common/java/exception/BaseException;)V

    return-void
.end method

.method public onTaskCompleted(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;)V
    .locals 1
    .param p1    # Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/microsoft/identity/client/AuthenticationResultAdapter;->adapt(Lcom/microsoft/identity/common/java/result/ILocalAuthenticationResult;)Lcom/microsoft/identity/client/IAuthenticationResult;

    move-result-object p1

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$19;->val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;->onTokenReceived(Lcom/microsoft/identity/client/IAuthenticationResult;)V

    return-void
.end method

.method public bridge synthetic onTaskCompleted(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;

    invoke-virtual {p0, p1}, Lcom/microsoft/identity/client/PublicClientApplication$19;->onTaskCompleted(Lcom/microsoft/identity/common/java/result/LocalAuthenticationResult;)V

    return-void
.end method

.method public onUserCodeReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$19;->val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/microsoft/identity/client/IPublicClientApplication$DeviceCodeFlowCallback;->onUserCodeReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

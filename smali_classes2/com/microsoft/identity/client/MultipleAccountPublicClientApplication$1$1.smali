.class Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->onMigrationFinished(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;

.field public final synthetic val$e:Lcom/microsoft/identity/client/exception/MsalClientException;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;Lcom/microsoft/identity/client/exception/MsalClientException;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;

    iput-object p2, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1$1;->val$e:Lcom/microsoft/identity/client/exception/MsalClientException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1$1;->this$1:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;

    iget-object v0, v0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

    iget-object v1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1$1;->val$e:Lcom/microsoft/identity/client/exception/MsalClientException;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    return-void
.end method

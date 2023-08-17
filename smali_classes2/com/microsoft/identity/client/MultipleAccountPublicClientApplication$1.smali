.class Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->getAccountsInternal(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

.field public final synthetic val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

.field public final synthetic val$publicApiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

    iput-object p3, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->val$publicApiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMigrationFinished(I)V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v0, v0, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/internal/CommandParametersAdapter;->createCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object v0

    new-instance v1, Lcom/microsoft/identity/common/internal/commands/LoadAccountCommand;

    iget-object v2, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v2, v2, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v3, v3, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v3}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v4, v4, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-static {v2, v3, v4}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getAllControllers(Landroid/content/Context;Lcom/microsoft/identity/common/java/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->val$callback:Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;

    invoke-static {v3}, Lcom/microsoft/identity/client/PublicClientApplication;->getLoadAccountsCallback(Lcom/microsoft/identity/client/IPublicClientApplication$LoadAccountsCallback;)Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;->val$publicApiId:Ljava/lang/String;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/microsoft/identity/common/internal/commands/LoadAccountCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/util/List;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1$1;

    invoke-direct {v1, p0, v0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1$1;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$1;Lcom/microsoft/identity/client/exception/MsalClientException;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

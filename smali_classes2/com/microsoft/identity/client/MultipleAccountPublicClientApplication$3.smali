.class Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/migration/TokenMigrationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;->getAccountInternal(Ljava/lang/String;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

.field public final synthetic val$callback:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;

.field public final synthetic val$identifier:Ljava/lang/String;

.field public final synthetic val$methodTag:Ljava/lang/String;

.field public final synthetic val$publicApiId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;Ljava/lang/String;Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iput-object p2, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$methodTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$callback:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;

    iput-object p4, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$identifier:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$publicApiId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMigrationFinished(I)V
    .locals 4

    iget-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$methodTag:Ljava/lang/String;

    const-string v0, "Get account with the identifier."

    invoke-static {p1, v0}, Lcom/microsoft/identity/common/logging/Logger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object p1, p1, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getOAuth2TokenCache()Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/microsoft/identity/client/internal/CommandParametersAdapter;->createCommandParameters(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/common/java/providers/oauth2/OAuth2TokenCache;)Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;

    move-result-object p1

    new-instance v0, Lcom/microsoft/identity/common/internal/commands/LoadAccountCommand;

    iget-object v1, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v1, v1, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v2, v2, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-virtual {v2}, Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;->getDefaultAuthority()Lcom/microsoft/identity/common/java/authorities/Authority;

    move-result-object v2

    iget-object v3, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->this$0:Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication;

    iget-object v3, v3, Lcom/microsoft/identity/client/PublicClientApplication;->mPublicClientConfiguration:Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    invoke-static {v1, v2, v3}, Lcom/microsoft/identity/client/internal/controllers/MSALControllerFactory;->getAllControllers(Landroid/content/Context;Lcom/microsoft/identity/common/java/authorities/Authority;Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;

    invoke-direct {v2, p0}, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3$1;-><init>(Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;)V

    iget-object v3, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$publicApiId:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/microsoft/identity/common/internal/commands/LoadAccountCommand;-><init>(Lcom/microsoft/identity/common/java/commands/parameters/CommandParameters;Ljava/util/List;Lcom/microsoft/identity/common/java/commands/CommandCallback;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->submitSilent(Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    :try_end_0
    .catch Lcom/microsoft/identity/client/exception/MsalClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$methodTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/microsoft/identity/client/exception/MsalException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/microsoft/identity/common/logging/Logger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/microsoft/identity/client/MultipleAccountPublicClientApplication$3;->val$callback:Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;

    invoke-interface {v0, p1}, Lcom/microsoft/identity/client/IMultipleAccountPublicClientApplication$GetAccountCallback;->onError(Lcom/microsoft/identity/client/exception/MsalException;)V

    :goto_0
    return-void
.end method

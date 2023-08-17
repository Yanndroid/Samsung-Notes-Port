.class Lcom/microsoft/identity/client/PublicClientApplication$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/microsoft/identity/client/PublicClientApplication$14;

.field public final synthetic val$baseException:Lcom/microsoft/identity/common/java/exception/BaseException;

.field public final synthetic val$localAuthenticationCallback:Lcom/microsoft/identity/common/java/commands/CommandCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/PublicClientApplication$14;Lcom/microsoft/identity/common/java/commands/CommandCallback;Lcom/microsoft/identity/common/java/exception/BaseException;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$14$1;->this$1:Lcom/microsoft/identity/client/PublicClientApplication$14;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$14$1;->val$localAuthenticationCallback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    iput-object p3, p0, Lcom/microsoft/identity/client/PublicClientApplication$14$1;->val$baseException:Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$14$1;->val$localAuthenticationCallback:Lcom/microsoft/identity/common/java/commands/CommandCallback;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$14$1;->val$baseException:Lcom/microsoft/identity/common/java/exception/BaseException;

    invoke-interface {v0, v1}, Lcom/microsoft/identity/common/java/util/TaskCompletedCallbackWithError;->onError(Ljava/lang/Object;)V

    return-void
.end method

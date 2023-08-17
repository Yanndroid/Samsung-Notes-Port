.class Lcom/microsoft/identity/client/PublicClientApplication$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$authority:Ljava/lang/String;

.field public final synthetic val$clientId:Ljava/lang/String;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

.field public final synthetic val$redirectUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$clientId:Ljava/lang/String;

    iput-object p3, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$authority:Ljava/lang/String;

    iput-object p4, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$redirectUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$clientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$authority:Ljava/lang/String;

    iget-object v3, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$redirectUri:Ljava/lang/String;

    iget-object v4, p0, Lcom/microsoft/identity/client/PublicClientApplication$3;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/microsoft/identity/client/PublicClientApplication;->access$000(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/microsoft/identity/client/IPublicClientApplication$ApplicationCreatedListener;)V

    return-void
.end method

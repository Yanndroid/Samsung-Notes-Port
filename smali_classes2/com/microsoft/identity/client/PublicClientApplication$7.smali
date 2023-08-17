.class Lcom/microsoft/identity/client/PublicClientApplication$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/PublicClientApplication;->createSingleAccountPublicClientApplication(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$configFile:Ljava/io/File;

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/PublicClientApplication$7;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/microsoft/identity/client/PublicClientApplication$7;->val$configFile:Ljava/io/File;

    iput-object p3, p0, Lcom/microsoft/identity/client/PublicClientApplication$7;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/client/PublicClientApplication$7;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$7;->val$configFile:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/PublicClientApplicationConfigurationFactory;->initializeConfiguration(Landroid/content/Context;Ljava/io/File;)Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/microsoft/identity/client/PublicClientApplication$7;->val$listener:Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;

    invoke-static {v0, v1}, Lcom/microsoft/identity/client/PublicClientApplication;->access$200(Lcom/microsoft/identity/client/PublicClientApplicationConfiguration;Lcom/microsoft/identity/client/IPublicClientApplication$ISingleAccountApplicationCreatedListener;)V

    return-void
.end method

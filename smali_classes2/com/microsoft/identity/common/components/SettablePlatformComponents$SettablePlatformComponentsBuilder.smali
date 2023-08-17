.class public Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/components/SettablePlatformComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettablePlatformComponentsBuilder"
.end annotation


# instance fields
.field private authorizationStrategyFactory$set:Z

.field private authorizationStrategyFactory$value:Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

.field private devicePopManager$set:Z

.field private devicePopManager$value:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

.field private storageEncryptionManager$set:Z

.field private storageEncryptionManager$value:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public authorizationStrategyFactory(Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;)Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->authorizationStrategyFactory$value:Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->authorizationStrategyFactory$set:Z

    return-object p0
.end method

.method public build()Lcom/microsoft/identity/common/components/SettablePlatformComponents;
    .locals 4

    iget-object v0, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->storageEncryptionManager$value:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    iget-boolean v1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->storageEncryptionManager$set:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->access$000()Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->devicePopManager$value:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    iget-boolean v2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->devicePopManager$set:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->access$100()Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->authorizationStrategyFactory$value:Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

    iget-boolean v3, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->authorizationStrategyFactory$set:Z

    if-nez v3, :cond_2

    invoke-static {}, Lcom/microsoft/identity/common/components/SettablePlatformComponents;->access$200()Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

    move-result-object v2

    :cond_2
    new-instance v3, Lcom/microsoft/identity/common/components/SettablePlatformComponents;

    invoke-direct {v3, v0, v1, v2}, Lcom/microsoft/identity/common/components/SettablePlatformComponents;-><init>(Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;)V

    return-object v3
.end method

.method public devicePopManager(Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;)Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->devicePopManager$value:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->devicePopManager$set:Z

    return-object p0
.end method

.method public storageEncryptionManager(Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;)Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->storageEncryptionManager$value:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->storageEncryptionManager$set:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettablePlatformComponents.SettablePlatformComponentsBuilder(storageEncryptionManager$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->storageEncryptionManager$value:Lcom/microsoft/identity/common/java/crypto/IKeyAccessor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", devicePopManager$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->devicePopManager$value:Lcom/microsoft/identity/common/java/crypto/IDevicePopManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authorizationStrategyFactory$value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/components/SettablePlatformComponents$SettablePlatformComponentsBuilder;->authorizationStrategyFactory$value:Lcom/microsoft/identity/common/java/strategies/IAuthorizationStrategyFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

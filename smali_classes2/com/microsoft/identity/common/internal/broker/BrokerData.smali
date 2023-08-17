.class public Lcom/microsoft/identity/common/internal/broker/BrokerData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALL_BROKERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field

.field public static final BROKER_HOST:Lcom/microsoft/identity/common/internal/broker/BrokerData;

.field public static final COMPANY_PORTAL:Lcom/microsoft/identity/common/internal/broker/BrokerData;

.field private static final DEBUG_BROKERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field

.field public static final MICROSOFT_AUTHENTICATOR_DEBUG:Lcom/microsoft/identity/common/internal/broker/BrokerData;

.field public static final MICROSOFT_AUTHENTICATOR_PROD:Lcom/microsoft/identity/common/internal/broker/BrokerData;

.field private static final PROD_BROKERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final signatureHash:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    const-string v1, "com.azure.authenticator"

    const-string v2, "N1jdcbbnKDr0LaFZlqdhXgm2luE="

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->MICROSOFT_AUTHENTICATOR_DEBUG:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    const-string v2, "ho040S3ffZkmxqtQrSwpTVOn9r0="

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->MICROSOFT_AUTHENTICATOR_PROD:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    const-string v1, "com.microsoft.windowsintune.companyportal"

    const-string v2, "1L4Z9FJCgn5c0VLhyAxC5O9LdlE="

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->COMPANY_PORTAL:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    const-string v1, "com.microsoft.identity.testuserapp"

    const-string v2, "1wIqXSqBj7w+h11ZifsnqwgyKrY="

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->BROKER_HOST:Lcom/microsoft/identity/common/internal/broker/BrokerData;

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData$1;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerData$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->DEBUG_BROKERS:Ljava/util/Set;

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData$2;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerData$2;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->PROD_BROKERS:Ljava/util/Set;

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerData$3;

    invoke-direct {v0}, Lcom/microsoft/identity/common/internal/broker/BrokerData$3;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->ALL_BROKERS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signatureHash:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->DEBUG_BROKERS:Ljava/util/Set;

    return-object v0
.end method

.method public static synthetic access$100()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->PROD_BROKERS:Ljava/util/Set;

    return-object v0
.end method

.method public static getAllBrokers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->ALL_BROKERS:Ljava/util/Set;

    return-object v0
.end method

.method public static getBrokerDataForBrokerApp(Landroid/content/Context;Ljava/lang/String;)Lcom/microsoft/identity/common/internal/broker/BrokerData;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;

    invoke-direct {v0, p0}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;

    invoke-virtual {v0, p1}, Lcom/microsoft/identity/common/internal/broker/BrokerValidator;->verifySignatureAndThrow(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/microsoft/identity/common/internal/broker/BrokerData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getDebugBrokers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->DEBUG_BROKERS:Ljava/util/Set;

    return-object v0
.end method

.method public static getProdBrokers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/microsoft/identity/common/internal/broker/BrokerData;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->PROD_BROKERS:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrokerData(packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", signatureHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/internal/broker/BrokerData;->signatureHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

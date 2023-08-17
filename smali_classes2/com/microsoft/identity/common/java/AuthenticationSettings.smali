.class public final enum Lcom/microsoft/identity/common/java/AuthenticationSettings;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/java/AuthenticationSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/java/AuthenticationSettings;

.field public static final enum INSTANCE:Lcom/microsoft/identity/common/java/AuthenticationSettings;


# instance fields
.field private mCertificateLoader:Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificateLoader;
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        justification = "by design (for now), allowing common to use the data initialized by broker."
        value = {
            "ME_ENUM_FIELD_SETTER"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/microsoft/identity/common/java/AuthenticationSettings;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/java/AuthenticationSettings;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/java/AuthenticationSettings;->INSTANCE:Lcom/microsoft/identity/common/java/AuthenticationSettings;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/microsoft/identity/common/java/AuthenticationSettings;

    aput-object v0, v1, v2

    sput-object v1, Lcom/microsoft/identity/common/java/AuthenticationSettings;->$VALUES:[Lcom/microsoft/identity/common/java/AuthenticationSettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/java/AuthenticationSettings;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/java/AuthenticationSettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/java/AuthenticationSettings;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/java/AuthenticationSettings;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/java/AuthenticationSettings;->$VALUES:[Lcom/microsoft/identity/common/java/AuthenticationSettings;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/java/AuthenticationSettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/java/AuthenticationSettings;

    return-object v0
.end method


# virtual methods
.method public getCertificateLoader()Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificateLoader;
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/java/AuthenticationSettings;->mCertificateLoader:Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificateLoader;

    return-object v0
.end method

.method public setCertificateLoader(Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificateLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/AuthenticationSettings;->mCertificateLoader:Lcom/microsoft/identity/common/java/challengehandlers/IDeviceCertificateLoader;

    return-void
.end method

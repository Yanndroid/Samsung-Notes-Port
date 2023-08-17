.class final Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/util/JWSBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JwsHeader"
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "URF_UNREAD_FIELD"
    }
.end annotation


# instance fields
.field private mAlgorithm:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "alg"
    .end annotation
.end field

.field private mCert:[Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "x5c"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "typ"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/microsoft/identity/common/java/util/JWSBuilder$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;-><init>()V

    return-void
.end method

.method public static synthetic access$502(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->mAlgorithm:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$602(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->mType:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$700(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->mCert:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$702(Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/JWSBuilder$JwsHeader;->mCert:[Ljava/lang/String;

    return-object p1
.end method

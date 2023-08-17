.class final Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/util/JWSBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Claims"
.end annotation

.annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
    value = {
        "URF_UNREAD_FIELD"
    }
.end annotation


# instance fields
.field private mAudience:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "aud"
    .end annotation
.end field

.field private mIssueAt:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "iat"
    .end annotation
.end field

.field private mNonce:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "nonce"
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

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;-><init>()V

    return-void
.end method

.method public static synthetic access$102(Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;->mNonce:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;->mAudience:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;J)J
    .locals 0

    iput-wide p1, p0, Lcom/microsoft/identity/common/java/util/JWSBuilder$Claims;->mIssueAt:J

    return-wide p1
.end method

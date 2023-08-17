.class final Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager$SignedHttpRequestJwtClaims;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/platform/AbstractDevicePopManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignedHttpRequestJwtClaims"
.end annotation


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "at"

.field private static final CLIENT_CLAIMS:Ljava/lang/String; = "client_claims"

.field private static final CNF:Ljava/lang/String; = "cnf"

.field private static final HTTP_HOST:Ljava/lang/String; = "u"

.field private static final HTTP_METHOD:Ljava/lang/String; = "m"

.field private static final HTTP_PATH:Ljava/lang/String; = "p"

.field public static final JWK:Ljava/lang/String; = "jwk"

.field private static final NONCE:Ljava/lang/String; = "nonce"

.field private static final TIMESTAMP:Ljava/lang/String; = "ts"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

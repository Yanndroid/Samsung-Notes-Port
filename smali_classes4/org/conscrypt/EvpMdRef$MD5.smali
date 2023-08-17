.class final Lorg/conscrypt/EvpMdRef$MD5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/EvpMdRef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MD5"
.end annotation


# static fields
.field public static final EVP_MD:J

.field public static final JCA_NAME:Ljava/lang/String; = "MD5"

.field public static final OID:Ljava/lang/String; = "1.2.840.113549.2.5"

.field public static final SIZE_BYTES:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "md5"

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_get_digestbyname(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/conscrypt/EvpMdRef$MD5;->EVP_MD:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->EVP_MD_size(J)I

    move-result v0

    sput v0, Lorg/conscrypt/EvpMdRef$MD5;->SIZE_BYTES:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

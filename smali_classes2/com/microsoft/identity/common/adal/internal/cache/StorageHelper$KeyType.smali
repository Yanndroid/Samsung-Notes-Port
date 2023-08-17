.class public final enum Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum ADAL_USER_DEFINED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

.field public static final enum LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const-string v1, "LEGACY_AUTHENTICATOR_APP_KEY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_AUTHENTICATOR_APP_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    new-instance v1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const-string v3, "LEGACY_COMPANY_PORTAL_KEY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->LEGACY_COMPANY_PORTAL_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    new-instance v3, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const-string v5, "ADAL_USER_DEFINED_KEY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->ADAL_USER_DEFINED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    new-instance v5, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const-string v7, "KEYSTORE_ENCRYPTED_KEY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->KEYSTORE_ENCRYPTED_KEY:Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;
    .locals 1

    const-class v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    return-object p0
.end method

.method public static values()[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;
    .locals 1

    sget-object v0, Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->$VALUES:[Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    invoke-virtual {v0}, [Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/microsoft/identity/common/adal/internal/cache/StorageHelper$KeyType;

    return-object v0
.end method

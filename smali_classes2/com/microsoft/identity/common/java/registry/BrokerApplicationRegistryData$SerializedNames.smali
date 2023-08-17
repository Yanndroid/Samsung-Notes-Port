.class final Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData$SerializedNames;
.super Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata$SerializedNames;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/registry/BrokerApplicationRegistryData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SerializedNames"
.end annotation


# static fields
.field public static final ALLOW_WPJ_ACCESS:Ljava/lang/String; = "wpj_account_access_allowed"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/cache/AbstractApplicationMetadata$SerializedNames;-><init>()V

    return-void
.end method

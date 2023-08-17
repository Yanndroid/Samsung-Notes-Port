.class public Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord$SerializedNames;
.super Lcom/microsoft/identity/common/java/dto/Credential$SerializedNames;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/dto/PrimaryRefreshTokenRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedNames"
.end annotation


# static fields
.field public static final FAMILY_ID:Ljava/lang/String; = "family_id"

.field public static final PRT_PROTOCOL_VERSION:Ljava/lang/String; = "prt_protocol_version"

.field public static final SESSION_KEY:Ljava/lang/String; = "session_key"

.field public static final SESSION_KEY_ROLLING_DATE:Ljava/lang/String; = "session_key_rolling_date"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/Credential$SerializedNames;-><init>()V

    return-void
.end method

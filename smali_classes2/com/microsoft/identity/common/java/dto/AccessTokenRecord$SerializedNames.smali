.class public Lcom/microsoft/identity/common/java/dto/AccessTokenRecord$SerializedNames;
.super Lcom/microsoft/identity/common/java/dto/Credential$SerializedNames;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/dto/AccessTokenRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedNames"
.end annotation


# static fields
.field public static final ACCESS_TOKEN_TYPE:Ljava/lang/String; = "access_token_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AUTHORITY:Ljava/lang/String; = "authority"

.field public static final EXTENDED_EXPIRES_ON:Ljava/lang/String; = "extended_expires_on"

.field public static final KID:Ljava/lang/String; = "kid"

.field public static final REALM:Ljava/lang/String; = "realm"

.field public static final REFRESH_ON:Ljava/lang/String; = "refresh_on"

.field public static final REQUESTED_CLAIMS:Ljava/lang/String; = "requested_claims"

.field public static final TARGET:Ljava/lang/String; = "target"

.field public static final TOKEN_TYPE:Ljava/lang/String; = "token_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/microsoft/identity/common/java/dto/Credential$SerializedNames;-><init>()V

    return-void
.end method

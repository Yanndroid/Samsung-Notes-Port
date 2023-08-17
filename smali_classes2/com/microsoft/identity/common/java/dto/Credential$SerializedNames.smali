.class public Lcom/microsoft/identity/common/java/dto/Credential$SerializedNames;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/dto/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SerializedNames"
.end annotation


# static fields
.field public static final CACHED_AT:Ljava/lang/String; = "cached_at"

.field public static final CLIENT_ID:Ljava/lang/String; = "client_id"

.field public static final CREDENTIAL_TYPE:Ljava/lang/String; = "credential_type"

.field public static final ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final EXPIRES_ON:Ljava/lang/String; = "expires_on"

.field public static final HOME_ACCOUNT_ID:Ljava/lang/String; = "home_account_id"

.field public static final SECRET:Ljava/lang/String; = "secret"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

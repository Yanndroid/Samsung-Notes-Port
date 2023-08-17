.class public Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest$GrantTypes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/providers/oauth2/TokenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GrantTypes"
.end annotation


# static fields
.field public static final AUTHORIZATION_CODE:Ljava/lang/String; = "authorization_code"

.field public static final CLIENT_CREDENTIALS:Ljava/lang/String; = "client_credentials"

.field public static final DEVICE_CODE:Ljava/lang/String; = "urn:ietf:params:oauth:grant-type:device_code"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final REFRESH_TOKEN:Ljava/lang/String; = "refresh_token"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

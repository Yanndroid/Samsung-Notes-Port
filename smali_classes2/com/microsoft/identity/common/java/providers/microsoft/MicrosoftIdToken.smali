.class public Lcom/microsoft/identity/common/java/providers/microsoft/MicrosoftIdToken;
.super Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;
.source "SourceFile"


# static fields
.field public static final AUDIENCE:Ljava/lang/String; = "aud"

.field public static final ISSUED_AT:Ljava/lang/String; = "iat"

.field public static final ISSUER:Ljava/lang/String; = "iss"

.field public static final NOT_BEFORE:Ljava/lang/String; = "nbf"

.field public static final OBJECT_ID:Ljava/lang/String; = "oid"

.field public static final TENANT_ID:Ljava/lang/String; = "tid"

.field public static final VERSION:Ljava/lang/String; = "ver"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/microsoft/identity/common/java/providers/oauth2/IDToken;-><init>(Ljava/lang/String;)V

    return-void
.end method

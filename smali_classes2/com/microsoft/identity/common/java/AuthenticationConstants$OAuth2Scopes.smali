.class public final Lcom/microsoft/identity/common/java/AuthenticationConstants$OAuth2Scopes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OAuth2Scopes"
.end annotation


# static fields
.field public static final AZA_SCOPE:Ljava/lang/String; = "aza"

.field public static final CLAIMS_UPDATE_RESOURCE:Ljava/lang/String; = "urn:aad:tb:update:prt/.default"

.field public static final EMAIL_SCOPE:Ljava/lang/String; = "email"

.field public static final OFFLINE_ACCESS_SCOPE:Ljava/lang/String; = "offline_access"

.field public static final OPEN_ID_SCOPE:Ljava/lang/String; = "openid"

.field public static final PROFILE_SCOPE:Ljava/lang/String; = "profile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

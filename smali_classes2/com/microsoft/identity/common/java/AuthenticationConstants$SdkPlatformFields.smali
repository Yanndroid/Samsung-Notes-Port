.class public final Lcom/microsoft/identity/common/java/AuthenticationConstants$SdkPlatformFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkPlatformFields"
.end annotation


# static fields
.field public static final PRODUCT:Ljava/lang/String; = "x-client-SKU"

.field public static final PRODUCT_NAME_MSAL:Ljava/lang/String; = "MSAL.Android"

.field public static final PRODUCT_NAME_MSAL_CPP:Ljava/lang/String; = "MSAL.xplat.Android"

.field public static final PRODUCT_NAME_MSAL_XPLAT_LINUX:Ljava/lang/String; = "MSAL.xplat.Linux"

.field public static final VERSION:Ljava/lang/String; = "x-client-Ver"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

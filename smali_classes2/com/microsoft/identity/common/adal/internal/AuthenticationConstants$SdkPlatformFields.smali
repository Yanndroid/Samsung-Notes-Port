.class public final Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants$SdkPlatformFields;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/adal/internal/AuthenticationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SdkPlatformFields"
.end annotation


# static fields
.field public static final PRODUCT:Ljava/lang/String; = "x-client-SKU"

.field public static final VERSION:Ljava/lang/String; = "x-client-Ver"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

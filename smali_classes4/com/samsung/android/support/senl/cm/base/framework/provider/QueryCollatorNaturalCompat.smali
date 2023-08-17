.class public Lcom/samsung/android/support/senl/cm/base/framework/provider/QueryCollatorNaturalCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSqlCollatorString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getSemPlatformVersionInt(I)I

    move-result v0

    const v1, 0x17318

    if-lt v0, v1, :cond_0

    const-string v0, "UNICODE_NATURAL"

    return-object v0

    :cond_0
    const-string v0, "LOCALIZED"

    return-object v0
.end method

.class public Lcom/samsung/android/support/senl/nt/base/framework/support/Logger;
.super Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    const-string v0, "SamsungNotes$"

    sput-object v0, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->APP_TAG:Ljava/lang/String;

    return-void
.end method

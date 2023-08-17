.class public Lcom/samsung/android/support/senl/document/delegator/DocumentLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->logger_d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->logger_e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->logger_e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->logger_getEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->logger_getLogFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->getInstance()Lcom/samsung/android/support/senl/document/delegator/AppDelegator;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/support/senl/document/delegator/AppDelegator;->logger_i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

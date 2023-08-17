.class public Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;)Z
    .locals 0
    .param p1    # Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/securefolder/SecureFolderCompatImpl;->isSupported(Landroid/content/Context;Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;)Z

    move-result p0

    return p0
.end method

.method public static moveFiles(Landroid/content/Context;Ljava/util/List;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/securefolder/SecureFolderCompatImpl;->moveFiles(Landroid/content/Context;Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

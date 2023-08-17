.class Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSemSOsImpl;
.super Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSem100000Impl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipboardManagerCompatSemSOsImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSem100000Impl;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/c;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/context/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSemSOsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowClipboard(Landroid/content/Context;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory$ClipboardManagerCompatSem100000Impl;->canShowClipboardOnSIP(Landroid/content/Context;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public hasPrimaryClip(Landroid/content/Context;I)Z
    .locals 3

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "ClipboardManagerImpl"

    const-string p2, "hasPrimaryClip# description is null"

    invoke-static {p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v1, "text/html"

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0

    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v0
.end method

.method public hasSaveServicePermission(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setClip(Landroid/content/Context;Landroid/content/ClipData$Item;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string v1, "ClipboardManagerImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "setClip# : clipboardManager is null."

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v3, Landroid/content/ClipData;

    invoke-direct {v3, p4, p3, p2}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    array-length p4, p3

    const/4 v4, 0x1

    if-eq p4, v4, :cond_1

    move p4, v4

    :goto_0
    array-length v5, p3

    if-ge p4, v5, :cond_1

    invoke-virtual {v3, p2}, Landroid/content/ClipData;->addItem(Landroid/content/ClipData$Item;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    const-string p3, "setClip# setPrimaryClip is fail. "

    invoke-static {v1, p3, p2}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v4, v2

    :goto_1
    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/sem/context/ClipboardManagerCompatImplFactory;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v4, :cond_2

    sget p2, Lcom/samsung/android/support/senl/cm/base/R$string;->copied_to_clipboard:I

    goto :goto_2

    :cond_2
    sget p2, Lcom/samsung/android/support/senl/cm/base/R$string;->failed_to_copy_to_clipboard:I

    :goto_2
    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return v4
.end method

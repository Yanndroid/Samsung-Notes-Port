.class public Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelAll()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->cancelAll()V

    return-void
.end method

.method public static show(Landroid/content/Context;II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->duration:I

    iput-boolean p3, v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isGravityBottom:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;)V

    return-void
.end method

.method public static showContinuous(Landroid/content/Context;II)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static showContinuous(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static showDirectly(Landroid/content/Context;II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->showDirectly(Landroid/content/Context;II)V

    return-void
.end method

.method public static showEncodingLog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;-><init>()V

    iput-object p1, v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->message:Ljava/lang/String;

    iput p2, v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->duration:I

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;->isEncodeLog:Z

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper;->show(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/base/winset/toast/ToastHelper$ToastParam;)V

    return-void
.end method

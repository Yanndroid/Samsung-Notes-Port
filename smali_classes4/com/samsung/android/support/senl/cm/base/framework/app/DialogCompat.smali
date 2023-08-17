.class public Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;


# instance fields
.field private final mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/DialogCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->sInstance:Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getDefaultAnchorType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;->getDefaultAnchorType()I

    move-result v0

    return v0
.end method

.method public getToolbarAnchorType()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;->getToolbarAnchorType()I

    move-result v0

    return v0
.end method

.method public setAnchorView(Landroid/app/Dialog;II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;->setDialogAnchor(Landroid/app/Dialog;II)V

    return-void
.end method

.method public setAnchorView(Landroid/app/Dialog;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;->setDialogAnchor(Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public setAnchorView(Landroid/app/Dialog;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/app/DialogCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/app/AbsDialogCompatImplFactory$IDialogCompatImpl;->setDialogAnchor(Landroid/app/Dialog;Landroid/view/View;I)V

    return-void
.end method

.class public Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;


# instance fields
.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;
    .locals 4

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    new-instance v2, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory;

    invoke-direct {v2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory;-><init>()V

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/DeviceInfo;->getDeviceType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/HoverCompatImplFactory;->create(I)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;)V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;
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
.method public dismiss(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method public getHoverPopup(Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->getHoverPopup(Landroid/view/View;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setCustomView(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->setCustomView(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public setHoverPopup(Landroid/view/View;ILjava/lang/CharSequence;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {p2, p1, p4}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->setThumb(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {p2, p1, p3}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->setText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->setPopupType(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method public setHoverScrollEnabled(Landroid/widget/AbsListView;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->setHoverScrollEnabled(Landroid/widget/AbsListView;Z)V

    return-void
.end method

.method public setPopupType(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->setPopupType(Landroid/view/View;I)V

    return-void
.end method

.method public setThumb(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->setThumb(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public show(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/HoverCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsHoverCompatImplFactory$IHoverCompatImpl;->show(Landroid/view/View;I)V

    return-void
.end method

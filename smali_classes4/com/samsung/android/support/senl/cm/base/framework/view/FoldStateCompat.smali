.class public Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FolderStateCallback;,
        Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;
    }
.end annotation


# static fields
.field public static final FOLD_B_TYPE:I = 0x2

.field public static final FOLD_HORIZONTAL:I = 0x8

.field public static final FOLD_Q_TYPE:I = 0x1

.field public static final FOLD_STATE_CLOSED:I = 0x1

.field public static final FOLD_STATE_FLIPPED:I = 0x4

.field public static final FOLD_STATE_FULL_OPENED:I = 0x3

.field public static final FOLD_STATE_HALF_OPENED:I = 0x2

.field public static final FOLD_STATE_NONE:I = 0x0

.field public static final FOLD_VERTICAL:I = 0x4

.field public static final NOT_FOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FoldStateCompat"

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;


# instance fields
.field private mFoldDirection:Ljava/lang/Integer;

.field private mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;

.field private mIsFoldable:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mIsFoldable:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mFoldDirection:Ljava/lang/Integer;

    new-instance v0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory;->create(Z)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;
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
.method public getFoldDirection(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->isFoldableDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldType()I

    move-result v0

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    const/16 v4, 0x8

    const/4 v5, 0x4

    if-ne v0, v2, :cond_5

    if-eqz v3, :cond_4

    :cond_3
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v5

    goto :goto_3

    :cond_5
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FoldStateCompat"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public getFoldState(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FolderStateCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;->setFolderStateCallback(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FolderStateCallback;)V

    return-void
.end method

.method public getFoldType()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mFoldDirection:Ljava/lang/Integer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInstance()Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SIP_CONFIG_FOLD_UX_VERSION"

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/feature/FloatingFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mFoldDirection:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mFoldDirection:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFoldableDevice()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mIsFoldable:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->getFoldType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mIsFoldable:Ljava/lang/Boolean;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mIsFoldable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public registerFoldStateListener(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;)V
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;->mProxy:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;->unregister()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat;->mImpl:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;

    invoke-interface {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$IFoldStateCompatImpl;->createProxy(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;->mProxy:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;->register()V

    return-void
.end method

.method public unregisterFoldStateListener(Lcom/samsung/android/support/senl/cm/base/framework/view/FoldStateCompat$FoldStateChangeListener;)V
    .locals 1

    iget-object v0, p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;->mProxy:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;->mProxy:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener$FoldStateProxy;

    :cond_0
    return-void
.end method

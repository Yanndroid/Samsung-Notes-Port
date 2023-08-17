.class public Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static mApplicatoinContext:Landroid/content/Context;

.field private static mInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->mInstance:Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->mApplicatoinContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/cm/base/framework/content/TypedArrayCompat;->mApplicatoinContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method
